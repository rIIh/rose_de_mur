import 'package:dartz/dartz.dart';
import 'package:rose_de_mur/features/core/data/memory/source/memory_source.dart';
import 'package:rose_de_mur/features/core/data/model/memory_plant_model.dart';
import 'package:rose_de_mur/features/core/data/model/plant.dart';
import 'package:rose_de_mur/features/core/domain/entity/failure/failure.dart';
import 'package:rose_de_mur/features/core/domain/entity/plant.dart';
import 'package:rose_de_mur/features/core/domain/repository/plants_repository.dart';

Plant plantModelToEntity(PlantModelContractWithImages model) => Plant.withMeta(
      model.name,
      model.description,
      model.images,
      id: model.identifier,
      created: model.created,
      updated: model.updated,
    );

class PlantsRepositoryInMemoryImpl implements PlantsRepository {
  final MemorySource source;

  PlantsRepositoryInMemoryImpl(this.source);

  @override
  Future<Either<Failure, Plant>> create(Plant plant) async {
    final result = await source.createPlant(PlantModelMemoryConstructorImpl(
      name: plant.name,
      description: plant.description,
      images: plant.images,
    ));

    return Right(plantModelToEntity(result));
  }

  @override
  Future<Either<Failure, void>> delete(String id) async {
    try {
      await source.removePlant(id);
      return Right(null);
    } catch (error) {
      return Left(Failure(error));
    }
  }

  @override
  Future<Either<Failure, Plant>> find(String id) async {
    final result = await source.getPlant(id);

    if (result == null) {
      return Left(Failure(
        StateError('Plant($id) not found'),
      ));
    } else {
      return Right(plantModelToEntity(result));
    }
  }

  @override
  Future<Either<Failure, Iterable<Plant>>> read() async => Right(
        await source.getManyPlants().then(
              (value) => value.map((e) => plantModelToEntity(e)).toList(),
            ),
      );

  @override
  Future<Either<Failure, Plant>> update(Plant plant) async {
    return plant.map(
      (value) => Left(Failure(StateError('$plant should have meta'))),
      withMeta: (plant) async => Right(
        await source
            .updatePlant(
              PlantModelMemoryUpdateImpl(
                plant.id,
                description: plant.description,
                name: plant.name,
                images: plant.images,
              ),
            )
            .then(
              (value) => plantModelToEntity(value),
            ),
      ),
    );
  }

  @override
  Future<Either<Failure, Stream<Iterable<Plant>>>> watch() async => Right(
        source.watchManyPlants().map(
              (event) => event.map((e) => plantModelToEntity(e)).toList(),
            ),
      );

  @override
  Future<Either<Failure, Stream<Plant>>> watchSingle(String id) async => Right(
        source.watchPlant(id).map(plantModelToEntity),
      );
}
