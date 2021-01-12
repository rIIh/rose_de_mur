import 'dart:async';
import 'dart:math';
import 'dart:typed_data';

import 'package:extended_text_field/extended_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intersperse/intersperse.dart';
import 'package:intl/intl.dart';
import 'package:koin_flutter/koin_flutter.dart';
import 'package:rose_de_mur/features/core/domain/entity/plant.dart';
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

const pItemHeight = 64.0;

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
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
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
                      Column(
                        children: intersperse(
                          const Divider(),
                          value.supplies.toMap().entries.map(
                                (e) => SupplyItemWidgetV2(
                                  supply: e.value,
                                  key: Key(e.key),
                                  onFlowerChange: (name) => _bloc.add(
                                    SupplyPageEvent.update(
                                      e.key,
                                      e.value.copyWith.plant?.call(name: name) ??
                                          e.value.copyWith(
                                            plant: Plant(name, '', []),
                                          ),
                                    ),
                                  ),
                                  onImageChange: (image) => _bloc.add(
                                    SupplyPageEvent.update(
                                      e.key,
                                      e.value.copyWith.plant?.call(
                                            images: [image],
                                          ) ??
                                          e.value.copyWith(
                                            plant: Plant('', '', [image]),
                                          ),
                                    ),
                                  ),
                                  onPriceChange: (price) => _bloc.add(
                                    SupplyPageEvent.update(e.key, e.value.copyWith(price: price)),
                                  ),
                                  onQuantityChange: (quantity) => _bloc.add(
                                    SupplyPageEvent.update(e.key, e.value.copyWith(quantity: quantity)),
                                  ),
                                  onRemove: () => _bloc.add(SupplyPageEvent.remove(e.key)),
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
          ),
          Divider(
            height: 0,
          ),
          Container(
            width: double.infinity,
            height: 40,
            child: CustomButton(
              onPressed: () async {
                final completer = Completer();
                _bloc.add(SupplyPageEvent.save(completer: completer));
                await completer.future;
                Navigator.of(context).pop();
              },
              child: Center(child: Text('ПОДТВЕРДИТЬ')),
            ),
          ),
          Divider(),
        ],
      ),
    );
  }
}

class SupplyItemWidget extends StatelessWidget {
  final VoidCallback onRemove;
  final void Function(Supply supply) onChange;
  final Supply supply;

