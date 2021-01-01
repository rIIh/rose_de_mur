import 'package:rose_de_mur/features/core/domain/repository/plants_repository.dart';

class DeletePlantUseCase {
  final PlantsRepository _repository;

  DeletePlantUseCase(this._repository);

  Future<void> execute(String id) => _repository.delete(id);
}
