import 'package:moor/moor.dart';

class PlantModels extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text().withLength(min: 1)();
  TextColumn get description => text().nullable()();

  DateTimeColumn get created => dateTime().clientDefault(() => DateTime.now())();
  DateTimeColumn get updated => dateTime().clientDefault(() => DateTime.now())();
}

class PlantModelImages extends Table {
  IntColumn get plant => integer().customConstraint('REFERENCES plants(id)')();
  BlobColumn get image => blob()();
}

class SupplyModels extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get plant => integer().customConstraint('REFERENCES plants(id)')();
  DateTimeColumn get supplied => dateTime()();
  IntColumn get quantity => integer()();
  IntColumn get sold => integer().withDefault(Constant(0))();
  IntColumn get trashed => integer().withDefault(Constant(0))();
  RealColumn get price => real()();

  DateTimeColumn get created => dateTime().clientDefault(() => DateTime.now())();
  DateTimeColumn get updated => dateTime().clientDefault(() => DateTime.now())();
}
