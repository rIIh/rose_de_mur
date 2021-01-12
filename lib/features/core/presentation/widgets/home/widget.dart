import 'package:expandable/expandable.dart';
import 'package:flushbar/flushbar.dart';
import 'package:flushbar/flushbar_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intersperse/intersperse.dart';
import 'package:intl/intl.dart';
import 'package:koin_flutter/koin_flutter.dart';
import 'package:rose_de_mur/features/core/domain/entity/plant.dart';
import 'package:rose_de_mur/features/core/domain/entity/supply.dart';
import 'package:rose_de_mur/features/core/presentation/router/router.dart';
import 'package:rose_de_mur/features/core/presentation/widgets/app_bar/widget.dart';
import 'package:rose_de_mur/features/core/presentation/widgets/custom_button/custom_button.dart';
import 'package:rose_de_mur/features/core/presentation/widgets/details/widget.dart';
import 'package:rose_de_mur/features/core/presentation/widgets/home/supplies_bloc/bloc.dart';
import 'package:rose_de_mur/features/core/presentation/widgets/home/supplies_bloc/data.dart';
import 'package:rose_de_mur/features/core/presentation/widgets/scaffold/widget.dart';
import 'package:rose_de_mur/features/core/presentation/widgets/supply_page/widget.dart';

import 'plants_bloc/bloc.dart';
import 'plants_bloc/data.dart';

class HomeGridWidget extends StatefulWidget {
  @override
  _HomeGridWidgetState createState() => _HomeGridWidgetState();
}

enum HomeTab {
  all,
  supplies,
  order,
}

class _HomeGridWidgetState extends State<HomeGridWidget> with ScopeStateMixin, SingleTickerProviderStateMixin {
  PlantsBloc _plantsBloc;
  SuppliesBloc _suppliesBloc;

  TabController _tabController;
  TextEditingController _plantsSearchController;
  TextEditingController _suppliesSearchController;

  HomeTab tab;

