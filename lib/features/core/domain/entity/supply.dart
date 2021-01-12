import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rose_de_mur/features/core/domain/entity/plant.dart';

//
// class Supply extends ObjectWithMetadata {
//   final Plant plant;
//   final DateTime supplied;
//   final int quantity;
//   final double price;
//
//   Supply(this.plant, this.supplied, this.quantity, this.price);
//
//   Supply.withMeta(this.plant, this.supplied, this.quantity, this.price, {String id, DateTime created, DateTime updated})
//       : super(id: id, created: created, updated: updated);
// }

part 'supply.freezed.dart';

@freezed
abstract class Supply with _$Supply {
  const factory Supply(
    @nullable Plant plant,
    @nullable DateTime supplied,
    int quantity,
    int sold,
    int trashed,
    double price,
  ) = _Default;

  const factory Supply.withMeta(
    Plant plant,
    DateTime supplied,
    int quantity,
    int sold,
    int trashed,
    double price, {
    String id,
    DateTime created,
    DateTime updated,
  }) = _WithMeta;
}
