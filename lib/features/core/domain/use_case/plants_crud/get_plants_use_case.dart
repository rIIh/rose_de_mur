import 'package:dartz/dartz.dart';
import 'package:rose_de_mur/features/core/domain/entity/failure/failure.dart';
import 'package:rose_de_mur/features/core/domain/entity/plant.dart';
import 'package:rose_de_mur/features/core/domain/repository/plants_repository.dart';

class GetPlantsUseCase {
  final PlantsRepository _repository;

  GetPlantsUseCase(this._repository);

  Future<Either<Failure, Iterable<Plant>>> execute() => _repository.read();
}
