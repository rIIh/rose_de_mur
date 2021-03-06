import 'package:moor/moor.dart';
import 'package:rose_de_mur/features/core/data/model/plant.dart';
import 'package:rose_de_mur/features/core/data/moor/source/tables.dart';
import 'package:rxdart/rxdart.dart';

import '../database.dart';

part 'plants_dao.g.dart';

class PlantModelTuple implements PlantModelContractWithImages {
  final PlantModel plant;
  final Iterable<PlantModelImage> imageModels;

  PlantModelTuple(this.plant, this.imageModels);

  @override
  DateTime get created => plant.created;

  @override
  String get description => plant.description;

  @override
  String get identifier => plant.id.toString();

  @override
  List<Uint8List> get images => imageModels.map((e) => e.image).toList();

  @override
  String get name => plant.name;

  @override
  DateTime get updated => plant.updated;
}

class PlantModelTupleCompanion {
  final PlantModelsCompanion plant;
  final List<PlantModelImagesCompanion> images;

  PlantModelTupleCompanion(this.plant, this.images);
}

@UseDao(tables: [PlantModels, PlantModelImages])
class PlantsDao extends DatabaseAccessor<Database> with _$PlantsDaoMixin {
  PlantsDao(Database db) : super(db);

  Stream<List<PlantModelTuple>> watchMany() {
    return select(plantModels)
        .join([
          leftOuterJoin(
            plantModelImages,
            plantModelImages.plant.equalsExp(plantModels.id),
          ),
        ])
        .watch()
        .map((rows) {
          final groupedData = <PlantModel, List<PlantModelImage>>{};
          for (final row in rows) {
            final flower = row.readTable(plantModels);
            final link = row.readTable(plantModelImages);
            final list = groupedData.putIfAbsent(flower, () => []);
            if (link != null) list.add(link);
          }
          return groupedData.entries.map((e) => PlantModelTuple(e.key, e.value)).toList();
        });
  }

  Future<List<PlantModelTuple>> readMany() async {
    final plants = await select(plantModels).join([
      leftOuterJoin(
        plantModelImages,
        plantModelImages.plant.equalsExp(plantModels.id),
      ),
    ]).get();

    final groupedData = <PlantModel, List<PlantModelImage>>{};
    for (final row in plants) {
      final flower = row.readTable(plantModels);
      final link = row.readTable(plantModelImages);
      final list = groupedData.putIfAbsent(flower, () => []);
      if (link != null) list.add(link);
    }
    return groupedData.entries.map((e) => PlantModelTuple(e.key, e.value)).toList();
  }

  Stream<PlantModelTuple> watch(int id) {
    final plantStream = (select(plantModels)..where((tbl) => tbl.id.equals(id))).watchSingle();
    final imagesStream = (select(plantModelImages)..where((tbl) => tbl.plant.equals(id))).watch();
    return plantStream.zipWith(imagesStream, (plant, images) => PlantModelTuple(plant, images));
  }

  Future<PlantModelTuple> read(int id) async {
    final plant = await (select(plantModels)..where((tbl) => tbl.id.equals(id))).getSingle();

    final images = await (select(plantModelImages)..where((tbl) => tbl.plant.equals(plant.id))).get();
    return PlantModelTuple(plant, images);
  }

  Future<PlantModelTuple> createPlant(PlantModelTupleCompanion modelTuple) async {
    final plantId = await into(plantModels).insert(modelTuple.plant);
    for (final image in modelTuple.images) {
      into(plantModelImages).insert(image.copyWith(plant: Value(plantId)));
    }
    return await readMany().then((value) => value.firstWhere((element) => element.plant.id == plantId));
  }

  Future<PlantModelTuple> updatePlant(PlantModelTupleCompanion plant) async {
    await (update(plantModels)..whereSamePrimaryKey(plant.plant)).write(plant.plant);
    await (delete(plantModelImages)..where((tbl) => tbl.plant.equals(plant.plant.id.value))).go();
    for (final image in plant.images) {
      await into(plantModelImages).insert(image.copyWith(plant: plant.plant.id));
    }
    return read(plant.plant.id.value);
  }

  Future<void> deletePlant(PlantModelsCompanion plant) async {
    await delete(plantModels).delete(plant);
    return delete(plantModelImages).where((tbl) => tbl.plant.equals(plant.id.value));
  }
}
