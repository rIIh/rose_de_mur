// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'supply.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SupplyTearOff {
  const _$SupplyTearOff();

// ignore: unused_element
  _Default call(@nullable Plant plant, @nullable DateTime supplied,
      int quantity, int sold, int trashed, double price) {
    return _Default(
      plant,
      supplied,
      quantity,
      sold,
      trashed,
      price,
    );
  }

// ignore: unused_element
  _WithMeta withMeta(Plant plant, DateTime supplied, int quantity, int sold,
      int trashed, double price,
      {String id, DateTime created, DateTime updated}) {
    return _WithMeta(
      plant,
      supplied,
      quantity,
      sold,
      trashed,
      price,
      id: id,
      created: created,
      updated: updated,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Supply = _$SupplyTearOff();

/// @nodoc
mixin _$Supply {
  @nullable
  Plant get plant;
  @nullable
  DateTime get supplied;
  int get quantity;
  int get sold;
  int get trashed;
  double get price;

  @optionalTypeArgs
  TResult when<TResult extends Object>(
    TResult $default(@nullable Plant plant, @nullable DateTime supplied,
        int quantity, int sold, int trashed, double price), {
    @required
        TResult withMeta(
            Plant plant,
            DateTime supplied,
            int quantity,
            int sold,
            int trashed,
            double price,
            String id,
            DateTime created,
            DateTime updated),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>(
    TResult $default(@nullable Plant plant, @nullable DateTime supplied,
        int quantity, int sold, int trashed, double price), {
    TResult withMeta(
        Plant plant,
        DateTime supplied,
        int quantity,
        int sold,
        int trashed,
        double price,
        String id,
        DateTime created,
        DateTime updated),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>(
    TResult $default(_Default value), {
    @required TResult withMeta(_WithMeta value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(_Default value), {
    TResult withMeta(_WithMeta value),
    @required TResult orElse(),
  });

  $SupplyCopyWith<Supply> get copyWith;
}

/// @nodoc
abstract class $SupplyCopyWith<$Res> {
  factory $SupplyCopyWith(Supply value, $Res Function(Supply) then) =
      _$SupplyCopyWithImpl<$Res>;
  $Res call(
      {@nullable Plant plant,
      @nullable DateTime supplied,
      int quantity,
      int sold,
      int trashed,
      double price});

  $PlantCopyWith<$Res> get plant;
}

/// @nodoc
class _$SupplyCopyWithImpl<$Res> implements $SupplyCopyWith<$Res> {
  _$SupplyCopyWithImpl(this._value, this._then);

  final Supply _value;
  // ignore: unused_field
  final $Res Function(Supply) _then;

  @override
  $Res call({
    Object plant = freezed,
    Object supplied = freezed,
    Object quantity = freezed,
    Object sold = freezed,
    Object trashed = freezed,
    Object price = freezed,
  }) {
    return _then(_value.copyWith(
      plant: plant == freezed ? _value.plant : plant as Plant,
      supplied: supplied == freezed ? _value.supplied : supplied as DateTime,
      quantity: quantity == freezed ? _value.quantity : quantity as int,
      sold: sold == freezed ? _value.sold : sold as int,
      trashed: trashed == freezed ? _value.trashed : trashed as int,
      price: price == freezed ? _value.price : price as double,
    ));
  }

  @override
  $PlantCopyWith<$Res> get plant {
    if (_value.plant == null) {
      return null;
    }
    return $PlantCopyWith<$Res>(_value.plant, (value) {
      return _then(_value.copyWith(plant: value));
    });
  }
}

/// @nodoc
abstract class _$DefaultCopyWith<$Res> implements $SupplyCopyWith<$Res> {
  factory _$DefaultCopyWith(_Default value, $Res Function(_Default) then) =
      __$DefaultCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable Plant plant,
      @nullable DateTime supplied,
      int quantity,
      int sold,
      int trashed,
      double price});

  @override
  $PlantCopyWith<$Res> get plant;
}

/// @nodoc
class __$DefaultCopyWithImpl<$Res> extends _$SupplyCopyWithImpl<$Res>
    implements _$DefaultCopyWith<$Res> {
  __$DefaultCopyWithImpl(_Default _value, $Res Function(_Default) _then)
      : super(_value, (v) => _then(v as _Default));

  @override
  _Default get _value => super._value as _Default;

  @override
  $Res call({
    Object plant = freezed,
    Object supplied = freezed,
    Object quantity = freezed,
    Object sold = freezed,
    Object trashed = freezed,
    Object price = freezed,
  }) {
    return _then(_Default(
      plant == freezed ? _value.plant : plant as Plant,
      supplied == freezed ? _value.supplied : supplied as DateTime,
      quantity == freezed ? _value.quantity : quantity as int,
      sold == freezed ? _value.sold : sold as int,
      trashed == freezed ? _value.trashed : trashed as int,
      price == freezed ? _value.price : price as double,
    ));
  }
}

/// @nodoc
class _$_Default implements _Default {
  const _$_Default(@nullable this.plant, @nullable this.supplied, this.quantity,
      this.sold, this.trashed, this.price)
      : assert(quantity != null),
        assert(sold != null),
        assert(trashed != null),
        assert(price != null);

  @override
  @nullable
  final Plant plant;
  @override
  @nullable
  final DateTime supplied;
  @override
  final int quantity;
  @override
  final int sold;
  @override
  final int trashed;
  @override
  final double price;

  @override
  String toString() {
    return 'Supply(plant: $plant, supplied: $supplied, quantity: $quantity, sold: $sold, trashed: $trashed, price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Default &&
            (identical(other.plant, plant) ||
                const DeepCollectionEquality().equals(other.plant, plant)) &&
            (identical(other.supplied, supplied) ||
                const DeepCollectionEquality()
                    .equals(other.supplied, supplied)) &&
            (identical(other.quantity, quantity) ||
                const DeepCollectionEquality()
                    .equals(other.quantity, quantity)) &&
            (identical(other.sold, sold) ||
                const DeepCollectionEquality().equals(other.sold, sold)) &&
            (identical(other.trashed, trashed) ||
                const DeepCollectionEquality()
                    .equals(other.trashed, trashed)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(plant) ^
      const DeepCollectionEquality().hash(supplied) ^
      const DeepCollectionEquality().hash(quantity) ^
      const DeepCollectionEquality().hash(sold) ^
      const DeepCollectionEquality().hash(trashed) ^
      const DeepCollectionEquality().hash(price);

  @override
  _$DefaultCopyWith<_Default> get copyWith =>
      __$DefaultCopyWithImpl<_Default>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>(
    TResult $default(@nullable Plant plant, @nullable DateTime supplied,
        int quantity, int sold, int trashed, double price), {
    @required
        TResult withMeta(
            Plant plant,
            DateTime supplied,
            int quantity,
            int sold,
            int trashed,
            double price,
            String id,
            DateTime created,
            DateTime updated),
  }) {
    assert($default != null);
    assert(withMeta != null);
    return $default(plant, supplied, quantity, sold, trashed, price);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>(
    TResult $default(@nullable Plant plant, @nullable DateTime supplied,
        int quantity, int sold, int trashed, double price), {
    TResult withMeta(
        Plant plant,
        DateTime supplied,
        int quantity,
        int sold,
        int trashed,
        double price,
        String id,
        DateTime created,
        DateTime updated),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(plant, supplied, quantity, sold, trashed, price);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>(
    TResult $default(_Default value), {
    @required TResult withMeta(_WithMeta value),
  }) {
    assert($default != null);
    assert(withMeta != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(_Default value), {
    TResult withMeta(_WithMeta value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _Default implements Supply {
  const factory _Default(@nullable Plant plant, @nullable DateTime supplied,
      int quantity, int sold, int trashed, double price) = _$_Default;

  @override
  @nullable
  Plant get plant;
  @override
  @nullable
  DateTime get supplied;
  @override
  int get quantity;
  @override
  int get sold;
  @override
  int get trashed;
  @override
  double get price;
  @override
  _$DefaultCopyWith<_Default> get copyWith;
}

/// @nodoc
abstract class _$WithMetaCopyWith<$Res> implements $SupplyCopyWith<$Res> {
  factory _$WithMetaCopyWith(_WithMeta value, $Res Function(_WithMeta) then) =
      __$WithMetaCopyWithImpl<$Res>;
  @override
  $Res call(
      {Plant plant,
      DateTime supplied,
      int quantity,
      int sold,
      int trashed,
      double price,
      String id,
      DateTime created,
      DateTime updated});

  @override
  $PlantCopyWith<$Res> get plant;
}

/// @nodoc
class __$WithMetaCopyWithImpl<$Res> extends _$SupplyCopyWithImpl<$Res>
    implements _$WithMetaCopyWith<$Res> {
  __$WithMetaCopyWithImpl(_WithMeta _value, $Res Function(_WithMeta) _then)
      : super(_value, (v) => _then(v as _WithMeta));

  @override
  _WithMeta get _value => super._value as _WithMeta;

  @override
  $Res call({
    Object plant = freezed,
    Object supplied = freezed,
    Object quantity = freezed,
    Object sold = freezed,
    Object trashed = freezed,
    Object price = freezed,
    Object id = freezed,
    Object created = freezed,
    Object updated = freezed,
  }) {
    return _then(_WithMeta(
      plant == freezed ? _value.plant : plant as Plant,
      supplied == freezed ? _value.supplied : supplied as DateTime,
      quantity == freezed ? _value.quantity : quantity as int,
      sold == freezed ? _value.sold : sold as int,
      trashed == freezed ? _value.trashed : trashed as int,
      price == freezed ? _value.price : price as double,
      id: id == freezed ? _value.id : id as String,
      created: created == freezed ? _value.created : created as DateTime,
      updated: updated == freezed ? _value.updated : updated as DateTime,
    ));
  }
}

/// @nodoc
class _$_WithMeta implements _WithMeta {
  const _$_WithMeta(this.plant, this.supplied, this.quantity, this.sold,
      this.trashed, this.price,
      {this.id, this.created, this.updated})
      : assert(plant != null),
        assert(supplied != null),
        assert(quantity != null),
        assert(sold != null),
        assert(trashed != null),
        assert(price != null);

  @override
  final Plant plant;
  @override
  final DateTime supplied;
  @override
  final int quantity;
  @override
  final int sold;
  @override
  final int trashed;
  @override
  final double price;
  @override
  final String id;
  @override
  final DateTime created;
  @override
  final DateTime updated;

  @override
  String toString() {
    return 'Supply.withMeta(plant: $plant, supplied: $supplied, quantity: $quantity, sold: $sold, trashed: $trashed, price: $price, id: $id, created: $created, updated: $updated)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WithMeta &&
            (identical(other.plant, plant) ||
                const DeepCollectionEquality().equals(other.plant, plant)) &&
            (identical(other.supplied, supplied) ||
                const DeepCollectionEquality()
                    .equals(other.supplied, supplied)) &&
            (identical(other.quantity, quantity) ||
                const DeepCollectionEquality()
                    .equals(other.quantity, quantity)) &&
            (identical(other.sold, sold) ||
                const DeepCollectionEquality().equals(other.sold, sold)) &&
            (identical(other.trashed, trashed) ||
                const DeepCollectionEquality()
                    .equals(other.trashed, trashed)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
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
      const DeepCollectionEquality().hash(plant) ^
      const DeepCollectionEquality().hash(supplied) ^
      const DeepCollectionEquality().hash(quantity) ^
      const DeepCollectionEquality().hash(sold) ^
      const DeepCollectionEquality().hash(trashed) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(created) ^
      const DeepCollectionEquality().hash(updated);

  @override
  _$WithMetaCopyWith<_WithMeta> get copyWith =>
      __$WithMetaCopyWithImpl<_WithMeta>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>(
    TResult $default(@nullable Plant plant, @nullable DateTime supplied,
        int quantity, int sold, int trashed, double price), {
    @required
        TResult withMeta(
            Plant plant,
            DateTime supplied,
            int quantity,
            int sold,
            int trashed,
            double price,
            String id,
            DateTime created,
            DateTime updated),
  }) {
    assert($default != null);
    assert(withMeta != null);
    return withMeta(
        plant, supplied, quantity, sold, trashed, price, id, created, updated);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>(
    TResult $default(@nullable Plant plant, @nullable DateTime supplied,
        int quantity, int sold, int trashed, double price), {
    TResult withMeta(
        Plant plant,
        DateTime supplied,
        int quantity,
        int sold,
        int trashed,
        double price,
        String id,
        DateTime created,
        DateTime updated),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (withMeta != null) {
      return withMeta(plant, supplied, quantity, sold, trashed, price, id,
          created, updated);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>(
    TResult $default(_Default value), {
    @required TResult withMeta(_WithMeta value),
  }) {
    assert($default != null);
    assert(withMeta != null);
    return withMeta(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(_Default value), {
    TResult withMeta(_WithMeta value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (withMeta != null) {
      return withMeta(this);
    }
    return orElse();
  }
}

abstract class _WithMeta implements Supply {
  const factory _WithMeta(Plant plant, DateTime supplied, int quantity,
      int sold, int trashed, double price,
      {String id, DateTime created, DateTime updated}) = _$_WithMeta;

  @override
  Plant get plant;
  @override
  DateTime get supplied;
  @override
  int get quantity;
  @override
  int get sold;
  @override
  int get trashed;
  @override
  double get price;
  String get id;
  DateTime get created;
  DateTime get updated;
  @override
  _$WithMetaCopyWith<_WithMeta> get copyWith;
}
