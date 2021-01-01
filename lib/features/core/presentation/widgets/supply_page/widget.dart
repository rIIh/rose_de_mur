import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:intersperse/intersperse.dart';
import 'package:intl/intl.dart';
import 'package:koin_flutter/koin_flutter.dart';
import 'package:rose_de_mur/features/core/domain/entity/supply.dart';
import 'package:rose_de_mur/features/core/presentation/utilities/date_picker.dart';
import 'package:rose_de_mur/features/core/presentation/widgets/custom_button/custom_button.dart';
import 'package:rose_de_mur/features/core/presentation/widgets/home/plants_bloc/bloc.dart';
import 'package:rose_de_mur/features/core/presentation/widgets/home/plants_bloc/data.dart';
import 'package:rose_de_mur/features/core/presentation/widgets/scaffold/widget.dart';
import 'package:rose_de_mur/features/core/presentation/widgets/supply_page/bloc/bloc.dart';
import 'package:rose_de_mur/features/core/presentation/widgets/supply_page/bloc/data.dart';

class SupplyPageWidget extends StatefulWidget {
  @override
  _SupplyPageWidgetState createState() => _SupplyPageWidgetState();
}

class _SupplyPageWidgetState extends State<SupplyPageWidget> with ScopeStateMixin {
  SupplyPageBloc _bloc;

  @override
  void initState() {
    _bloc = currentScope.get();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: SingleChildScrollView(
        child: BlocBuilder<SupplyPageBloc, SupplyPageState>(
          cubit: _bloc,
          builder: (context, state) => state.maybeMap(
            data: (value) => Column(
              children: [
                ListTile(
                  title: Text(DateFormat.yMMMMd().format(value.date)),
                  onTap: () async {
                    final date = await showPlatformDatePicker(
                      context: context,
                      initial: DateTime.now(),
                    );
                    if (date != null) {
                      _bloc.add(SupplyPageEvent.setDate(date));
                    }
                  },
                ),
                Divider(),
                const SizedBox(
                  height: 1.0,
                ),
                Divider(),
                Column(
                  children: intersperse(
                    Column(
                      children: [
                        const Divider(),
                        const SizedBox(
                          height: 1,
                        ),
                        const Divider()
                      ],
                    ),
                    value.supplies.toMap().entries.map(
                          (e) => Slidable(
                            key: Key(e.key),
                            actionPane: SlidableBehindActionPane(),
                            secondaryActions: [
                              IconSlideAction(
                                caption: 'Destroy',
                                color: Colors.red,
                                icon: Icons.delete_forever,
                                onTap: () => _bloc.add(SupplyPageEvent.remove(e.key)),
                              )
                            ],
                            child: Container(
                              color: Theme.of(context).scaffoldBackgroundColor,
                              child: Column(
                                children: [
                                  ListTile(
                                    onTap: () async {
                                      final plant = await showModalBottomSheet(
                                        context: context,
                                        builder: (context) => PlantsSelector(),
                                      );
                                      _bloc.add(
                                        SupplyPageEvent.update(
                                          e.key,
                                          Supply.withMeta(
                                            plant,
                                            e.value.supplied,
                                            e.value.quantity,
                                            e.value.price,
                                            id: e.value.id,
                                            updated: e.value.updated,
                                            created: e.value.created,
                                          ),
                                        ),
                                      );
                                    },
                                    leading: SizedBox(
                                      width: 32,
                                      height: 32,
                                      child: e.value.plant?.images?.isNotEmpty == true
                                          ? Image.memory(
                                              e.value.plant.images.first,
                                              fit: BoxFit.cover,
                                            )
                                          : Image.network(
                                              'https://source.unsplash.com/random?key=${e.key}',
                                              fit: BoxFit.cover,
                                            ),
                                    ),
                                    title: Text(e.value.plant?.name ?? 'choose plant'),
                                  ),
                                  Divider(),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                                    child: IntrinsicHeight(
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: Padding(
                                              padding: const EdgeInsets.symmetric(vertical: 12.0),
                                              child: Row(
                                                children: [
                                                  Text('Quantity'),
                                                  const SizedBox(
                                                    width: 8.0,
                                                  ),
                                                  Expanded(
                                                    child: TextField(
                                                      keyboardType: TextInputType.number,
                                                      decoration: InputDecoration.collapsed(hintText: '0'),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          VerticalDivider(),
                                          Expanded(
                                            child: Padding(
                                              padding: const EdgeInsets.all(12.0).copyWith(right: 0),
                                              child: Row(
                                                children: [
                                                  Text('Price'),
                                                  const SizedBox(
                                                    width: 8.0,
                                                  ),
                                                  Expanded(
                                                    child: TextField(
                                                      keyboardType: TextInputType.number,
                                                      decoration: InputDecoration.collapsed(hintText: '150'),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                  ).toList(),
                ),
                Divider(),
                CustomButton(
                  onPressed: () => _bloc.add(SupplyPageEvent.add()),
                  child: Row(
                    children: [
                      Icon(CupertinoIcons.plus),
                      const SizedBox(
                        width: 8.0,
                      ),
                      Text(
                        'Add plant',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(),
              ],
            ),
            orElse: () => Container(),
          ),
        ),
      ),
    );
  }
}

class PlantsSelector extends StatefulWidget {
  @override
  _PlantsSelectorState createState() => _PlantsSelectorState();
}

class _PlantsSelectorState extends State<PlantsSelector> with ScopeStateMixin {
  PlantsBloc _bloc;

  @override
  void initState() {
    _bloc = currentScope.get();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PlantsBloc, PlansGridState>(
      cubit: _bloc,
      builder: (context, state) => state.maybeMap(
        hasData: (value) => ListView(
          children: value.plants
              .toList()
              .asMap()
              .entries
              .map(
                (e) => ListTile(
                  onTap: () => Navigator.of(context).pop(e.value),
                  leading: SizedBox(
                    width: 32,
                    height: 32,
                    child: e.value.images.isNotEmpty == true
                        ? Image.memory(
                            e.value.images.first,
                            fit: BoxFit.cover,
                          )
                        : Image.network(
                            'https://source.unsplash.com/random?key=${e.key}',
                            fit: BoxFit.cover,
                          ),
                  ),
                  title: Text(e.value.name),
                ),
              )
              .toList(),
        ),
        orElse: () => Container(),
      ),
    );
  }
}
