import 'package:dartz/dartz.dart';
import 'package:rose_de_mur/features/core/domain/entity/failure/failure.dart';
import 'package:rose_de_mur/features/core/domain/entity/supply.dart';
import 'package:rose_de_mur/features/core/domain/repository/supply_repository.dart';

class GetSupplyInfoUseCase {
  final SupplyRepository _repository;

  GetSupplyInfoUseCase(this._repository);

  Future<Either<Failure, Supply>> execute(String id) => _repository.find(id);
}
