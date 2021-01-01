import 'package:dartz/dartz.dart';
import 'package:rose_de_mur/features/core/domain/entity/failure/failure.dart';
import 'package:rose_de_mur/features/core/domain/entity/plant.dart';

abstract class PlantsRepository {
  Future<Either<Failure, Iterable<Plant>>> read();

  Future<Either<Failure, Stream<Iterable<Plant>>>> watch();

  Future<Either<Failure, Plant>> find(String id);

  Future<Either<Failure, Plant>> create(Plant plant);

  Future<Either<Failure, Plant>> update(Plant plant);

  Future<Either<Failure, void>> delete(String id);
}
