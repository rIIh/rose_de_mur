import 'package:expandable/expandable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_stream_listener/flutter_stream_listener.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intersperse/intersperse.dart';
import 'package:intl/intl.dart';
import 'package:koin_flutter/koin_flutter.dart';
import 'package:rose_de_mur/features/core/domain/entity/plant.dart';
import 'package:rose_de_mur/features/core/domain/entity/supply.dart';
import 'package:rose_de_mur/features/core/presentation/widgets/details/bloc.dart';
import 'package:rose_de_mur/features/core/presentation/widgets/scaffold/widget.dart';
import 'package:rose_de_mur/features/core/presentation/widgets/supply_page/widget.dart';
import 'package:uuid/uuid.dart';

import 'update_supply_bloc/bloc.dart';

const double _pElementHeight = 48;
const double pImageAspectRatio = 1.5;
const _pElementPadding = EdgeInsets.symmetric(horizontal: 12.0, vertical: 16.0);

class DetailsWidget extends StatefulWidget {
  final Plant plant;

  const DetailsWidget({Key key, @required this.plant}) : super(key: key);

  @override
  _DetailsWidgetState createState() => _DetailsWidgetState();
}

class _DetailsWidgetState extends State<DetailsWidget> with ScopeStateMixin {
  DetailsBloc _bloc;

  Plant lastValue;
  TextEditingController nameController;
  FocusNode nameFocus = FocusNode();
  String random;

  @override
  void initState() {
    _bloc = currentScope.get();
    _bloc.add(DetailsEvent.connect(widget.plant));
    nameController = TextEditingController(text: widget.plant.name);
    nameFocus.addListener(() {
      if (nameFocus.hasPrimaryFocus == false &&
          nameController.text.isNotEmpty &&
          lastValue.name != nameController.text) {
        _bloc.add(DetailsEvent.update(lastValue.copyWith(name: nameController.text)));
      }
    });
    random = Uuid().v4();
    super.initState();
  }

