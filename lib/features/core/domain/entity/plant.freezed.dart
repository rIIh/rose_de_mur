// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'plant.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$PlantTearOff {
  const _$PlantTearOff();

// ignore: unused_element
  _Default call(String name, String description, List<Uint8List> images) {
    return _Default(
      name,
      description,
      images,
    );
  }

// ignore: unused_element
  PlantWithMeta withMeta(
      String name, String description, List<Uint8List> images,
      {String id, DateTime created, DateTime updated}) {
    return PlantWithMeta(
      name,
      description,
      images,
      id: id,
      created: created,
      updated: updated,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Plant = _$PlantTearOff();

/// @nodoc
mixin _$Plant {
  String get name;
  String get description;
  List<Uint8List> get images;

  @optionalTypeArgs
  TResult when<TResult extends Object>(
    TResult $default(String name, String description, List<Uint8List> images), {
    @required
        TResult withMeta(
            String name,
            String description,
            List<Uint8List> images,
            String id,
            DateTime created,
            DateTime updated),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>(
    TResult $default(String name, String description, List<Uint8List> images), {
    TResult withMeta(String name, String description, List<Uint8List> images,
        String id, DateTime created, DateTime updated),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>(
    TResult $default(_Default value), {
    @required TResult withMeta(PlantWithMeta value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(_Default value), {
    TResult withMeta(PlantWithMeta value),
    @required TResult orElse(),
  });

  $PlantCopyWith<Plant> get copyWith;
}

/// @nodoc
abstract class $PlantCopyWith<$Res> {
  factory $PlantCopyWith(Plant value, $Res Function(Plant) then) =
      _$PlantCopyWithImpl<$Res>;
  $Res call({String name, String description, List<Uint8List> images});
}

/// @nodoc
class _$PlantCopyWithImpl<$Res> implements $PlantCopyWith<$Res> {
  _$PlantCopyWithImpl(this._value, this._then);

  final Plant _value;
  // ignore: unused_field
  final $Res Function(Plant) _then;

  @override
  $Res call({
    Object name = freezed,
    Object description = freezed,
    Object images = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      description:
          description == freezed ? _value.description : description as String,
      images: images == freezed ? _value.images : images as List<Uint8List>,
    ));
  }
}

/// @nodoc
abstract class _$DefaultCopyWith<$Res> implements $PlantCopyWith<$Res> {
  factory _$DefaultCopyWith(_Default value, $Res Function(_Default) then) =
      __$DefaultCopyWithImpl<$Res>;
  @override
  $Res call({String name, String description, List<Uint8List> images});
}

/// @nodoc
class __$DefaultCopyWithImpl<$Res> extends _$PlantCopyWithImpl<$Res>
    implements _$DefaultCopyWith<$Res> {
  __$DefaultCopyWithImpl(_Default _value, $Res Function(_Default) _then)
      : super(_value, (v) => _then(v as _Default));

  @override
  _Default get _value => super._value as _Default;

  @override
  $Res call({
    Object name = freezed,
    Object description = freezed,
    Object images = freezed,
  }) {
    return _then(_Default(
      name == freezed ? _value.name : name as String,
      description == freezed ? _value.description : description as String,
      images == freezed ? _value.images : images as List<Uint8List>,
    ));
  }
}

/// @nodoc
class _$_Default implements _Default {
  const _$_Default(this.name, this.description, this.images)
      : assert(name != null),
        assert(description != null),
        assert(images != null);

  @override
  final String name;
  @override
  final String description;
  @override
  final List<Uint8List> images;

  @override
  String toString() {
    return 'Plant(name: $name, description: $description, images: $images)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Default &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.images, images) ||
                const DeepCollectionEquality().equals(other.images, images)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(images);

  @override
  _$DefaultCopyWith<_Default> get copyWith =>
      __$DefaultCopyWithImpl<_Default>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>(
    TResult $default(String name, String description, List<Uint8List> images), {
    @required
        TResult withMeta(
            String name,
            String description,
            List<Uint8List> images,
            String id,
            DateTime created,
            DateTime updated),
  }) {
    assert($default != null);
    assert(withMeta != null);
    return $default(name, description, images);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>(
    TResult $default(String name, String description, List<Uint8List> images), {
    TResult withMeta(String name, String description, List<Uint8List> images,
        String id, DateTime created, DateTime updated),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(name, description, images);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>(
    TResult $default(_Default value), {
    @required TResult withMeta(PlantWithMeta value),
  }) {
    assert($default != null);
    assert(withMeta != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(_Default value), {
    TResult withMeta(PlantWithMeta value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _Default implements Plant {
  const factory _Default(
      String name, String description, List<Uint8List> images) = _$_Default;

  @override
  String get name;
  @override
  String get description;
  @override
  List<Uint8List> get images;
  @override
  _$DefaultCopyWith<_Default> get copyWith;
}

/// @nodoc
abstract class $PlantWithMetaCopyWith<$Res> implements $PlantCopyWith<$Res> {
  factory $PlantWithMetaCopyWith(
          PlantWithMeta value, $Res Function(PlantWithMeta) then) =
      _$PlantWithMetaCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      String description,
      List<Uint8List> images,
      String id,
      DateTime created,
      DateTime updated});
}

/// @nodoc
class _$PlantWithMetaCopyWithImpl<$Res> extends _$PlantCopyWithImpl<$Res>
    implements $PlantWithMetaCopyWith<$Res> {
  _$PlantWithMetaCopyWithImpl(
      PlantWithMeta _value, $Res Function(PlantWithMeta) _then)
      : super(_value, (v) => _then(v as PlantWithMeta));

  @override
  PlantWithMeta get _value => super._value as PlantWithMeta;

  @override
  $Res call({
    Object name = freezed,
    Object description = freezed,
    Object images = freezed,
    Object id = freezed,
    Object created = freezed,
    Object updated = freezed,
  }) {
    return _then(PlantWithMeta(
      name == freezed ? _value.name : name as String,
      description == freezed ? _value.description : description as String,
      images == freezed ? _value.images : images as List<Uint8List>,
      id: id == freezed ? _value.id : id as String,
      created: created == freezed ? _value.created : created as DateTime,
      updated: updated == freezed ? _value.updated : updated as DateTime,
    ));
  }
}

/// @nodoc
class _$PlantWithMeta implements PlantWithMeta {
  const _$PlantWithMeta(this.name, this.description, this.images,
      {this.id, this.created, this.updated})
      : assert(name != null),
        assert(description != null),
        assert(images != null);

  @override
  final String name;
  @override
  final String description;
  @override
  final List<Uint8List> images;
  @override
  final String id;
  @override
  final DateTime created;
  @override
  final DateTime updated;

  @override
  String toString() {
    return 'Plant.withMeta(name: $name, description: $description, images: $images, id: $id, created: $created, updated: $updated)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PlantWithMeta &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.images, images) ||
                const DeepCollectionEquality().equals(other.images, images)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.created, created) ||
                const DeepCollectionEquality()
                    .equals(other.created, created)) &&
            (identical(other.updated, updated) ||
                const DeepCollectionEquality().equals(other.updated, updated)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(images) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(created) ^
      const DeepCollectionEquality().hash(updated);

  @override
  $PlantWithMetaCopyWith<PlantWithMeta> get copyWith =>
      _$PlantWithMetaCopyWithImpl<PlantWithMeta>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>(
    TResult $default(String name, String description, List<Uint8List> images), {
    @required
        TResult withMeta(
            String name,
            String description,
            List<Uint8List> images,
            String id,
            DateTime created,
            DateTime updated),
  }) {
    assert($default != null);
    assert(withMeta != null);
    return withMeta(name, description, images, id, created, updated);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>(
    TResult $default(String name, String description, List<Uint8List> images), {
    TResult withMeta(String name, String description, List<Uint8List> images,
        String id, DateTime created, DateTime updated),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (withMeta != null) {
      return withMeta(name, description, images, id, created, updated);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>(
    TResult $default(_Default value), {
    @required TResult withMeta(PlantWithMeta value),
  }) {
    assert($default != null);
    assert(withMeta != null);
    return withMeta(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(_Default value), {
    TResult withMeta(PlantWithMeta value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (withMeta != null) {
      return withMeta(this);
    }
    return orElse();
  }
}

abstract class PlantWithMeta implements Plant {
  const factory PlantWithMeta(
      String name, String description, List<Uint8List> images,
      {String id, DateTime created, DateTime updated}) = _$PlantWithMeta;

  @override
  String get name;
  @override
  String get description;
  @override
  List<Uint8List> get images;
  String get id;
  DateTime get created;
  DateTime get updated;
  @override
  $PlantWithMetaCopyWith<PlantWithMeta> get copyWith;
}
