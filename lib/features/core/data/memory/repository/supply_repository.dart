import 'package:dartz/dartz.dart';
import 'package:rose_de_mur/features/core/data/memory/repository/plants_repository.dart';
import 'package:rose_de_mur/features/core/data/memory/source/memory_source.dart';
import 'package:rose_de_mur/features/core/data/model/memory_supply_model.dart';
import 'package:rose_de_mur/features/core/data/model/plant.dart';
import 'package:rose_de_mur/features/core/data/model/supply_model.dart';
import 'package:rose_de_mur/features/core/domain/entity/failure/failure.dart';
import 'package:rose_de_mur/features/core/domain/entity/supply.dart';
import 'package:rose_de_mur/features/core/domain/repository/plants_repository.dart';
import 'package:rose_de_mur/features/core/domain/repository/supply_repository.dart';
import 'package:rxdart/rxdart.dart';

Future<Supply> _modelToEntity(SupplyModelContract model, MemorySource source) async => Supply.withMeta(
      await source.getPlant(model.plantIdentifier).then((value) => plantModelToEntity(value)),
      model.supplied,
      model.quantity,
      model.sold,
      model.trashed,
      model.price,
      updated: model.updated,
      created: model.created,
      id: model.identifier,
    );

Supply _modelToEntitySync(SupplyModelContract model, PlantModelContractWithImages plant) => Supply.withMeta(
      plantModelToEntity(plant),
      model.supplied,
      model.quantity,
      model.sold,
      model.trashed,
      model.price,
      updated: model.updated,
      created: model.created,
      id: model.identifier,
    );

class SupplyRepositoryInMemoryImpl implements SupplyRepository {
  final MemorySource _source;
  final PlantsRepository _plantsRepository;

  SupplyRepositoryInMemoryImpl(this._source, this._plantsRepository);

  @override
  Future<Either<Failure, Supply>> create(Supply supply) async {
    var plant = await supply.plant.map(
      (value) async => await _plantsRepository.create(value).then((value) => value.getOrElse(() => null)),
      withMeta: (value) async => value,
    );
    if (plant == null) {
      return Left(Failure(StateError('Something goes wrong')));
    }
    final result = await _source.createSupply(
      SupplyModelMemoryConstructorImpl(
        supplied: supply.supplied,
        quantity: supply.quantity,
        price: supply.price,
        plantIdentifier: plant.map(
          (value) => null,
          withMeta: (value) => value.id,
        ),
      ),
    );
    return Right(await _modelToEntity(result, _source));
  }

  @override
  Future<Either<Failure, void>> delete(String id) async {
    await _source.removeSupply(id);
    return Right(null);
  }

  @override
  Future<Either<Failure, Supply>> find(String id) async {
    final result = await _source.getSupply(id);

    if (result == null) {
      return Left(Failure(
        StateError('supply($id) not found'),
      ));
    } else {
      return Right(await _modelToEntity(result, _source));
    }
  }

  @override
  Future<Either<Failure, Iterable<Supply>>> read() async => Right(
        await _source.getManySupplies().then(
              (value) => Future.wait(value.map((e) => _modelToEntity(e, _source))).then((value) => value.toList()),
            ),
      );

  @override
  Future<Either<Failure, Supply>> update(Supply supply) async {
    return supply.map(
      (value) async => Left(Failure(StateError('$supply should have meta information'))),
      withMeta: (value) async {
        final result = await _source.updateSupply(SupplyModelMemoryUpdateImpl(
          value.id,
          plantIdentifier: value.plant.map(
            (value) => null,
            withMeta: (value) => value.id,
          ),
          price: supply.price,
          quantity: supply.quantity,
          sold: supply.sold,
          trashed: supply.trashed,
          supplied: supply.supplied,
        ));
        return Right(await _modelToEntity(result, _source));
      },
    );
  }

  @override
  Future<Either<Failure, Stream<Iterable<Supply>>>> watch() async {
    final supplies = _source.watchManySupplies();
    final plants = _source.watchManyPlants();
    // final zipped = Rx.zip2<Iterable<SupplyModelContract>, Iterable<PlantModelContractWithImages>, Iterable<Supply>>(
    //   supplies,
    //   plants,
    //   (a, b) => a.map(
    //     (e) => _modelToEntitySync(
    //       e,
    //       b.firstWhere((element) => element.identifier == e.plantIdentifier),
    //     ),
    //   ),
    // ).asBroadcastStream();

    final zipped = supplies.withLatestFrom(
        plants,
        (t, s) => t.map(
              (e) => _modelToEntitySync(
                e,
                s.firstWhere((element) => element.identifier == e.plantIdentifier),
              ),
            ));

    return Right(zipped);
  }

  @override
  Future<Either<Failure, Stream<Supply>>> watchSingle(String id) async => Right(
        _source.watchSupply(id).asyncMap((event) => _modelToEntity(event, _source)),
      );
}
