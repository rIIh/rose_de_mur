import 'package:built_collection/built_collection.dart';
import 'package:koin_flutter/koin_disposable.dart';
import 'package:rose_de_mur/features/core/data/model/memory_plant_model.dart';
import 'package:rose_de_mur/features/core/data/model/memory_supply_model.dart';
import 'package:rose_de_mur/features/core/data/model/plant.dart';
import 'package:rose_de_mur/features/core/data/model/supply_model.dart';
import 'package:rxdart/rxdart.dart';
import 'package:uuid/uuid.dart';

abstract class MemorySource {
  Future<List<PlantModelContractWithImages>> getManyPlants();

  Future<PlantModelContractWithImages> getPlant(String id);

  Stream<List<PlantModelContractWithImages>> watchManyPlants();

  Stream<PlantModelContractWithImages> watchPlant(String id);

  Future<PlantModelContractWithImages> createPlant(PlantModelContractWithImages data);

  Future<PlantModelContractWithImages> updatePlant(PlantModelContractWithImages data);

  Future<void> removePlant(String id);

  Future<SupplyModelContract> getSupply(String id);

  Future<List<SupplyModelContract>> getManySupplies();

  Stream<List<SupplyModelContract>> watchManySupplies();

  Stream<SupplyModelContract> watchSupply(String id);

  Future<SupplyModelContract> createSupply(SupplyModelContract data);

  Future<SupplyModelContract> updateSupply(SupplyModelContract data);

  Future<void> removeSupply(String id);
}

class MemorySourceImpl implements MemorySource, Disposable {
  final BehaviorSubject<BuiltMap<String, PlantModelContractWithImages>> plants = BehaviorSubject.seeded(BuiltMap());
  final BehaviorSubject<BuiltMap<String, SupplyModelContract>> supplies = BehaviorSubject.seeded(BuiltMap());

  void dispose() {
    plants.close();
    supplies.close();
  }

  @override
  Future<List<PlantModelContractWithImages>> getManyPlants() async => plants.value.toMap().values.toList();

  @override
  Stream<List<PlantModelContractWithImages>> watchManyPlants() => plants.map((event) => event.toMap().values.toList());

  @override
  Future<List<SupplyModelContract>> getManySupplies() async => supplies.value.toMap().values.toList();

  @override
  Stream<List<SupplyModelContract>> watchManySupplies() => supplies.map((event) => event.toMap().values.toList());

  @override
  Future<PlantModelContractWithImages> createPlant(PlantModelContractWithImages data) async {
    final instance = PlantModelMemoryImpl(
      Uuid().v4(),
      data.name,
      data.description,
      DateTime.now(),
      DateTime.now(),
      images: data.images,
    );
    plants.add(plants.value.rebuild((map) => map[instance.identifier] = instance));
    return instance;
  }

  @override
  Future<SupplyModelContract> createSupply(SupplyModelContract data) async {
    final instance = SupplyModelMemoryImpl(
      Uuid().v4(),
      data.plantIdentifier,
      data.supplied,
      data.quantity,
      data.price,
      DateTime.now(),
      DateTime.now(),
      0,
      0,
    );
    supplies.add(supplies.value.rebuild((map) => map[instance.identifier] = instance));
    return instance;
  }

  @override
  Future<void> removePlant(String id) async {
    plants.add(plants.value.rebuild((map) => map.remove(id)));
    supplies.add(supplies.value.rebuild((map) => map.removeWhere((id, supply) => supply.plantIdentifier == id)));
  }

  @override
  Future<void> removeSupply(String id) async {
    supplies.add(supplies.value.rebuild((map) => map.remove(id)));
  }

  @override
  Future<PlantModelContractWithImages> updatePlant(PlantModelContractWithImages data) async {
    assert(data.identifier != null);
    assert(plants.value.containsKey(data.identifier));

    plants.add(
      plants.value.rebuild(
        (map) => map.updateValue(
          data.identifier,
          (previous) => PlantModelMemoryImpl(
            previous.identifier,
            data.name ?? previous.name,
            data.description ?? previous.description,
            previous.created,
            DateTime.now(),
            images: data.images ?? previous.images,
          ),
        ),
      ),
    );
    return plants.value[data.identifier];
  }

  @override
  Future<SupplyModelContract> updateSupply(SupplyModelContract data) async {
    assert(data.identifier != null);
    assert(supplies.value.containsKey(data.identifier));

    supplies.add(
      supplies.value.rebuild(
        (map) => map.updateValue(
          data.identifier,
          (previous) => SupplyModelMemoryImpl(
            previous.identifier,
            data.plantIdentifier ?? previous.plantIdentifier,
            data.supplied ?? previous.supplied,
            data.quantity ?? previous.quantity,
            data.price ?? previous.price,
            previous.created,
            DateTime.now(),
            data.sold ?? previous.sold,
            data.trashed ?? previous.trashed,
          ),
        ),
      ),
    );
    return supplies.value[data.identifier];
  }

  @override
  Future<PlantModelContractWithImages> getPlant(String id) async {
    return plants.value[id];
  }

  @override
  Future<SupplyModelContract> getSupply(String id) async {
    return supplies.value[id];
  }

  @override
  Stream<PlantModelContractWithImages> watchPlant(String id) => plants.stream.map((event) => event[id]).distinct();

  @override
  Stream<SupplyModelContract> watchSupply(String id) => supplies.stream.map((event) => event[id]).distinct();
}
