import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rose_de_mur/features/core/domain/entity/failure/failure.dart';
import 'package:rose_de_mur/features/core/domain/entity/supply.dart';

part 'data.freezed.dart';

@freezed
abstract class SuppliesEvent with _$SuppliesEvent {
  const factory SuppliesEvent.watch() = _Fetch;

  const factory SuppliesEvent.remove(Supply supply) = _Remove;
  const factory SuppliesEvent.removeMany(Iterable<Supply> supplies) = _RemoveMany;
}

@freezed
abstract class SuppliesState with _$SuppliesState {
  const factory SuppliesState.loading() = _Loading;

  const factory SuppliesState.hasData(Stream<Iterable<Supply>> supplies) = _HasData;

  const factory SuppliesState.failed(Failure failure) = _Failed;
}
