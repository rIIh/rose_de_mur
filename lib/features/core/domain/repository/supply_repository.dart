import 'package:dartz/dartz.dart';
import 'package:rose_de_mur/features/core/domain/entity/failure/failure.dart';
import 'package:rose_de_mur/features/core/domain/entity/supply.dart';

abstract class SupplyRepository {
  Future<Either<Failure, Iterable<Supply>>> read();
  Future<Either<Failure, Stream<Iterable<Supply>>>> watch();
  Future<Either<Failure, Supply>> find(String id);
  Future<Either<Failure, Supply>> create(Supply supply);
  Future<Either<Failure, Supply>> update(Supply supply);
  Future<Either<Failure, void>> delete(String id);
}
