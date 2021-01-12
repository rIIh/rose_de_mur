import 'package:dartz/dartz.dart';
import 'package:rose_de_mur/features/core/domain/entity/failure/failure.dart';
import 'package:rose_de_mur/features/core/domain/entity/plant.dart';
import 'package:rose_de_mur/features/core/domain/repository/plants_repository.dart';

class WatchPlantUseCase {
  final PlantsRepository _repository;

  WatchPlantUseCase(this._repository);

  Future<Either<Failure, Stream<Plant>>> execute(String id) => _repository.watchSingle(id);
}
