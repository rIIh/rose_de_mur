import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'plant.freezed.dart';

@freezed
abstract class Plant with _$Plant {
  const factory Plant(
    String name,
    String description,
    List<Uint8List> images,
  ) = _Default;

  const factory Plant.withMeta(
    String name,
    String description,
    List<Uint8List> images, {
    String id,
    DateTime created,
    DateTime updated,
  }) = PlantWithMeta;
}
