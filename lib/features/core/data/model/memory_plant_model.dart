import 'dart:typed_data';

import 'package:rose_de_mur/features/core/data/model/plant.dart';

class PlantModelMemoryImpl implements PlantModelContractWithImages {
  final String identifier;
  final String name;
  final String description;
  final List<Uint8List> images;
  final DateTime created;
  final DateTime updated;

  PlantModelMemoryImpl(
    this.identifier,
    this.name,
    this.description,
    this.created,
    this.updated, {
    this.images,
  });
}

class PlantModelMemoryConstructorImpl implements PlantModelContractWithImages {
  final String name;
  final String description;
  final List<Uint8List> images;

  PlantModelMemoryConstructorImpl({this.name, this.description, this.images});

  @override
  DateTime get created => null;

  @override
  String get identifier => null;

  @override
  DateTime get updated => null;
}

class PlantModelMemoryUpdateImpl implements PlantModelContractWithImages {
  final String identifier;
  final String name;
  final String description;
  final List<Uint8List> images;

  PlantModelMemoryUpdateImpl(this.identifier, {this.name, this.description, this.images});

  @override
  DateTime get created => null;

  @override
  DateTime get updated => null;
}
