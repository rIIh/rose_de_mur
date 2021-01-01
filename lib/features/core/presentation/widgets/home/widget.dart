import 'package:flushbar/flushbar.dart';
import 'package:flushbar/flushbar_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:intersperse/intersperse.dart';
import 'package:koin_flutter/koin_flutter.dart';
import 'package:rose_de_mur/features/core/domain/entity/plant.dart';
import 'package:rose_de_mur/features/core/presentation/widgets/app_bar/widget.dart';
import 'package:rose_de_mur/features/core/presentation/widgets/custom_button/custom_button.dart';
import 'package:rose_de_mur/features/core/presentation/widgets/home/supplies_bloc/bloc.dart';
import 'package:rose_de_mur/features/core/presentation/widgets/home/supplies_bloc/data.dart';
import 'package:rose_de_mur/features/core/presentation/widgets/scaffold/widget.dart';

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
    _tabController = TabController(length: HomeTab.values.length, vsync: this)
      ..addListener(() => setState(() {
            tab = HomeTab.values[_tabController.index];
          }));
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
    var controller;
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
              body: PortalEntry(
                childAnchor: Alignment.bottomRight,
                portalAnchor: Alignment.bottomRight,
                portal: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    border: Border.all(),
                  ),
                  child: CustomButton(
                    onPressed: () {},
                    padding: const EdgeInsets.all(12.0),
                    child: Icon(CupertinoIcons.add),
                  ),
                ),
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    BlocBuilder<PlantsBloc, PlansGridState>(
                      buildWhen: (previous, current) => current.maybeMap(
                        hasData: (value) => true,
                        orElse: () => false,
                      ),
                      builder: (context, state) => PlantsWidget(
                        plants: state.maybeMap(
                          hasData: (value) => value.plants,
                          orElse: () => [],
                        ),
                      ),
                    ),
                    BlocBuilder<SuppliesBloc, SuppliesState>(
                      buildWhen: (previous, current) => current.maybeMap(
                        hasData: (value) => true,
                        orElse: () => false,
                      ),
                      builder: (context, state) {
                        if (state.maybeMap(
                          orElse: () => false,
                          hasData: (value) => value.supplies.isEmpty,
                        )) {
                          return Center(
                            child: Text('ПУСТЕНЬКО'),
                          );
                        }
                        return Column(
                          children: state.maybeMap(
                            hasData: (value) {
                              return value.supplies.map((e) => Text(e.id)).toList();
                            },
                            orElse: () => [],
                          ),
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
      ),
    );
  }
}

class PlantsWidget extends StatelessWidget {
  final Iterable<Plant> plants;

  const PlantsWidget({Key key, @required this.plants}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (plants.isEmpty) {
      return Center(
        child: Text('ПУСТЕНЬКО'),
      );
    }
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ...intersperse(
            const Divider(),
            plants
                .toList()
                .asMap()
                .entries
                .map(
                  (e) => Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      if (e.value.images.isNotEmpty)
                        Image.memory(
                          e.value.images.first,
                          fit: BoxFit.fitWidth,
                        )
                      else
                        Image.network(
                          'https://source.unsplash.com/random?key=${e.key}',
                          fit: BoxFit.fitWidth,
                        ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 16.0),
                        child: Center(child: Text(e.value.name)),
                      ),
                      const Divider(),
                      IntrinsicHeight(
                        child: Row(
                          children: intersperse(const VerticalDivider(), [
                            Expanded(
                                child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 16.0),
                              child: Text('Поставка 1'),
                            )),
                            Container(
                              width: 52,
                              child: Center(child: Text('\$133')),
                            ),
                            Container(
                              width: 52,
                              child: Center(child: Text('12')),
                            ),
                          ]).toList(),
                        ),
                      ),
                      const Divider(),
                      IntrinsicHeight(
                        child: Row(
                          children: intersperse(const VerticalDivider(), [
                            Expanded(
                                child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 16.0),
                              child: Text('Поставка 1'),
                            )),
                            Container(
                              width: 52,
                              child: Center(child: Text('\$213')),
                            ),
                            Container(
                              width: 52,
                              child: Center(child: Text('5')),
                            ),
                          ]).toList(),
                        ),
                      ),
                    ],
                  ),
                )
                .toList(),
          ),
          const Divider(),
        ],
      ),
    );
  }
}
