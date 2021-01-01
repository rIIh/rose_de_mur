import 'package:built_collection/built_collection.dart';
import 'package:dartz/dartz.dart';
import 'package:rose_de_mur/features/core/domain/entity/failure/failure.dart';
import 'package:rose_de_mur/features/core/domain/entity/supply.dart';
import 'package:rose_de_mur/features/core/domain/repository/supply_repository.dart';
import 'package:rxdart/rxdart.dart';
import 'package:uuid/uuid.dart';

class SupplyRepositoryInMemoryImpl implements SupplyRepository {
  var _supplies = BehaviorSubject.seeded(BuiltList<Supply>(<Supply>[]));

  @override
  Future<Either<Failure, Supply>> create(Supply supply) async {
    final model = Supply.withMeta(
      supply.plant,
      supply.supplied,
      supply.quantity,
      supply.price,
      id: Uuid().v4(),
      created: DateTime.now(),
      updated: DateTime.now(),
    );
    _supplies.add(
      _supplies.value.rebuild(
        (list) => list
          ..add(model)
          ..sort((s1, s2) => s1.supplied.compareTo(s2.supplied)),
      ),
    );

    return Right(model);
  }

  @override
  Future<Either<Failure, void>> delete(String id) async {
    if (_supplies.value.map((e) => e.id).contains(id) == false) {
      return Left(Failure(StateError('Supply($id) not found')));
    }
    _supplies.add(
      _supplies.value.rebuild(
        (list) => list..removeWhere((supply) => supply.id == id),
      ),
    );
    return Right(null);
  }

  @override
  Future<Either<Failure, Supply>> find(String id) async {
    final result = _supplies.value.firstWhere(
      (supply) => supply.id == id,
      orElse: null,
    );

    if (result == null) {
      return Left(Failure(
        StateError('supply($id) not found'),
      ));
    } else {
      return Right(result);
    }
  }

  @override
  Future<Either<Failure, Iterable<Supply>>> read() async => Right(_supplies.value.toList());

  @override
  Future<Either<Failure, Supply>> update(Supply supply) async {
    assert(supply.id != null);
    _supplies.add(_supplies.value.rebuild((list) => list
      ..removeWhere((_supply) => _supply.id == supply.id)
      ..add(supply)));
    return Right(supply);
  }

  @override
  Future<Either<Failure, Stream<Iterable<Supply>>>> watch() async => Right(_supplies.map((event) => event.toList()));
}
