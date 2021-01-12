import 'package:rose_de_mur/features/core/data/moor/source/database.dart';

abstract class SupplyModelContract {
  String get identifier;

  String get plantIdentifier;

  DateTime get supplied;

  int get quantity;
  int get sold;
  int get trashed;

  double get price;

  DateTime get created;

  DateTime get updated;
}

class SupplyModelMoorImpl extends SupplyModel implements SupplyModelContract {
  @override
  String get identifier => identifier.toString();

  @override
  String get plantIdentifier => plantIdentifier.toString();
}
