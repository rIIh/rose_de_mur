import 'package:dartz/dartz.dart';
import 'package:moor/moor.dart';
import 'package:rose_de_mur/features/core/data/moor/source/dao/plants_dao.dart';
import 'package:rxdart/rxdart.dart';

import '../database.dart';
import '../tables.dart';

part 'supplies_dao.g.dart';

class SupplyModelTuple {
  final PlantModelTuple plantTuple;
  final SupplyModel supply;

  SupplyModelTuple(this.plantTuple, this.supply);
}

class SupplyModelTupleCompanion {
  final PlantModelTupleCompanion plantTuple;
  final SupplyModelsCompanion supply;

  SupplyModelTupleCompanion(this.plantTuple, this.supply);
}

@UseDao(tables: [SupplyModels])
class SuppliesDao extends DatabaseAccessor<Database> with _$SuppliesDaoMixin {
  final PlantsDao _plantsDao;

  SuppliesDao(Database db)
      : _plantsDao = PlantsDao(db),
        super(db);

  Future<SupplyModelTuple> create(SupplyModelsCompanion model) async {
    final id = await into(supplyModels).insert(model);
    return read(id);
  }

  Future<SupplyModelTuple> read(int id) async {
    final supply = await (select(supplyModels)..where((tbl) => tbl.id.equals(id))).getSingle();
    final plant = await _plantsDao.read(supply.plant);
    return SupplyModelTuple(plant, supply);
  }

  Future<Iterable<SupplyModelTuple>> readMany() async {
    final supplies = await select(supplyModels).get();
    final map = <Tuple2<SupplyModel, PlantModelTuple>>[];
    for (final supply in supplies) {
      map.add(Tuple2(supply, await _plantsDao.read(supply.plant)));
    }

    return map.map((e) => SupplyModelTuple(e.value2, e.value1));
  }

  Stream<Iterable<SupplyModelTuple>> watchMany() {
    final suppliesStream = select(supplyModels).watch();
    return suppliesStream.switchMap((supplies) async* {
      final map = <Tuple2<SupplyModel, PlantModelTuple>>[];
      for (final supply in supplies) {
        map.add(Tuple2(supply, await _plantsDao.read(supply.plant)));
      }
      yield map.map((e) => SupplyModelTuple(e.value2, e.value1));
    });
  }

  Future deleteSupply(int id) async => delete(supplyModels).where((tbl) => tbl.id.equals(id));
}
