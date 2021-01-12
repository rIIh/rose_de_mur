import 'package:dartz/dartz.dart';
import 'package:moor/moor.dart';
import 'package:rose_de_mur/features/core/data/memory/repository/plants_repository.dart';
import 'package:rose_de_mur/features/core/data/moor/source/dao/plants_dao.dart';
import 'package:rose_de_mur/features/core/data/moor/source/database.dart';
import 'package:rose_de_mur/features/core/domain/entity/failure/failure.dart';
import 'package:rose_de_mur/features/core/domain/entity/plant.dart';
import 'package:rose_de_mur/features/core/domain/repository/plants_repository.dart';

Plant plantFromModel(PlantModelTuple model) => Plant.withMeta(
      model.plant.name,
      model.plant.description,
      model.imageModels.map((e) => e.image).toList(),
      id: model.plant.id.toString(),
      updated: model.plant.updated,
      created: model.plant.created,
    );

PlantModelTupleCompanion plantToModel(Plant plant) => PlantModelTupleCompanion(
      PlantModelsCompanion(
        id: Value(
          plant.map(
            (value) => throw StateError('$plant has not identifier'),
            withMeta: (value) => int.parse(value.id),
          ),
        ),
        name: Value(plant.name),
        description: Value(plant.description),
      ),
      plant.images
          .map(
            (e) => PlantModelImagesCompanion(
              image: Value(e),
              plant: plant.map(
                (value) => Value.absent(),
                withMeta: (value) => Value(int.parse(value.id)),
              ),
            ),
          )
          .toList(),
    );

class PlantsRepositoryMoorImpl implements PlantsRepository {
  final PlantsDao _dao;

  PlantsRepositoryMoorImpl(this._dao);

  @override
  Future<Either<Failure, Plant>> create(Plant plant) async {
    final result = await _dao.createPlant(plantToModel(plant));

    return Right(plantFromModel(result));
  }

  @override
  Future<Either<Failure, void>> delete(String id) => _dao.deletePlant(PlantModelsCompanion(id: Value(int.parse(id))));

  @override
  Future<Either<Failure, Plant>> find(String id) => _dao.read(int.parse(id)).then(
        (value) => Right(plantFromModel(value)),
      );

  @override
  Future<Either<Failure, Iterable<Plant>>> read() => _dao.readMany().then(
        (value) => Right(value.map((e) => plantFromModel(e))),
      );

  @override
  Future<Either<Failure, Plant>> update(Plant plant) async {
    final model = await _dao.updatePlant(plantToModel(plant));
    return Right(plantModelToEntity(model));
  }

  @override
  Future<Either<Failure, Stream<Iterable<Plant>>>> watch() async => Right(
        _dao.watchMany().map((event) => event.map((e) => plantFromModel(e))),
      );

  @override
  Future<Either<Failure, Stream<Plant>>> watchSingle(String id) async {
    return Right(_dao.watch(int.parse(id)).map((event) => plantFromModel(event)));
  }
}
