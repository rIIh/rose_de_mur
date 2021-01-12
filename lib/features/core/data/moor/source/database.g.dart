// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class PlantModel extends DataClass implements Insertable<PlantModel> {
  final int id;
  final String name;
  final String description;
  final DateTime created;
  final DateTime updated;
  PlantModel(
      {@required this.id,
      @required this.name,
      this.description,
      @required this.created,
      @required this.updated});
  factory PlantModel.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return PlantModel(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      name: stringType.mapFromDatabaseResponse(data['${effectivePrefix}name']),
      description: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}description']),
      created: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}created']),
      updated: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}updated']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    if (!nullToAbsent || created != null) {
      map['created'] = Variable<DateTime>(created);
    }
    if (!nullToAbsent || updated != null) {
      map['updated'] = Variable<DateTime>(updated);
    }
    return map;
  }

  PlantModelsCompanion toCompanion(bool nullToAbsent) {
    return PlantModelsCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      created: created == null && nullToAbsent
          ? const Value.absent()
          : Value(created),
      updated: updated == null && nullToAbsent
          ? const Value.absent()
          : Value(updated),
    );
  }

  factory PlantModel.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return PlantModel(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      description: serializer.fromJson<String>(json['description']),
      created: serializer.fromJson<DateTime>(json['created']),
      updated: serializer.fromJson<DateTime>(json['updated']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'description': serializer.toJson<String>(description),
      'created': serializer.toJson<DateTime>(created),
      'updated': serializer.toJson<DateTime>(updated),
    };
  }

  PlantModel copyWith(
          {int id,
          String name,
          String description,
          DateTime created,
          DateTime updated}) =>
      PlantModel(
        id: id ?? this.id,
        name: name ?? this.name,
        description: description ?? this.description,
        created: created ?? this.created,
        updated: updated ?? this.updated,
      );
  @override
  String toString() {
    return (StringBuffer('PlantModel(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('description: $description, ')
          ..write('created: $created, ')
          ..write('updated: $updated')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          name.hashCode,
          $mrjc(description.hashCode,
              $mrjc(created.hashCode, updated.hashCode)))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is PlantModel &&
          other.id == this.id &&
          other.name == this.name &&
          other.description == this.description &&
          other.created == this.created &&
          other.updated == this.updated);
}

class PlantModelsCompanion extends UpdateCompanion<PlantModel> {
  final Value<int> id;
  final Value<String> name;
  final Value<String> description;
  final Value<DateTime> created;
  final Value<DateTime> updated;
  const PlantModelsCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.description = const Value.absent(),
    this.created = const Value.absent(),
    this.updated = const Value.absent(),
  });
  PlantModelsCompanion.insert({
    this.id = const Value.absent(),
    @required String name,
    this.description = const Value.absent(),
    this.created = const Value.absent(),
    this.updated = const Value.absent(),
  }) : name = Value(name);
  static Insertable<PlantModel> custom({
    Expression<int> id,
    Expression<String> name,
    Expression<String> description,
    Expression<DateTime> created,
    Expression<DateTime> updated,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (description != null) 'description': description,
      if (created != null) 'created': created,
      if (updated != null) 'updated': updated,
    });
  }

  PlantModelsCompanion copyWith(
      {Value<int> id,
      Value<String> name,
      Value<String> description,
      Value<DateTime> created,
      Value<DateTime> updated}) {
    return PlantModelsCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      created: created ?? this.created,
      updated: updated ?? this.updated,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (created.present) {
      map['created'] = Variable<DateTime>(created.value);
    }
    if (updated.present) {
      map['updated'] = Variable<DateTime>(updated.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PlantModelsCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('description: $description, ')
          ..write('created: $created, ')
          ..write('updated: $updated')
          ..write(')'))
        .toString();
  }
}