  @override
  void initState() {
    _plantsBloc = currentScope.get();
    _suppliesBloc = currentScope.get();
    _plantsSearchController = TextEditingController();
    _suppliesSearchController = TextEditingController();

    _plantsSearchController.addListener(() => setState(() {}));
    _suppliesSearchController.addListener(() => setState(() {}));

    _tabController = TabController(length: HomeTab.values.length, vsync: this)
      ..addListener(() => setState(() {
            tab = HomeTab.values[_tabController.index];
          }));
    tab = HomeTab.values[_tabController.index];
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    _plantsSearchController.dispose();
    _suppliesSearchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController controller;
    if (tab == HomeTab.all) {
      controller = _plantsSearchController;
    } else if (tab == HomeTab.supplies) {
      controller = _suppliesSearchController;
    } else {
      controller = null;
    }

    return BlocProvider.value(
      value: _plantsBloc,
      child: BlocProvider.value(
        value: _suppliesBloc,
        child: Builder(
          builder: (context) => BlocListener<PlantsBloc, PlansGridState>(
            listener: (context, state) => state.maybeMap<void>(
              failed: (value) => showFlushbar(
                  context: context,
                  flushbar: Flushbar(
                    message: value.failure.toString(),
                  )),
              orElse: () {},
            ),
            child: CustomScaffold(
              appBar: CustomAppBar(
                title: Text('My Book'.toUpperCase()),
                extraRows: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0, right: 12.0),
                        child: Icon(CupertinoIcons.search),
                      ),
                      Expanded(
                        child: TextField(
                          controller: controller,
                          decoration: InputDecoration.collapsed(hintText: 'Search'),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: CustomButton(
                          onPressed: () => _tabController.animateTo(0),
                          active: tab == HomeTab.all,
                          child: Center(child: Text('ALL')),
                        ),
                      ),
                      VerticalDivider(
                        width: pBorderThickness,
                        thickness: pBorderThickness,
                        color: Colors.black,
                      ),
                      Expanded(
                        child: CustomButton(
                          onPressed: () => _tabController.animateTo(1),
                          active: tab == HomeTab.supplies,
                          child: Center(child: Text('SUPPLIES')),
                        ),
                      ),
                      VerticalDivider(
                        width: pBorderThickness,
                        thickness: pBorderThickness,
                        color: Colors.black,
                      ),
                      Expanded(
                        child: CustomButton(
                          onPressed: () => _tabController.animateTo(2),
                          active: tab == HomeTab.order,
                          child: Center(child: Text('ORDER')),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              fab: FloatingActionButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(Routes.supply);
                },
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
                child: Icon(CupertinoIcons.add),
              ),
              body: TabBarView(
                controller: _tabController,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  PlantsWidget(search: controller?.text),
                  BlocBuilder<SuppliesBloc, SuppliesState>(
                    buildWhen: (previous, current) => current.maybeMap(
                      hasData: (value) => true,
                      orElse: () => false,
                    ),
                    builder: (context, state) {
                      return state.maybeMap(
                        hasData: (value) => StreamBuilder<Map<String, Iterable<Supply>>>(
                          stream: value.supplies.map(
                            (event) => groupBy<Supply, String>(
                              event,
                              (supply) => DateFormat('D MMM yyyy').format(supply.supplied),
                            ),
                          ),
                          initialData: {},
                          builder: (context, snapshot) => snapshot.data.isEmpty
                              ? Center(
                                  child: Text('ПУСТЕНЬКО'),
                                )
                              : SingleChildScrollView(
                                  child: Column(
                                    children: [
                                      ...intersperse(
                                        const Divider(),
                                        snapshot.data.entries
                                            .where((element) => element.value.any((element) => element.plant.name
                                                .toLowerCase()
                                                .contains(controller.text.toLowerCase())))
                                            .map(
                                              (e) => ExpandablePanel(
                                                theme: ExpandableThemeData(
                                                  hasIcon: false,
                                                  crossFadePoint: 0,
                                                ),
                                                header: Slidable(
                                                  actionPane: SlidableScrollActionPane(),
                                                  secondaryActions: [
                                                    Row(
                                                      children: [
                                                        VerticalDivider(),
                                                        Expanded(
                                                          child: IconSlideAction(
                                                            caption: 'Destroy',
                                                            color: Colors.white,
                                                            icon: CupertinoIcons.trash,
                                                            onTap: () => context.read<SuppliesBloc>().add(
                                                                  SuppliesEvent.removeMany(e.value),
                                                                ),
                                                          ),
                                                        ),
                                                      ],
                                                    )
                                                  ],
                                                  child: SizedBox(
                                                    height: pItemHeight,
                                                    child: Padding(
                                                      padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 16.0),
                                                      child: Row(
                                                        crossAxisAlignment: CrossAxisAlignment.center,
                                                        children: [
                                                          Text(
                                                            e.key,
                                                          ),
                                                          Spacer(),
                                                          Icon(CupertinoIcons.chevron_down),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                expanded: Column(
                                                  children: [
                                                    const Divider(),
                                                    ...intersperse(
                                                      const Divider(),
                                                      e.value
                                                          .where((element) => element.plant.name
                                                              .toLowerCase()
                                                              .contains(controller.text.toLowerCase()))
                                                          .map(
                                                            (e) => IntrinsicHeight(
                                                              child: Row(
                                                                children: intersperse(
                                                                  const VerticalDivider(),
                                                                  [
                                                                    Expanded(
                                                                      child: Padding(
                                                                        padding: EdgeInsets.symmetric(
                                                                            horizontal: 12.0, vertical: 16.0),
                                                                        child: Text(e.plant.name),
                                                                      ),
                                                                    ),
                                                                    Container(
                                                                      width: 52,
                                                                      child: Center(
                                                                          child:
                                                                              Text('${e.price.toStringAsFixed(0)} р.')),
                                                                    ),
                                                                    Container(
                                                                      width: 52,
                                                                      child: Center(
                                                                        child: Text(
                                                                            '${e.quantity - e.sold - e.trashed} ш.'),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ).toList(),
                                                              ),
                                                            ),
                                                          ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                      ),
                                      const Divider(),
                                    ],
                                  ),
                                ),
                        ),
                        orElse: () => Container(),
                      );
                    },
                  ),
                  Center(
                    child: Text('ПУСТЕНЬКО'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class PlantsWidget extends StatelessWidget {
  final String search;

  const PlantsWidget({
    Key key,
    this.search,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SuppliesBloc, SuppliesState>(
      builder: (context, state) => state.maybeMap(
        hasData: (value) => StreamBuilder<Iterable<Supply>>(
          stream: value.supplies,
          initialData: [],
          builder: (context, snapshot) => snapshot.data?.isNotEmpty != true
              ? Center(
                  child: Text('ПУСТЕНЬКО'),
                )
              : SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      ...intersperse(
                        const Divider(),
                        groupBy<Supply, Plant>(
                                snapshot.data.where(
                                  (element) => element.plant.name.toLowerCase().contains(search.toLowerCase()),
                                ),
                                (s) => s.plant).entries.map(
                              (e) => GestureDetector(
                                onTap: () => Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => DetailsWidget(plant: e.key),
                                  ),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.stretch,
                                  children: [
                                    AspectRatio(
                                      aspectRatio: pImageAspectRatio,
                                      child: e.key.images.isNotEmpty
                                          ? Image.memory(
                                              e.key.images.first,
                                              fit: BoxFit.fitWidth,
                                            )
                                          : Container(
                                              color: Colors.grey,
                                              child: Center(
                                                child: Icon(CupertinoIcons.staroflife),
                                              ),
                                            ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 16.0),
                                      child: Text(e.key.name),
                                    ),
                                    const Divider(),
                                    Column(
                                      children: e.value
                                          .map(
                                            (e) => Slidable(
                                              actionPane: SlidableScrollActionPane(),
                                              secondaryActions: [
                                                Row(
                                                  children: [
                                                    VerticalDivider(),
                                                    Expanded(
                                                      child: IconSlideAction(
                                                        caption: 'Destroy',
                                                        color: Colors.red,
                                                        icon: CupertinoIcons.trash,
                                                        onTap: () => context.read<SuppliesBloc>().add(
                                                              SuppliesEvent.remove(e),
                                                            ),
                                                      ),
                                                    ),
                                                  ],
                                                )
                                              ],
                                              child: IntrinsicHeight(
                                                child: Row(
                                                  children: intersperse(
                                                    const VerticalDivider(),
                                                    [
                                                      Expanded(
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsets.symmetric(horizontal: 12.0, vertical: 16.0),
                                                          child: Text(e.supplied.toString()),
                                                        ),
                                                      ),
                                                      Container(
                                                        width: 52,
                                                        child: Center(child: Text('${e.price.toStringAsFixed(0)} р.')),
                                                      ),
                                                      Container(
                                                        width: 52,
                                                        child: Center(
                                                            child: Text('${e.quantity - e.sold - e.trashed} ш.')),
                                                      ),
                                                    ],
                                                  ).toList(),
                                                ),
                                              ),
                                            ),
                                          )
                                          .toList(),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                      ),
                      const Divider(),
                      const SizedBox(
                        height: 96,
                      ),
                    ],
                  ),
                ),
        ),
        orElse: () => Container(),
      ),
    );
  }
}
