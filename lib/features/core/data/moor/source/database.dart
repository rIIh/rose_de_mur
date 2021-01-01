import 'dart:io';

import 'package:moor/ffi.dart';
import 'package:moor/moor.dart';
import 'package:path/path.dart' as Path;
import 'package:path_provider/path_provider.dart';

import 'dao/plants_dao.dart';
import 'tables.dart';

part 'database.g.dart';

LazyDatabase _openConnection({String database}) {
  // the LazyDatabase util lets us find the right location for the file async.
  return LazyDatabase(() async {
    // put the database file, called db.sqlite here, into the documents folder
    // for your app.
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(Path.join(dbFolder.path, database ?? 'db.sqlite'));
    return VmDatabase(file, logStatements: true);
  });
}

@UseMoor(tables: [PlantModels, PlantModelImages, SupplyModels], daos: [PlantsDao])
class Database extends _$Database {
  Database({String database}) : super(_openConnection(database: database));

  @override
  int get schemaVersion => 1;
}
