import 'package:dartz/dartz.dart';
import 'package:moor/moor.dart';
import 'package:rose_de_mur/features/core/data/moor/repository/plants_repository.dart';
import 'package:rose_de_mur/features/core/data/moor/source/dao/supplies_dao.dart';
import 'package:rose_de_mur/features/core/data/moor/source/database.dart';
import 'package:rose_de_mur/features/core/domain/entity/failure/failure.dart';
import 'package:rose_de_mur/features/core/domain/entity/supply.dart';
import 'package:rose_de_mur/features/core/domain/repository/supply_repository.dart';

Supply supplyFromModel(SupplyModelTuple model) => Supply.withMeta(
      plantFromModel(model.plantTuple),
      model.supply.supplied,
      model.supply.quantity,
      model.supply.price,
      id: model.supply.id.toString(),
      created: model.supply.created,
      updated: model.supply.updated,
    );

class SupplyRepositoryMoorImpl implements SupplyRepository {
  final SuppliesDao _dao;

  SupplyRepositoryMoorImpl(this._dao);

  @override
  Future<Either<Failure, Supply>> create(Supply supply) async {
    final model = await _dao.create(
      SupplyModelsCompanion(
        plant: Value(int.parse(supply.plant.id)),
        price: Value(supply.price),
        quantity: Value(supply.quantity),
        supplied: Value(supply.supplied),
      ),
    );

    return Right(supplyFromModel(model));
  }

  @override
  Future<Either<Failure, void>> delete(String id) => _dao.deleteSupply(int.parse(id));

  @override
  Future<Either<Failure, Supply>> find(String id) async {
    return Right(supplyFromModel(await _dao.read(int.parse(id))));
  }

  @override
  Future<Either<Failure, Iterable<Supply>>> read() {
    return _dao.readMany().then((value) => Right(value.map((e) => supplyFromModel(e))));
  }

  @override
  Future<Either<Failure, Supply>> update(Supply supply) {
    // TODO: implement update
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Stream<Iterable<Supply>>>> watch() async => Right(
        _dao.watchMany().map((event) => event.map((e) => supplyFromModel(e))),
      );
}
