import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rose_de_mur/features/core/domain/entity/failure/failure.dart';
import 'package:rose_de_mur/features/core/domain/entity/plant.dart';
import 'package:rose_de_mur/features/core/domain/entity/supply.dart';
import 'package:rose_de_mur/features/core/domain/use_case/plants_crud/update_plant_use_case.dart';
import 'package:rose_de_mur/features/core/domain/use_case/plants_crud/watch_plant_use_case.dart';
import 'package:rose_de_mur/features/core/domain/use_case/supply_crud/watch_supplies_use_case.dart';

part 'bloc.freezed.dart';

class DetailsBloc extends Bloc<DetailsEvent, DetailsState> {
  final WatchPlantUseCase _watchPlant;
  final WatchSuppliesUseCase _watchSupplies;
  final UpdatePlantUseCase _updatePlant;

  DetailsBloc(this._watchPlant, this._watchSupplies, this._updatePlant) : super(DetailsState.none());

  @override
  Stream<DetailsState> mapEventToState(DetailsEvent event) async* {
    yield* event.maybeMap(
      connect: (event) async* {
        final plantStream = await _watchPlant.execute(event.plant.id);
        final suppliesStream = await _watchSupplies.execute().then(
              (value) => value.map(
                (r) => r.map(
                  (supplies) => supplies.where((element) => (element.plant as PlantWithMeta).id == event.plant.id),
                ),
              ),
            );

        if (plantStream.isLeft()) {
          yield DetailsState.failed(plantStream.swap().getOrElse(() => null));
          return;
        }

        if (suppliesStream.isLeft()) {
          yield DetailsState.failed(suppliesStream.swap().getOrElse(() => null));
          return;
        }

        yield DetailsState.hasData(plantStream.getOrElse(() => null), suppliesStream.getOrElse(() => null));
      },
      update: (value) async* {
        final result = await _updatePlant.execute(value.plant);
        if (result.isLeft()) {
          yield DetailsState.failed(result.swap().getOrElse(() => null));
        }
      },
      orElse: () => Stream.empty(),
    );
  }
}

@freezed
abstract class DetailsEvent with _$DetailsEvent {
  const factory DetailsEvent.connect(PlantWithMeta plant) = _Connect;

  const factory DetailsEvent.update(Plant plant) = _Update;

  const factory DetailsEvent.updatePrice(Supply supply, double price) = _UpdatePrice;
}

@freezed
abstract class DetailsState with _$DetailsState {
  const factory DetailsState.none() = _None;

  const factory DetailsState.hasData(Stream<Plant> plant, Stream<Iterable<Supply>> supplies) = _HasData;

  const factory DetailsState.failed(Failure failure) = _Failed;
}
