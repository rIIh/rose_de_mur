import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rose_de_mur/features/core/domain/entity/failure/failure.dart';
import 'package:rose_de_mur/features/core/domain/entity/plant.dart';

part 'data.freezed.dart';

@freezed
abstract class PlantsGridEvent with _$PlantsGridEvent {
  const factory PlantsGridEvent.fetch() = _Fetch;
}

@freezed
abstract class PlansGridState with _$PlansGridState {
  const factory PlansGridState.loading() = _Loading;

  const factory PlansGridState.hasData(Stream<Iterable<Plant>> plants) = _HasData;

  const factory PlansGridState.failed(Failure failure) = _Failed;
}
