import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rose_de_mur/features/core/domain/entity/failure/failure.dart';
import 'package:rose_de_mur/features/core/domain/entity/supply.dart';
import 'package:rose_de_mur/features/core/domain/use_case/supply_crud/update_supply_use_case.dart';

part 'bloc.freezed.dart';

class UpdateSupplyBloc extends Bloc<UpdateSupplyBlocEvent, UpdateSupplyBlocState> {
  final UpdateSupplyUseCase _updateSupply;

  UpdateSupplyBloc(this._updateSupply) : super(null);

  @override
  Stream<UpdateSupplyBlocState> mapEventToState(UpdateSupplyBlocEvent event) async* {
    yield* event.maybeMap(
      update: (value) async* {
        final result = await _updateSupply.execute(value.supply);
        yield result.fold(
          (l) => UpdateSupplyBlocState.failed(l),
          (r) => UpdateSupplyBlocState.succeeded(),
        );
      },
      orElse: () => Stream.empty(),
    );
  }
}

@freezed
abstract class UpdateSupplyBlocEvent with _$UpdateSupplyBlocEvent {
  const factory UpdateSupplyBlocEvent.update(Supply supply) = _Update;
  const factory UpdateSupplyBlocEvent.delete(Supply supply) = _Delete;
}

@freezed
abstract class UpdateSupplyBlocState with _$UpdateSupplyBlocState {
  const factory UpdateSupplyBlocState.succeeded() = _Succeeded;

  const factory UpdateSupplyBlocState.failed(Failure failure) = _Failed;
}