  const SupplyItemWidget({Key key, this.onRemove, this.onChange, this.supply}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Slidable(
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
                onTap: onRemove,
              ),
            ),
          ],
        )
      ],
      child: Container(
        color: Theme.of(context).scaffoldBackgroundColor,
        child: Column(
          children: [
            LayoutBuilder(
              builder: (context, constraints) => GestureDetector(
                onTap: () => showModalBottomSheet(
                  context: context,
                  builder: (context) => PlantsSelector(),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: GestureDetector(
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                          ),
                          child: SizedBox(
                            width: constraints.maxWidth / 4,
                            height: constraints.maxWidth / 4,
                            child: supply.plant?.images?.isNotEmpty == true
                                ? Image.memory(
                                    supply.plant.images.first,
                                    fit: BoxFit.cover,
                                  )
                                : Icon(CupertinoIcons.plus),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 12.0,
                    ),
                    Expanded(
                      child: TextField(
                        enabled: false,
                        decoration: InputDecoration.collapsed(hintText: 'Цветок'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Divider(),
            SizedBox(
              height: pItemHeight,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
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
                        padding: const EdgeInsets.symmetric(horizontal: 12.0).copyWith(right: 0),
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
    );
  }
}

class SupplyItemWidgetV2 extends StatefulWidget {
  final VoidCallback onRemove;
  final void Function(String name) onFlowerChange;
  final void Function(double price) onPriceChange;
  final void Function(int quantity) onQuantityChange;
  final void Function(Uint8List image) onImageChange;
  final Supply supply;

  const SupplyItemWidgetV2({
    Key key,
    this.onRemove,
    this.supply,
    this.onPriceChange,
    this.onQuantityChange,
    this.onImageChange,
    this.onFlowerChange,
  }) : super(key: key);

  @override
  _SupplyItemWidgetV2State createState() => _SupplyItemWidgetV2State();
}

class _SupplyItemWidgetV2State extends State<SupplyItemWidgetV2> {
  TextEditingController flower;
  TextEditingController price;
  TextEditingController quantity;

  @override
  void initState() {
    flower = TextEditingController();
    price = TextEditingController.fromValue(TextEditingValue(text: ' руб.'));
    quantity = TextEditingController.fromValue(TextEditingValue(text: ' шт.'));
    flower.addListener(() {
      widget.onFlowerChange?.call(flower.text);
    });
    price.addListener(() {
      final value = price.text.replaceAll(RegExp(r'[^0-9]'), '');
      widget.onPriceChange?.call(double.parse(value.isEmpty ? '0' : value));
    });
    quantity.addListener(() {
      final value = quantity.text.replaceAll(RegExp(r'[^0-9]'), '');
      widget.onQuantityChange?.call(int.parse(value.isEmpty ? '0' : value));
    });
    super.initState();
  }

  void setImage() async {
    final actions = ['Camera', 'Gallery'];

    switch (Theme.of(context).platform) {
      case TargetPlatform.iOS:
      case TargetPlatform.macOS:
        {
          break;
        }
      default:
        {
          showModalBottomSheet(
            context: context,
            builder: (context) => Container(),
          );
          break;
        }
    }
  }

  @override
  void dispose() {
    flower.dispose();
    price.dispose();
    quantity.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Slidable(
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
                onTap: widget.onRemove,
              ),
            ),
          ],
        )
      ],
      child: Container(
        color: Theme.of(context).scaffoldBackgroundColor,
        child: LayoutBuilder(
          builder: (context, constraints) {
            final height = constraints.maxWidth / 2.5;
            return IntrinsicHeight(
              child: Row(
                children: [
                  SizedBox(
                    width: height,
                    height: height,
                    child: GestureDetector(
                      onTap: () async {
                        final picker = ImagePicker();
                        final image = await showModalBottomSheet<PickedFile>(
                          context: context,
                          builder: (context) => ListView(
                            shrinkWrap: true,
                            children: [
                              ListTile(
                                leading: Icon(CupertinoIcons.camera),
                                title: Text('Open Camera'),
                                onTap: () async => Navigator.of(context).pop(
                                  await picker.getImage(source: ImageSource.camera),
                                ),
                              ),
                              ListTile(
                                leading: Icon(CupertinoIcons.photo_on_rectangle),
                                title: Text('Open Gallery'),
                                onTap: () async => Navigator.of(context).pop(
                                  await picker.getImage(source: ImageSource.gallery),
                                ),
                              ),
                            ],
                          ),
                        );
                        if (image != null) {
                          widget.onImageChange?.call(await image.readAsBytes());
                        }
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            shape: BoxShape.circle,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(1.01),
                            child: SizedBox(
                              child: widget.supply.plant?.images?.isNotEmpty == true
                                  ? ClipOval(
                                      child: Image.memory(
                                        widget.supply.plant.images.first,
                                        fit: BoxFit.cover,
                                      ),
                                    )
                                  : Icon(CupertinoIcons.plus),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  VerticalDivider(),
                  Expanded(
                    child: ConstrainedBox(
                      constraints: BoxConstraints(maxHeight: height),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: intersperse(
                          const Divider(),
                          [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Center(
                                  child: TextField(
                                    controller: flower,
                                    decoration: InputDecoration.collapsed(hintText: 'ЦВЕТОК'),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Center(
                                  child: ExtendedTextField(
                                    keyboardType: TextInputType.number,
                                    controller: price,
                                    decoration: InputDecoration.collapsed(hintText: ''),
                                    inputFormatters: [
                                      SuffixTextFormatter('руб.'),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Center(
                                  child: TextField(
                                    keyboardType: TextInputType.number,
                                    controller: quantity,
                                    decoration: InputDecoration.collapsed(hintText: 'шт.'),
                                    inputFormatters: [
                                      SuffixTextFormatter('шт.'),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ).toList(),
                      ),
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

class SuffixTextFormatter extends TextInputFormatter {
  final String suffix;

  SuffixTextFormatter(this.suffix);

  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    final nextText = '${newValue.text.replaceAll(RegExp('[^0-9]'), '')} $suffix';
    return newValue.copyWith(
      text: nextText,
      selection: newValue.selection.copyWith(
        extentOffset: min(
          nextText.length - suffix.length - 1,
          newValue.selection.extentOffset,
        ),
        baseOffset: min(
          nextText.length - suffix.length - 1,
          newValue.selection.baseOffset,
        ),
      ),
    );
  }
}

class PlantsSelector extends StatefulWidget {
  final String plant;

  const PlantsSelector({Key key, this.plant}) : super(key: key);

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
        hasData: (value) => DecoratedBox(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
          ),
          child: StreamBuilder<Iterable<Plant>>(
            stream: value.plants,
            initialData: [],
            builder: (context, snapshot) => ListView(
              shrinkWrap: true,
              children: [
                ListTile(
                  leading: Icon(CupertinoIcons.plus),
                  title: Text('СОЗДАТЬ'),
                ),
                Divider(),
                ...intersperse(
                  const Divider(),
                  snapshot.data.toList().asMap().entries.map(
                        (e) => LayoutBuilder(
                          builder: (context, constraints) => Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: GestureDetector(
                                  child: DecoratedBox(
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black),
                                    ),
                                    child: SizedBox(
                                      width: constraints.maxWidth / 4,
                                      height: constraints.maxWidth / 4,
                                      child: Icon(CupertinoIcons.plus),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 12.0,
                              ),
                              Expanded(
                                child: TextField(
                                  enabled: false,
                                  decoration: InputDecoration.collapsed(hintText: 'Цветок'),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
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
