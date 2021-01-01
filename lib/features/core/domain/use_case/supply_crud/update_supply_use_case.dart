import 'package:dartz/dartz.dart';
import 'package:rose_de_mur/features/core/domain/entity/failure/failure.dart';
import 'package:rose_de_mur/features/core/domain/entity/supply.dart';
import 'package:rose_de_mur/features/core/domain/repository/supply_repository.dart';

class UpdateSupplyUseCase {
  final SupplyRepository _repository;

  UpdateSupplyUseCase(this._repository);

  Future<Either<Failure, Supply>> execute(Supply supply) => _repository.update(supply);
}
