import 'package:bloc/bloc.dart';
import 'package:rose_de_mur/features/core/domain/use_case/supply_crud/delete_supply_use_case.dart';
import 'package:rose_de_mur/features/core/domain/use_case/supply_crud/watch_supplies_use_case.dart';

import 'data.dart';

class SuppliesBloc extends Bloc<SuppliesEvent, SuppliesState> {
  final WatchSuppliesUseCase _watchSupplies;
  final DeleteSupplyUseCase _deleteSupplyUseCase;

  SuppliesBloc(this._watchSupplies, this._deleteSupplyUseCase) : super(SuppliesState.loading()) {
    add(SuppliesEvent.watch());
  }

  @override
  Stream<SuppliesState> mapEventToState(SuppliesEvent event) async* {
    yield* event.maybeMap(
      watch: (value) async* {
        yield SuppliesState.loading();
        final supplies = await _watchSupplies.execute();
        yield supplies.fold(
          (l) => SuppliesState.failed(l),
          (r) => SuppliesState.hasData(r),
        );
      },
      removeMany: (value) async* {
        for (final s in value.supplies) {
          s.map(
            (value) => null,
            withMeta: (value) => _deleteSupplyUseCase.execute(value.id),
          );
        }
      },
      remove: (value) {
        value.supply.map<void>(
          (value) => null,
          withMeta: (value) => _deleteSupplyUseCase.execute(value.id),
        );
        return Stream.empty();
      },
      orElse: () => Stream.empty(),
    );
  }
}
