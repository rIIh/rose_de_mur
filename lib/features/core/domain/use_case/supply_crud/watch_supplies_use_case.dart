import 'package:dartz/dartz.dart';
import 'package:rose_de_mur/features/core/domain/entity/failure/failure.dart';
import 'package:rose_de_mur/features/core/domain/entity/supply.dart';
import 'package:rose_de_mur/features/core/domain/repository/supply_repository.dart';

class WatchSuppliesUseCase {
  final SupplyRepository _repository;

  WatchSuppliesUseCase(this._repository);

  Future<Either<Failure, Stream<Iterable<Supply>>>> execute() => _repository.watch();
}
