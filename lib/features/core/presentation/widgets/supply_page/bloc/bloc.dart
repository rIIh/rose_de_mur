import 'package:bloc/bloc.dart';
import 'package:built_collection/built_collection.dart';
import 'package:flutter/cupertino.dart';
import 'package:rose_de_mur/features/core/domain/entity/plant.dart';
import 'package:rose_de_mur/features/core/domain/entity/supply.dart';
import 'package:rose_de_mur/features/core/domain/use_case/supply_crud/create_supply_use_case.dart';
import 'package:rose_de_mur/features/core/presentation/widgets/supply_page/bloc/data.dart';

class SupplyPageBloc extends Bloc<SupplyPageEvent, SupplyPageState> {
  final CreateSupplyUseCase _createSupply;

  SupplyPageDataState data;

  SupplyPageBloc(this._createSupply)
      : super(
          SupplyPageState.data(
            BuiltMap({
              UniqueKey().toString(): Supply(null, null, 0, 0, 0, 0),
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
            (map) => map[UniqueKey().toString()] = Supply(Plant('', '', []), null, 0, 0, 0, 0),
          ),
        ),
      ),
      update: (value) => Stream.value(
        data.copyWith(supplies: data.supplies.rebuild((map) => map[value.key] = value.supply)),
      ),
      save: (value) async* {
        for (final supply in data.supplies.values) {
          await _createSupply.execute(supply.copyWith(supplied: data.date));
        }
        value.completer.complete();
      },
      remove: (value) => Stream.value(data.copyWith(supplies: data.supplies.rebuild((map) => map.remove(value.key)))),
      orElse: () => Stream.empty(),
    );
  }
}
