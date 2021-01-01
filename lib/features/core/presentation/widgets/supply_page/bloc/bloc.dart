import 'package:bloc/bloc.dart';
import 'package:built_collection/built_collection.dart';
import 'package:flutter/cupertino.dart';
import 'package:rose_de_mur/features/core/domain/entity/supply.dart';
import 'package:rose_de_mur/features/core/presentation/widgets/supply_page/bloc/data.dart';

class SupplyPageBloc extends Bloc<SupplyPageEvent, SupplyPageState> {
  SupplyPageDataState data;

  SupplyPageBloc()
      : super(
          SupplyPageState.data(
            BuiltMap({
              UniqueKey().toString(): Supply(null, DateTime.now(), 0, 0),
            }),
            DateTime.now(),
          ),
        ) {
    data = state;
  }

  @override
  void onTransition(Transition<SupplyPageEvent, SupplyPageState> transition) {
    if (transition.nextState is SupplyPageDataState) {
      data = transition.nextState;
    }
    super.onTransition(transition);
  }

  @override
  Stream<SupplyPageState> mapEventToState(SupplyPageEvent event) async* {
    yield* event.maybeMap(
      setDate: (value) => Stream.value(data.copyWith(date: value.date)),
      add: (value) => Stream.value(
        data.copyWith(
          supplies: data.supplies.rebuild(
            (map) => map[UniqueKey().toString()] = Supply(null, DateTime.now(), 0, 0),
          ),
        ),
      ),
      update: (value) =>
          Stream.value(data.copyWith(supplies: data.supplies.rebuild((map) => map[value.key] = value.supply))),
      remove: (value) => Stream.value(data.copyWith(supplies: data.supplies.rebuild((map) => map.remove(value.key)))),
      orElse: () => Stream.empty(),
    );
  }
}
