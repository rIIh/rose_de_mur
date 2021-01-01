import 'package:built_collection/built_collection.dart';
import 'package:dartz/dartz.dart';
import 'package:rose_de_mur/features/core/domain/entity/failure/failure.dart';
import 'package:rose_de_mur/features/core/domain/entity/plant.dart';
import 'package:rose_de_mur/features/core/domain/repository/plants_repository.dart';
import 'package:rxdart/rxdart.dart';
import 'package:uuid/uuid.dart';

class PlantsRepositoryInMemoryImpl implements PlantsRepository {
  BehaviorSubject<BuiltList<Plant>> _plants = BehaviorSubject.seeded(BuiltList([
    Plant.withMeta('Test_A', 'Description', [], updated: DateTime.now(), created: DateTime.now(), id: Uuid().v4()),
    Plant.withMeta('Test_B', 'Description', [], updated: DateTime.now(), created: DateTime.now(), id: Uuid().v4()),
    Plant.withMeta('Test_C', 'Description', [], updated: DateTime.now(), created: DateTime.now(), id: Uuid().v4()),
  ]));

  @override
  Future<Either<Failure, Plant>> create(Plant plant) async {
    final model = Plant.withMeta(
      plant.name,
      plant.description,
      plant.images,
      id: Uuid().v4(),
      created: DateTime.now(),
      updated: DateTime.now(),
    );
    _plants.add(
      _plants.value.rebuild(
        (list) => list
          ..add(model)
          ..sort((p1, p2) => p1.created.compareTo(p2.created)),
      ),
    );

    return Right(model);
  }

  @override
  Future<Either<Failure, void>> delete(String id) async {
    if (_plants.value.map((e) => e.id).contains(id) == false) {
      return Left(Failure(StateError('Plant($id) not found')));
    }
    _plants.add(
      _plants.value.rebuild(
        (list) => list..removeWhere((plant) => plant.id == id),
      ),
    );
    return Right(null);
  }

  @override
  Future<Either<Failure, Plant>> find(String id) async {
    final result = _plants.value.firstWhere(
      (plant) => plant.id == id,
      orElse: null,
    );

    if (result == null) {
      return Left(Failure(
        StateError('Plant($id) not found'),
      ));
    } else {
      return Right(result);
    }
  }

  @override
  Future<Either<Failure, Iterable<Plant>>> read() async => Right(_plants.value.toList());

  @override
  Future<Either<Failure, Plant>> update(Plant plant) async {
    assert(plant.id != null);
    _plants.add(_plants.value.rebuild((list) => list
      ..removeWhere((_plant) => _plant.id == plant.id)
      ..add(plant)));
    return Right(plant);
  }

  @override
  Future<Either<Failure, Stream<Iterable<Plant>>>> watch() async => Right(_plants.map((event) => event.toList()));
}
