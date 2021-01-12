import 'package:moor/moor.dart';
import 'package:rose_de_mur/features/core/data/moor/source/database.dart';

abstract class PlantModelContract {
  String get identifier;

  String get name;

  String get description;

  DateTime get created;

  DateTime get updated;
}

abstract class PlantModelContractWithImages extends PlantModelContract {
  List<Uint8List> get images;
}

class PlantModelMoorImpl extends PlantModel implements PlantModelContract {
  @override
  String get identifier => id.toString();
}
