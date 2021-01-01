import 'package:dartz/dartz.dart';
import 'package:rose_de_mur/features/core/domain/entity/failure/failure.dart';
import 'package:rose_de_mur/features/core/domain/entity/plant.dart';
import 'package:rose_de_mur/features/core/domain/repository/plants_repository.dart';

class UpdatePlantUseCase {
  final PlantsRepository _repository;

  UpdatePlantUseCase(this._repository);

  Future<Either<Failure, Plant>> execute(Plant plant) => _repository.update(plant);
}
