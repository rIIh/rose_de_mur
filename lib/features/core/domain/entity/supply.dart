import 'package:rose_de_mur/features/core/domain/entity/metadata.dart';
import 'package:rose_de_mur/features/core/domain/entity/plant.dart';

class Supply extends ObjectWithMetadata {
  final Plant plant;
  final DateTime supplied;
  final int quantity;
  final double price;

  Supply(this.plant, this.supplied, this.quantity, this.price);

  Supply.withMeta(this.plant, this.supplied, this.quantity, this.price, {String id, DateTime created, DateTime updated})
      : super(id: id, created: created, updated: updated);
}