class $PlantModelsTable extends PlantModels
    with TableInfo<$PlantModelsTable, PlantModel> {
  final GeneratedDatabase _db;
  final String _alias;
  $PlantModelsTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _nameMeta = const VerificationMeta('name');
  GeneratedTextColumn _name;
  @override
  GeneratedTextColumn get name => _name ??= _constructName();
  GeneratedTextColumn _constructName() {
    return GeneratedTextColumn('name', $tableName, false, minTextLength: 1);
  }

  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  GeneratedTextColumn _description;
  @override
  GeneratedTextColumn get description =>
      _description ??= _constructDescription();
  GeneratedTextColumn _constructDescription() {
    return GeneratedTextColumn(
      'description',
      $tableName,
      true,
    );
  }

  final VerificationMeta _createdMeta = const VerificationMeta('created');
  GeneratedDateTimeColumn _created;
  @override
  GeneratedDateTimeColumn get created => _created ??= _constructCreated();
  GeneratedDateTimeColumn _constructCreated() {
    return GeneratedDateTimeColumn(
      'created',
      $tableName,
      false,
    )..clientDefault = () => DateTime.now();
  }

  final VerificationMeta _updatedMeta = const VerificationMeta('updated');
  GeneratedDateTimeColumn _updated;
  @override
  GeneratedDateTimeColumn get updated => _updated ??= _constructUpdated();
  GeneratedDateTimeColumn _constructUpdated() {
    return GeneratedDateTimeColumn(
      'updated',
      $tableName,
      false,
    )..clientDefault = () => DateTime.now();
  }

  @override
  List<GeneratedColumn> get $columns =>
      [id, name, description, created, updated];
  @override
  $PlantModelsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'plant_models';
  @override
  final String actualTableName = 'plant_models';
  @override
  VerificationContext validateIntegrity(Insertable<PlantModel> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name'], _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description'], _descriptionMeta));
    }
    if (data.containsKey('created')) {
      context.handle(_createdMeta,
          created.isAcceptableOrUnknown(data['created'], _createdMeta));
    }
    if (data.containsKey('updated')) {
      context.handle(_updatedMeta,
          updated.isAcceptableOrUnknown(data['updated'], _updatedMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  PlantModel map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return PlantModel.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $PlantModelsTable createAlias(String alias) {
    return $PlantModelsTable(_db, alias);
  }
}

class PlantModelImage extends DataClass implements Insertable<PlantModelImage> {
  final int plant;
  final Uint8List image;
  PlantModelImage({@required this.plant, @required this.image});
  factory PlantModelImage.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final uint8ListType = db.typeSystem.forDartType<Uint8List>();
    return PlantModelImage(
      plant: intType.mapFromDatabaseResponse(data['${effectivePrefix}plant']),
      image: uint8ListType
          .mapFromDatabaseResponse(data['${effectivePrefix}image']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || plant != null) {
      map['plant'] = Variable<int>(plant);
    }
    if (!nullToAbsent || image != null) {
      map['image'] = Variable<Uint8List>(image);
    }
    return map;
  }

  PlantModelImagesCompanion toCompanion(bool nullToAbsent) {
    return PlantModelImagesCompanion(
      plant:
          plant == null && nullToAbsent ? const Value.absent() : Value(plant),
      image:
          image == null && nullToAbsent ? const Value.absent() : Value(image),
    );
  }

  factory PlantModelImage.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return PlantModelImage(
      plant: serializer.fromJson<int>(json['plant']),
      image: serializer.fromJson<Uint8List>(json['image']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'plant': serializer.toJson<int>(plant),
      'image': serializer.toJson<Uint8List>(image),
    };
  }

  PlantModelImage copyWith({int plant, Uint8List image}) => PlantModelImage(
        plant: plant ?? this.plant,
        image: image ?? this.image,
      );
  @override
  String toString() {
    return (StringBuffer('PlantModelImage(')
          ..write('plant: $plant, ')
          ..write('image: $image')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(plant.hashCode, image.hashCode));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is PlantModelImage &&
          other.plant == this.plant &&
          other.image == this.image);
}

class PlantModelImagesCompanion extends UpdateCompanion<PlantModelImage> {
  final Value<int> plant;
  final Value<Uint8List> image;
  const PlantModelImagesCompanion({
    this.plant = const Value.absent(),
    this.image = const Value.absent(),
  });
  PlantModelImagesCompanion.insert({
    @required int plant,
    @required Uint8List image,
  })  : plant = Value(plant),
        image = Value(image);
  static Insertable<PlantModelImage> custom({
    Expression<int> plant,
    Expression<Uint8List> image,
  }) {
    return RawValuesInsertable({
      if (plant != null) 'plant': plant,
      if (image != null) 'image': image,
    });
  }

  PlantModelImagesCompanion copyWith(
      {Value<int> plant, Value<Uint8List> image}) {
    return PlantModelImagesCompanion(
      plant: plant ?? this.plant,
      image: image ?? this.image,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (plant.present) {
      map['plant'] = Variable<int>(plant.value);
    }
    if (image.present) {
      map['image'] = Variable<Uint8List>(image.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PlantModelImagesCompanion(')
          ..write('plant: $plant, ')
          ..write('image: $image')
          ..write(')'))
        .toString();
  }
}

class $PlantModelImagesTable extends PlantModelImages
    with TableInfo<$PlantModelImagesTable, PlantModelImage> {
  final GeneratedDatabase _db;
  final String _alias;
  $PlantModelImagesTable(this._db, [this._alias]);
  final VerificationMeta _plantMeta = const VerificationMeta('plant');
  GeneratedIntColumn _plant;
  @override
  GeneratedIntColumn get plant => _plant ??= _constructPlant();
  GeneratedIntColumn _constructPlant() {
    return GeneratedIntColumn('plant', $tableName, false,
        $customConstraints: 'REFERENCES plants(id)');
  }

  final VerificationMeta _imageMeta = const VerificationMeta('image');
  GeneratedBlobColumn _image;
  @override
  GeneratedBlobColumn get image => _image ??= _constructImage();
  GeneratedBlobColumn _constructImage() {
    return GeneratedBlobColumn(
      'image',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [plant, image];
  @override
  $PlantModelImagesTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'plant_model_images';
  @override
  final String actualTableName = 'plant_model_images';
  @override
  VerificationContext validateIntegrity(Insertable<PlantModelImage> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('plant')) {
      context.handle(
          _plantMeta, plant.isAcceptableOrUnknown(data['plant'], _plantMeta));
    } else if (isInserting) {
      context.missing(_plantMeta);
    }
    if (data.containsKey('image')) {
      context.handle(
          _imageMeta, image.isAcceptableOrUnknown(data['image'], _imageMeta));
    } else if (isInserting) {
      context.missing(_imageMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  PlantModelImage map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return PlantModelImage.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $PlantModelImagesTable createAlias(String alias) {
    return $PlantModelImagesTable(_db, alias);
  }
}

class SupplyModel extends DataClass implements Insertable<SupplyModel> {
  final int id;
  final int plant;
  final DateTime supplied;
  final int quantity;
  final int sold;
  final int trashed;
  final double price;
  final DateTime created;
  final DateTime updated;
  SupplyModel(
      {@required this.id,
      @required this.plant,
      @required this.supplied,
      @required this.quantity,
      @required this.sold,
      @required this.trashed,
      @required this.price,
      @required this.created,
      @required this.updated});
  factory SupplyModel.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    final doubleType = db.typeSystem.forDartType<double>();
    return SupplyModel(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      plant: intType.mapFromDatabaseResponse(data['${effectivePrefix}plant']),
      supplied: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}supplied']),
      quantity:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}quantity']),
      sold: intType.mapFromDatabaseResponse(data['${effectivePrefix}sold']),
      trashed:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}trashed']),
      price:
          doubleType.mapFromDatabaseResponse(data['${effectivePrefix}price']),
      created: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}created']),
      updated: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}updated']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || plant != null) {
      map['plant'] = Variable<int>(plant);
    }
    if (!nullToAbsent || supplied != null) {
      map['supplied'] = Variable<DateTime>(supplied);
    }
    if (!nullToAbsent || quantity != null) {
      map['quantity'] = Variable<int>(quantity);
    }
    if (!nullToAbsent || sold != null) {
      map['sold'] = Variable<int>(sold);
    }
    if (!nullToAbsent || trashed != null) {
      map['trashed'] = Variable<int>(trashed);
    }
    if (!nullToAbsent || price != null) {
      map['price'] = Variable<double>(price);
    }
    if (!nullToAbsent || created != null) {
      map['created'] = Variable<DateTime>(created);
    }
    if (!nullToAbsent || updated != null) {
      map['updated'] = Variable<DateTime>(updated);
    }
    return map;
  }

  SupplyModelsCompanion toCompanion(bool nullToAbsent) {
    return SupplyModelsCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      plant:
          plant == null && nullToAbsent ? const Value.absent() : Value(plant),
      supplied: supplied == null && nullToAbsent
          ? const Value.absent()
          : Value(supplied),
      quantity: quantity == null && nullToAbsent
          ? const Value.absent()
          : Value(quantity),
      sold: sold == null && nullToAbsent ? const Value.absent() : Value(sold),
      trashed: trashed == null && nullToAbsent
          ? const Value.absent()
          : Value(trashed),
      price:
          price == null && nullToAbsent ? const Value.absent() : Value(price),
      created: created == null && nullToAbsent
          ? const Value.absent()
          : Value(created),
      updated: updated == null && nullToAbsent
          ? const Value.absent()
          : Value(updated),
    );
  }

  factory SupplyModel.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return SupplyModel(
      id: serializer.fromJson<int>(json['id']),
      plant: serializer.fromJson<int>(json['plant']),
      supplied: serializer.fromJson<DateTime>(json['supplied']),
      quantity: serializer.fromJson<int>(json['quantity']),
      sold: serializer.fromJson<int>(json['sold']),
      trashed: serializer.fromJson<int>(json['trashed']),
      price: serializer.fromJson<double>(json['price']),
      created: serializer.fromJson<DateTime>(json['created']),
      updated: serializer.fromJson<DateTime>(json['updated']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'plant': serializer.toJson<int>(plant),
      'supplied': serializer.toJson<DateTime>(supplied),
      'quantity': serializer.toJson<int>(quantity),
      'sold': serializer.toJson<int>(sold),
      'trashed': serializer.toJson<int>(trashed),
      'price': serializer.toJson<double>(price),
      'created': serializer.toJson<DateTime>(created),
      'updated': serializer.toJson<DateTime>(updated),
    };
  }

  SupplyModel copyWith(
          {int id,
          int plant,
          DateTime supplied,
          int quantity,
          int sold,
          int trashed,
          double price,
          DateTime created,
          DateTime updated}) =>
      SupplyModel(
        id: id ?? this.id,
        plant: plant ?? this.plant,
        supplied: supplied ?? this.supplied,
        quantity: quantity ?? this.quantity,
        sold: sold ?? this.sold,
        trashed: trashed ?? this.trashed,
        price: price ?? this.price,
        created: created ?? this.created,
        updated: updated ?? this.updated,
      );
  @override
  String toString() {
    return (StringBuffer('SupplyModel(')
          ..write('id: $id, ')
          ..write('plant: $plant, ')
          ..write('supplied: $supplied, ')
          ..write('quantity: $quantity, ')
          ..write('sold: $sold, ')
          ..write('trashed: $trashed, ')
          ..write('price: $price, ')
          ..write('created: $created, ')
          ..write('updated: $updated')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          plant.hashCode,
          $mrjc(
              supplied.hashCode,
              $mrjc(
                  quantity.hashCode,
                  $mrjc(
                      sold.hashCode,
                      $mrjc(
                          trashed.hashCode,
                          $mrjc(price.hashCode,
                              $mrjc(created.hashCode, updated.hashCode)))))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is SupplyModel &&
          other.id == this.id &&
          other.plant == this.plant &&
          other.supplied == this.supplied &&
          other.quantity == this.quantity &&
          other.sold == this.sold &&
          other.trashed == this.trashed &&
          other.price == this.price &&
          other.created == this.created &&
          other.updated == this.updated);
}

class SupplyModelsCompanion extends UpdateCompanion<SupplyModel> {
  final Value<int> id;
  final Value<int> plant;
  final Value<DateTime> supplied;
  final Value<int> quantity;
  final Value<int> sold;
  final Value<int> trashed;
  final Value<double> price;
  final Value<DateTime> created;
  final Value<DateTime> updated;
  const SupplyModelsCompanion({
    this.id = const Value.absent(),
    this.plant = const Value.absent(),
    this.supplied = const Value.absent(),
    this.quantity = const Value.absent(),
    this.sold = const Value.absent(),
    this.trashed = const Value.absent(),
    this.price = const Value.absent(),
    this.created = const Value.absent(),
    this.updated = const Value.absent(),
  });
  SupplyModelsCompanion.insert({
    this.id = const Value.absent(),
    @required int plant,
    @required DateTime supplied,
    @required int quantity,
    this.sold = const Value.absent(),
    this.trashed = const Value.absent(),
    @required double price,
    this.created = const Value.absent(),
    this.updated = const Value.absent(),
  })  : plant = Value(plant),
        supplied = Value(supplied),
        quantity = Value(quantity),
        price = Value(price);
  static Insertable<SupplyModel> custom({
    Expression<int> id,
    Expression<int> plant,
    Expression<DateTime> supplied,
    Expression<int> quantity,
    Expression<int> sold,
    Expression<int> trashed,
    Expression<double> price,
    Expression<DateTime> created,
    Expression<DateTime> updated,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (plant != null) 'plant': plant,
      if (supplied != null) 'supplied': supplied,
      if (quantity != null) 'quantity': quantity,
      if (sold != null) 'sold': sold,
      if (trashed != null) 'trashed': trashed,
      if (price != null) 'price': price,
      if (created != null) 'created': created,
      if (updated != null) 'updated': updated,
    });
  }

  SupplyModelsCompanion copyWith(
      {Value<int> id,
      Value<int> plant,
      Value<DateTime> supplied,
      Value<int> quantity,
      Value<int> sold,
      Value<int> trashed,
      Value<double> price,
      Value<DateTime> created,
      Value<DateTime> updated}) {
    return SupplyModelsCompanion(
      id: id ?? this.id,
      plant: plant ?? this.plant,
      supplied: supplied ?? this.supplied,
      quantity: quantity ?? this.quantity,
      sold: sold ?? this.sold,
      trashed: trashed ?? this.trashed,
      price: price ?? this.price,
      created: created ?? this.created,
      updated: updated ?? this.updated,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (plant.present) {
      map['plant'] = Variable<int>(plant.value);
    }
    if (supplied.present) {
      map['supplied'] = Variable<DateTime>(supplied.value);
    }
    if (quantity.present) {
      map['quantity'] = Variable<int>(quantity.value);
    }
    if (sold.present) {
      map['sold'] = Variable<int>(sold.value);
    }
    if (trashed.present) {
      map['trashed'] = Variable<int>(trashed.value);
    }
    if (price.present) {
      map['price'] = Variable<double>(price.value);
    }
    if (created.present) {
      map['created'] = Variable<DateTime>(created.value);
    }
    if (updated.present) {
      map['updated'] = Variable<DateTime>(updated.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SupplyModelsCompanion(')
          ..write('id: $id, ')
          ..write('plant: $plant, ')
          ..write('supplied: $supplied, ')
          ..write('quantity: $quantity, ')
          ..write('sold: $sold, ')
          ..write('trashed: $trashed, ')
          ..write('price: $price, ')
          ..write('created: $created, ')
          ..write('updated: $updated')
          ..write(')'))
        .toString();
  }
}

class $SupplyModelsTable extends SupplyModels
    with TableInfo<$SupplyModelsTable, SupplyModel> {
  final GeneratedDatabase _db;
  final String _alias;
  $SupplyModelsTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _plantMeta = const VerificationMeta('plant');
  GeneratedIntColumn _plant;
  @override
  GeneratedIntColumn get plant => _plant ??= _constructPlant();
  GeneratedIntColumn _constructPlant() {
    return GeneratedIntColumn('plant', $tableName, false,
        $customConstraints: 'REFERENCES plants(id)');
  }

  final VerificationMeta _suppliedMeta = const VerificationMeta('supplied');
  GeneratedDateTimeColumn _supplied;
  @override
  GeneratedDateTimeColumn get supplied => _supplied ??= _constructSupplied();
  GeneratedDateTimeColumn _constructSupplied() {
    return GeneratedDateTimeColumn(
      'supplied',
      $tableName,
      false,
    );
  }

  final VerificationMeta _quantityMeta = const VerificationMeta('quantity');
  GeneratedIntColumn _quantity;
  @override
  GeneratedIntColumn get quantity => _quantity ??= _constructQuantity();
  GeneratedIntColumn _constructQuantity() {
    return GeneratedIntColumn(
      'quantity',
      $tableName,
      false,
    );
  }

  final VerificationMeta _soldMeta = const VerificationMeta('sold');
  GeneratedIntColumn _sold;
  @override
  GeneratedIntColumn get sold => _sold ??= _constructSold();
  GeneratedIntColumn _constructSold() {
    return GeneratedIntColumn('sold', $tableName, false,
        defaultValue: Constant(0));
  }

  final VerificationMeta _trashedMeta = const VerificationMeta('trashed');
  GeneratedIntColumn _trashed;
  @override
  GeneratedIntColumn get trashed => _trashed ??= _constructTrashed();
  GeneratedIntColumn _constructTrashed() {
    return GeneratedIntColumn('trashed', $tableName, false,
        defaultValue: Constant(0));
  }

  final VerificationMeta _priceMeta = const VerificationMeta('price');
  GeneratedRealColumn _price;
  @override
  GeneratedRealColumn get price => _price ??= _constructPrice();
  GeneratedRealColumn _constructPrice() {
    return GeneratedRealColumn(
      'price',
      $tableName,
      false,
    );
  }

  final VerificationMeta _createdMeta = const VerificationMeta('created');
  GeneratedDateTimeColumn _created;
  @override
  GeneratedDateTimeColumn get created => _created ??= _constructCreated();
  GeneratedDateTimeColumn _constructCreated() {
    return GeneratedDateTimeColumn(
      'created',
      $tableName,
      false,
    )..clientDefault = () => DateTime.now();
  }

  final VerificationMeta _updatedMeta = const VerificationMeta('updated');
  GeneratedDateTimeColumn _updated;
  @override
  GeneratedDateTimeColumn get updated => _updated ??= _constructUpdated();
  GeneratedDateTimeColumn _constructUpdated() {
    return GeneratedDateTimeColumn(
      'updated',
      $tableName,
      false,
    )..clientDefault = () => DateTime.now();
  }

  @override
  List<GeneratedColumn> get $columns =>
      [id, plant, supplied, quantity, sold, trashed, price, created, updated];
  @override
  $SupplyModelsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'supply_models';
  @override
  final String actualTableName = 'supply_models';
  @override
  VerificationContext validateIntegrity(Insertable<SupplyModel> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('plant')) {
      context.handle(
          _plantMeta, plant.isAcceptableOrUnknown(data['plant'], _plantMeta));
    } else if (isInserting) {
      context.missing(_plantMeta);
    }
    if (data.containsKey('supplied')) {
      context.handle(_suppliedMeta,
          supplied.isAcceptableOrUnknown(data['supplied'], _suppliedMeta));
    } else if (isInserting) {
      context.missing(_suppliedMeta);
    }
    if (data.containsKey('quantity')) {
      context.handle(_quantityMeta,
          quantity.isAcceptableOrUnknown(data['quantity'], _quantityMeta));
    } else if (isInserting) {
      context.missing(_quantityMeta);
    }
    if (data.containsKey('sold')) {
      context.handle(
          _soldMeta, sold.isAcceptableOrUnknown(data['sold'], _soldMeta));
    }
    if (data.containsKey('trashed')) {
      context.handle(_trashedMeta,
          trashed.isAcceptableOrUnknown(data['trashed'], _trashedMeta));
    }
    if (data.containsKey('price')) {
      context.handle(
          _priceMeta, price.isAcceptableOrUnknown(data['price'], _priceMeta));
    } else if (isInserting) {
      context.missing(_priceMeta);
    }
    if (data.containsKey('created')) {
      context.handle(_createdMeta,
          created.isAcceptableOrUnknown(data['created'], _createdMeta));
    }
    if (data.containsKey('updated')) {
      context.handle(_updatedMeta,
          updated.isAcceptableOrUnknown(data['updated'], _updatedMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  SupplyModel map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return SupplyModel.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $SupplyModelsTable createAlias(String alias) {
    return $SupplyModelsTable(_db, alias);
  }
}

abstract class _$Database extends GeneratedDatabase {
  _$Database(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $PlantModelsTable _plantModels;
  $PlantModelsTable get plantModels => _plantModels ??= $PlantModelsTable(this);
  $PlantModelImagesTable _plantModelImages;
  $PlantModelImagesTable get plantModelImages =>
      _plantModelImages ??= $PlantModelImagesTable(this);
  $SupplyModelsTable _supplyModels;
  $SupplyModelsTable get supplyModels =>
      _supplyModels ??= $SupplyModelsTable(this);
  PlantsDao _plantsDao;
  PlantsDao get plantsDao => _plantsDao ??= PlantsDao(this as Database);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [plantModels, plantModelImages, supplyModels];
}
