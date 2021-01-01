import 'package:bloc/bloc.dart';
import 'package:rose_de_mur/features/core/domain/use_case/supply_crud/get_supplies_use_case.dart';

import 'data.dart';

class SuppliesBloc extends Bloc<SuppliesEvent, SuppliesState> {
  final GetSuppliesUseCase _useCase;

  SuppliesBloc(this._useCase) : super(SuppliesState.loading()) {
    add(SuppliesEvent.fetch());
  }

  @override
  Stream<SuppliesState> mapEventToState(SuppliesEvent event) async* {
    yield* event.maybeMap(
      fetch: (value) async* {
        yield SuppliesState.loading();
        final plants = await _useCase.execute();
        yield plants.fold(
          (l) => SuppliesState.failed(l),
          (r) => SuppliesState.hasData(r),
        );
      },
      orElse: () => Stream.empty(),
    );
  }
}