  @override
  void dispose() {
    nameFocus.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      /* fab: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        child: Icon(CupertinoIcons.pencil),
      ),*/
      body: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: () => nameFocus.unfocus(),
        child: BlocBuilder<DetailsBloc, DetailsState>(
          cubit: _bloc,
          buildWhen: (previous, current) => current.maybeMap(
            hasData: (value) => true,
            orElse: () => false,
          ),
          builder: (context, state) => state.maybeMap(
            hasData: (value) => SingleChildScrollView(
              child: StreamListener<Plant>(
                stream: value.plant,
                onData: (data) {
                  lastValue = data;
                  return nameController.text = data.name;
                },
                child: StreamBuilder<Plant>(
                  stream: value.plant,
                  builder: (context, plant) => StreamBuilder<Iterable<Supply>>(
                      stream: value.supplies,
                      builder: (context, supplies) => Column(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  AspectRatio(
                                    aspectRatio: pImageAspectRatio,
                                    child: Stack(
                                      children: [
                                        Positioned.fill(
                                          child: plant.data?.images?.isNotEmpty == true
                                              ? Image.memory(
                                                  plant.data.images.first,
                                                  fit: BoxFit.cover,
                                                )
                                              : Container(
                                                  color: Colors.grey,
                                                ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Align(
                                            alignment: Alignment.topRight,
                                            child: ClipOval(
                                              child: Container(
                                                color: Colors.black,
                                                child: IconButton(
                                                  icon: Icon(
                                                    CupertinoIcons.pencil,
                                                    color: Colors.white,
                                                  ),
                                                  onPressed: () async {
                                                    final picker = ImagePicker();
                                                    final image = await showModalBottomSheet<PickedFile>(
                                                      context: context,
                                                      builder: (context) => ListView(
                                                        shrinkWrap: true,
                                                        children: [
                                                          ListTile(
                                                            leading: Icon(CupertinoIcons.camera),
                                                            title: Text('Открыть Камеру'),
                                                            onTap: () async => Navigator.of(context).pop(
                                                              await picker.getImage(source: ImageSource.camera),
                                                            ),
                                                          ),
                                                          ListTile(
                                                            leading: Icon(CupertinoIcons.photo_on_rectangle),
                                                            title: Text('Открыть Галерею'),
                                                            onTap: () async => Navigator.of(context).pop(
                                                              await picker.getImage(source: ImageSource.gallery),
                                                            ),
                                                          ),
                                                          ListTile(
                                                            leading: Icon(CupertinoIcons.trash),
                                                            title: Text('Удалить'),
                                                            onTap: () async {
                                                              _bloc.add(
                                                                DetailsEvent.update(
                                                                  plant.data.copyWith(images: []),
                                                                ),
                                                              );
                                                              Navigator.of(context).pop();
                                                            },
                                                          ),
                                                        ],
                                                      ),
                                                    );
                                                    if (image != null) {
                                                      _bloc.add(
                                                        DetailsEvent.update(
                                                          plant.data.copyWith(
                                                            images: [await image.readAsBytes()],
                                                          ),
                                                        ),
                                                      );
                                                    }
                                                  },
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: _pElementPadding,
                                    child: TextField(
                                      controller: nameController,
                                      decoration: InputDecoration.collapsed(hintText: 'Enter plant name'),
                                      focusNode: nameFocus,
                                    ),
                                  ),
                                  const Divider(),
                                  ...intersperse(
                                    const Divider(),
                                    supplies.data?.map(
                                          (e) => SupplyRow(
                                            key: Key(e.map(
                                              (value) => value.hashCode.toString(),
                                              withMeta: (value) => value.id,
                                            )),
                                            supply: e,
                                          ),
                                        ) ??
                                        [],
                                  ),
                                  const Divider(),
                                  const SizedBox(
                                    height: 96,
                                  ),
                                ],
                              ),
                            ],
                          )),
                ),
              ),
            ),
            orElse: () => Center(
              child: CircularProgressIndicator(),
            ),
          ),
        ),
      ),
    );
  }
}

class SupplyRow extends StatefulWidget {
  final Supply supply;

  const SupplyRow({
    Key key,
    @required this.supply,
  }) : super(key: key);

  @override
  _SupplyRowState createState() => _SupplyRowState();
}

class _SupplyRowState extends State<SupplyRow> with SingleTickerProviderStateMixin, ScopeStateMixin {
  UpdateSupplyBloc _updateSupplyBloc;

  TextEditingController _priceController;
  TextEditingController _quantityController;
  TextEditingController _soldController;
  TextEditingController _trashedController;

  bool collapsed = true;

  void setText(TextEditingController controller, String text) =>
      controller.text != text ? controller.text = text : null;

  @override
  void didUpdateWidget(covariant SupplyRow oldWidget) {
    if (oldWidget.supply.price != widget.supply.price) {
      setText(_priceController, '${widget.supply.price.toStringAsFixed(0)} р.');
    }
    if (oldWidget.supply.quantity != widget.supply.quantity) {
      setText(_quantityController, '${widget.supply.quantity} шт.');
    }
    if (oldWidget.supply.sold != widget.supply.sold) {
      setText(_soldController, '${widget.supply.sold} шт.');
    }
    if (oldWidget.supply.trashed != widget.supply.trashed) {
      setText(_trashedController, '${widget.supply.trashed} шт.');
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  void initState() {
    _updateSupplyBloc = currentScope.get();
    _priceController = TextEditingController(text: widget.supply.price.toStringAsFixed(0) + ' р.');
    _quantityController = TextEditingController(text: widget.supply.quantity.toString() + ' шт.');
    _soldController = TextEditingController(text: widget.supply.sold.toString() + ' шт.');
    _trashedController = TextEditingController(text: widget.supply.trashed.toString() + ' шт.');
    super.initState();
  }

  TextInputFormatter get keepNumberFormatter => TextInputFormatter.withFunction(
        (oldValue, newValue) => newValue.text.contains(RegExp(r'[0-9]'))
            ? newValue
            : newValue.copyWith(
                text: '0${newValue.text}',
                selection: newValue.selection,
              ),
      );

  String strip(String text) => text.replaceAll(RegExp(r'[^0-9]'), '');

  @override
  Widget build(BuildContext context) {
    return AnimatedSize(
      alignment: Alignment.topCenter,
      vsync: this,
      duration: Duration(milliseconds: 200),
      child: Column(
        children: [
          ExpandablePanel(
            theme: ExpandableThemeData(
              hasIcon: false,
              crossFadePoint: 0.0,
            ),
            header: SizedBox(
              height: _pElementHeight,
              child: Row(
                children: intersperse(
                  const VerticalDivider(),
                  [
                    Expanded(
                      child: Row(
                        children: [
                          Padding(
                            padding: _pElementPadding,
                            child: Text(DateFormat(DateFormat.YEAR_MONTH_DAY).format(widget.supply.supplied)),
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Icon(
                              CupertinoIcons.chevron_down,
                              size: 20,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 64,
                      child: Center(
                        child: Text(
                          NumberFormat.currency(
                            name: 'р. ',
                            decimalDigits: 0,
                          ).format(widget.supply.price),
                        ),
                      ),
                    ),
                    Container(
                      width: 64,
                      child: Center(
                        child: Text(
                          'шт. ${widget.supply.quantity - widget.supply.trashed - widget.supply.sold}',
                        ),
                      ),
                    ),
                  ],
                ).toList(),
              ),
            ),
            expanded: Column(
              children: [
                const Divider(),
                SizedBox(
                  height: _pElementHeight,
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: _pElementPadding,
                          child: Row(
                            children: [
                              Text('Price'),
                              const SizedBox(width: 4.0),
                              Expanded(
                                child: TextField(
                                  controller: _priceController,
                                  onChanged: (value) {
                                    final parsed = double.tryParse(strip(value)) ?? 0.0;
                                    _updateSupplyBloc.add(
                                      UpdateSupplyBlocEvent.update(widget.supply.copyWith(price: parsed)),
                                    );
                                  },
                                  textAlign: TextAlign.end,
                                  inputFormatters: [
                                    FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                                    SuffixTextFormatter('р.'),
                                    keepNumberFormatter,
                                  ],
                                  decoration: InputDecoration.collapsed(hintText: '0'),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const VerticalDivider(),
                      Expanded(
                        child: Padding(
                          padding: _pElementPadding,
                          child: Row(
                            children: [
                              Text('Quantity'),
                              const SizedBox(width: 4.0),
                              Expanded(
                                child: TextField(
                                  controller: _quantityController,
                                  keyboardType: TextInputType.number,
                                  onChanged: (value) {
                                    final parsed = int.tryParse(strip(value)) ?? 0;
                                    _updateSupplyBloc.add(
                                      UpdateSupplyBlocEvent.update(widget.supply.copyWith(quantity: parsed)),
                                    );
                                  },
                                  textAlign: TextAlign.end,
                                  inputFormatters: [
                                    FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                                    SuffixTextFormatter('шт.'),
                                    keepNumberFormatter,
                                  ],
                                  decoration: InputDecoration.collapsed(hintText: '0'),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Divider(),
                SizedBox(
                  height: _pElementHeight,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: _pElementPadding,
                      child: Row(
                        children: [
                          Text('Sold'),
                          Expanded(
                            child: TextField(
                              controller: _soldController,
                              keyboardType: TextInputType.number,
                              onChanged: (value) {
                                final parsed = int.tryParse(strip(value)) ?? 0;
                                _updateSupplyBloc.add(
                                  UpdateSupplyBlocEvent.update(widget.supply.copyWith(sold: parsed)),
                                );
                              },
                              textAlign: TextAlign.end,
                              inputFormatters: [
                                FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                                SuffixTextFormatter('шт.'),
                                keepNumberFormatter,
                              ],
                              decoration: InputDecoration.collapsed(hintText: '0'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const Divider(),
                SizedBox(
                  height: _pElementHeight,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: _pElementPadding,
                      child: Row(
                        children: [
                          Text('Trashed'),
                          Expanded(
                            child: TextField(
                              controller: _trashedController,
                              keyboardType: TextInputType.number,
                              onChanged: (value) {
                                final parsed = int.tryParse(strip(value)) ?? 0;
                                _updateSupplyBloc.add(
                                  UpdateSupplyBlocEvent.update(widget.supply.copyWith(trashed: parsed)),
                                );
                              },
                              textAlign: TextAlign.end,
                              inputFormatters: [
                                FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                                SuffixTextFormatter('шт.'),
                                keepNumberFormatter,
                              ],
                              decoration: InputDecoration.collapsed(hintText: '0'),
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
        ],
      ),
    );
  }
}
