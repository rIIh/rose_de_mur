import 'dart:typed_data';

import 'package:rose_de_mur/features/core/domain/entity/metadata.dart';

class Plant extends ObjectWithMetadata {
  final String name;
  final String description;
  final List<Uint8List> images;

  Plant(this.name, this.description, this.images);

  Plant.withMeta(this.name, this.description, this.images, {String id, DateTime created, DateTime updated})
      : super(id: id, created: created, updated: updated);
}
