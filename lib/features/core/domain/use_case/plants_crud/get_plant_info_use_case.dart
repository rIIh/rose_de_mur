import 'package:dartz/dartz.dart';
import 'package:rose_de_mur/features/core/domain/entity/failure/failure.dart';
import 'package:rose_de_mur/features/core/domain/entity/plant.dart';
import 'package:rose_de_mur/features/core/domain/repository/plants_repository.dart';

class GetPlantInfoUseCase {
  final PlantsRepository _repository;

  GetPlantInfoUseCase(this._repository);

  Future<Either<Failure, Plant>> execute(String id) => _repository.find(id);
}
