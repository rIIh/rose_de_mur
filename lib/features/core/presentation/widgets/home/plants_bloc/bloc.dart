import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:rose_de_mur/features/core/domain/use_case/plants_crud/watch_plants_use_case.dart';

import 'data.dart';

class PlantsBloc extends Bloc<PlantsGridEvent, PlansGridState> {
  final WatchPlantsUseCase _watchPlants;

  PlantsBloc(this._watchPlants) : super(PlansGridState.loading()) {
    add(PlantsGridEvent.fetch());
  }

  @override
  Stream<PlansGridState> mapEventToState(PlantsGridEvent event) async* {
    yield* event.maybeMap(
      fetch: (value) async* {
        yield PlansGridState.loading();
        final plants = await _watchPlants.execute();
        yield plants.fold(
          (l) => PlansGridState.failed(l),
          (r) => PlansGridState.hasData(r),
        );
      },
      orElse: () => Stream.empty(),
    );
  }
}
