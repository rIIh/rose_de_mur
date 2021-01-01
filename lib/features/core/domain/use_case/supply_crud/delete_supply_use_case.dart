import 'package:rose_de_mur/features/core/domain/repository/supply_repository.dart';

class DeleteSupplyUseCase {
  final SupplyRepository _repository;

  DeleteSupplyUseCase(this._repository);

  Future<void> execute(String id) => _repository.delete(id);
}
