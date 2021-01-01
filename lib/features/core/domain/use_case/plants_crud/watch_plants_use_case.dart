import 'package:dartz/dartz.dart';
import 'package:rose_de_mur/features/core/domain/entity/failure/failure.dart';
import 'package:rose_de_mur/features/core/domain/entity/plant.dart';
import 'package:rose_de_mur/features/core/domain/repository/plants_repository.dart';

class WatchPlantsUseCase {
  final PlantsRepository _repository;

  WatchPlantsUseCase(this._repository);

  Future<Either<Failure, Stream<Iterable<Plant>>>> execute() => _repository.watch();
}
