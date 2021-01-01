import 'package:built_collection/built_collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rose_de_mur/features/core/domain/entity/failure/failure.dart';
import 'package:rose_de_mur/features/core/domain/entity/supply.dart';

part 'data.freezed.dart';

@freezed
abstract class SupplyPageEvent with _$SupplyPageEvent {
  const factory SupplyPageEvent.setDate(DateTime date) = _SetDate;

  const factory SupplyPageEvent.add() = _Add;

  const factory SupplyPageEvent.remove(String key) = _Remove;

  const factory SupplyPageEvent.update(String key, Supply supply) = _Update;

  const factory SupplyPageEvent.save() = _Save;

  const factory SupplyPageEvent.sync() = _Sync;
}

@freezed
abstract class SupplyPageState with _$SupplyPageState {
  const factory SupplyPageState.data(
    BuiltMap<String, Supply> supplies,
    DateTime date,
  ) = SupplyPageDataState;

  const factory SupplyPageState.failed(Failure failure) = _Failed;
}
