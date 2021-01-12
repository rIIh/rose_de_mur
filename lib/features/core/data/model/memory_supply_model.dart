import 'package:rose_de_mur/features/core/data/model/supply_model.dart';

class SupplyModelMemoryImpl implements SupplyModelContract {
  final String identifier;
  final String plantIdentifier;
  final DateTime supplied;
  final int quantity;
  final int sold;
  final int trashed;
  final double price;
  final DateTime created;
  final DateTime updated;

  SupplyModelMemoryImpl(
    this.identifier,
    this.plantIdentifier,
    this.supplied,
    this.quantity,
    this.price,
    this.created,
    this.updated,
    this.sold,
    this.trashed,
  );
}

class SupplyModelMemoryConstructorImpl implements SupplyModelContract {
  final String plantIdentifier;
  final DateTime supplied;
  final int quantity;
  final double price;

  SupplyModelMemoryConstructorImpl({
    this.plantIdentifier,
    this.supplied,
    this.quantity,
    this.price,
  });

  @override
  DateTime get created => null;

  @override
  String get identifier => null;

  @override
  DateTime get updated => null;

  @override
  int get sold => 0;

  @override
  int get trashed => 0;
}

class SupplyModelMemoryUpdateImpl implements SupplyModelContract {
  final String identifier;
  final String plantIdentifier;
  final DateTime supplied;
  final int quantity;
  final int sold;
  final int trashed;
  final double price;

  SupplyModelMemoryUpdateImpl(
    this.identifier, {
    this.plantIdentifier,
    this.supplied,
    this.quantity,
    this.sold,
    this.trashed,
    this.price,
  });

  @override
  DateTime get created => null;

  @override
  DateTime get updated => null;
}
