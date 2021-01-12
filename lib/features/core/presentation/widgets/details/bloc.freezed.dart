// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$DetailsEventTearOff {
  const _$DetailsEventTearOff();

// ignore: unused_element
  _Connect connect(PlantWithMeta plant) {
    return _Connect(
      plant,
    );
  }

// ignore: unused_element
  _Update update(Plant plant) {
    return _Update(
      plant,
    );
  }

// ignore: unused_element
  _UpdatePrice updatePrice(Supply supply, double price) {
    return _UpdatePrice(
      supply,
      price,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $DetailsEvent = _$DetailsEventTearOff();

/// @nodoc
mixin _$DetailsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult connect(PlantWithMeta plant),
    @required TResult update(Plant plant),
    @required TResult updatePrice(Supply supply, double price),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult connect(PlantWithMeta plant),
    TResult update(Plant plant),
    TResult updatePrice(Supply supply, double price),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult connect(_Connect value),
    @required TResult update(_Update value),
    @required TResult updatePrice(_UpdatePrice value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult connect(_Connect value),
    TResult update(_Update value),
    TResult updatePrice(_UpdatePrice value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $DetailsEventCopyWith<$Res> {
  factory $DetailsEventCopyWith(
          DetailsEvent value, $Res Function(DetailsEvent) then) =
      _$DetailsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$DetailsEventCopyWithImpl<$Res> implements $DetailsEventCopyWith<$Res> {
  _$DetailsEventCopyWithImpl(this._value, this._then);

  final DetailsEvent _value;
  // ignore: unused_field
  final $Res Function(DetailsEvent) _then;
}

/// @nodoc
abstract class _$ConnectCopyWith<$Res> {
  factory _$ConnectCopyWith(_Connect value, $Res Function(_Connect) then) =
      __$ConnectCopyWithImpl<$Res>;
  $Res call({PlantWithMeta plant});
}

/// @nodoc
class __$ConnectCopyWithImpl<$Res> extends _$DetailsEventCopyWithImpl<$Res>
    implements _$ConnectCopyWith<$Res> {
  __$ConnectCopyWithImpl(_Connect _value, $Res Function(_Connect) _then)
      : super(_value, (v) => _then(v as _Connect));

  @override
  _Connect get _value => super._value as _Connect;

  @override
  $Res call({
    Object plant = freezed,
  }) {
    return _then(_Connect(
      plant == freezed ? _value.plant : plant as PlantWithMeta,
    ));
  }
}

/// @nodoc
class _$_Connect implements _Connect {
  const _$_Connect(this.plant) : assert(plant != null);

  @override
  final PlantWithMeta plant;

  @override
  String toString() {
    return 'DetailsEvent.connect(plant: $plant)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Connect &&
            (identical(other.plant, plant) ||
                const DeepCollectionEquality().equals(other.plant, plant)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(plant);

  @override
  _$ConnectCopyWith<_Connect> get copyWith =>
      __$ConnectCopyWithImpl<_Connect>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult connect(PlantWithMeta plant),
    @required TResult update(Plant plant),
    @required TResult updatePrice(Supply supply, double price),
  }) {
    assert(connect != null);
    assert(update != null);
    assert(updatePrice != null);
    return connect(plant);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult connect(PlantWithMeta plant),
    TResult update(Plant plant),
    TResult updatePrice(Supply supply, double price),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (connect != null) {
      return connect(plant);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult connect(_Connect value),
    @required TResult update(_Update value),
    @required TResult updatePrice(_UpdatePrice value),
  }) {
    assert(connect != null);
    assert(update != null);
    assert(updatePrice != null);
    return connect(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult connect(_Connect value),
    TResult update(_Update value),
    TResult updatePrice(_UpdatePrice value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (connect != null) {
      return connect(this);
    }
    return orElse();
  }
}

abstract class _Connect implements DetailsEvent {
  const factory _Connect(PlantWithMeta plant) = _$_Connect;

  PlantWithMeta get plant;
  _$ConnectCopyWith<_Connect> get copyWith;
}

/// @nodoc
abstract class _$UpdateCopyWith<$Res> {
  factory _$UpdateCopyWith(_Update value, $Res Function(_Update) then) =
      __$UpdateCopyWithImpl<$Res>;
  $Res call({Plant plant});

  $PlantCopyWith<$Res> get plant;
}

/// @nodoc
class __$UpdateCopyWithImpl<$Res> extends _$DetailsEventCopyWithImpl<$Res>
    implements _$UpdateCopyWith<$Res> {
  __$UpdateCopyWithImpl(_Update _value, $Res Function(_Update) _then)
      : super(_value, (v) => _then(v as _Update));

  @override
  _Update get _value => super._value as _Update;

  @override
  $Res call({
    Object plant = freezed,
  }) {
    return _then(_Update(
      plant == freezed ? _value.plant : plant as Plant,
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
class _$_Update implements _Update {
  const _$_Update(this.plant) : assert(plant != null);

  @override
  final Plant plant;

  @override
  String toString() {
    return 'DetailsEvent.update(plant: $plant)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Update &&
            (identical(other.plant, plant) ||
                const DeepCollectionEquality().equals(other.plant, plant)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(plant);

  @override
  _$UpdateCopyWith<_Update> get copyWith =>
      __$UpdateCopyWithImpl<_Update>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult connect(PlantWithMeta plant),
    @required TResult update(Plant plant),
    @required TResult updatePrice(Supply supply, double price),
  }) {
    assert(connect != null);
    assert(update != null);
    assert(updatePrice != null);
    return update(plant);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult connect(PlantWithMeta plant),
    TResult update(Plant plant),
    TResult updatePrice(Supply supply, double price),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (update != null) {
      return update(plant);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult connect(_Connect value),
    @required TResult update(_Update value),
    @required TResult updatePrice(_UpdatePrice value),
  }) {
    assert(connect != null);
    assert(update != null);
    assert(updatePrice != null);
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult connect(_Connect value),
    TResult update(_Update value),
    TResult updatePrice(_UpdatePrice value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class _Update implements DetailsEvent {
  const factory _Update(Plant plant) = _$_Update;

  Plant get plant;
  _$UpdateCopyWith<_Update> get copyWith;
}

/// @nodoc
abstract class _$UpdatePriceCopyWith<$Res> {
  factory _$UpdatePriceCopyWith(
          _UpdatePrice value, $Res Function(_UpdatePrice) then) =
      __$UpdatePriceCopyWithImpl<$Res>;
  $Res call({Supply supply, double price});

  $SupplyCopyWith<$Res> get supply;
}

/// @nodoc
class __$UpdatePriceCopyWithImpl<$Res> extends _$DetailsEventCopyWithImpl<$Res>
    implements _$UpdatePriceCopyWith<$Res> {
  __$UpdatePriceCopyWithImpl(
      _UpdatePrice _value, $Res Function(_UpdatePrice) _then)
      : super(_value, (v) => _then(v as _UpdatePrice));

  @override
  _UpdatePrice get _value => super._value as _UpdatePrice;

  @override
  $Res call({
    Object supply = freezed,
    Object price = freezed,
  }) {
    return _then(_UpdatePrice(
      supply == freezed ? _value.supply : supply as Supply,
      price == freezed ? _value.price : price as double,
    ));
  }

  @override
  $SupplyCopyWith<$Res> get supply {
    if (_value.supply == null) {
      return null;
    }
    return $SupplyCopyWith<$Res>(_value.supply, (value) {
      return _then(_value.copyWith(supply: value));
    });
  }
}

/// @nodoc
class _$_UpdatePrice implements _UpdatePrice {
  const _$_UpdatePrice(this.supply, this.price)
      : assert(supply != null),
        assert(price != null);

  @override
  final Supply supply;
  @override
  final double price;

  @override
  String toString() {
    return 'DetailsEvent.updatePrice(supply: $supply, price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdatePrice &&
            (identical(other.supply, supply) ||
                const DeepCollectionEquality().equals(other.supply, supply)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(supply) ^
      const DeepCollectionEquality().hash(price);

  @override
  _$UpdatePriceCopyWith<_UpdatePrice> get copyWith =>
      __$UpdatePriceCopyWithImpl<_UpdatePrice>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult connect(PlantWithMeta plant),
    @required TResult update(Plant plant),
    @required TResult updatePrice(Supply supply, double price),
  }) {
    assert(connect != null);
    assert(update != null);
    assert(updatePrice != null);
    return updatePrice(supply, price);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult connect(PlantWithMeta plant),
    TResult update(Plant plant),
    TResult updatePrice(Supply supply, double price),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (updatePrice != null) {
      return updatePrice(supply, price);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult connect(_Connect value),
    @required TResult update(_Update value),
    @required TResult updatePrice(_UpdatePrice value),
  }) {
    assert(connect != null);
    assert(update != null);
    assert(updatePrice != null);
    return updatePrice(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult connect(_Connect value),
    TResult update(_Update value),
    TResult updatePrice(_UpdatePrice value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (updatePrice != null) {
      return updatePrice(this);
    }
    return orElse();
  }
}

abstract class _UpdatePrice implements DetailsEvent {
  const factory _UpdatePrice(Supply supply, double price) = _$_UpdatePrice;

  Supply get supply;
  double get price;
  _$UpdatePriceCopyWith<_UpdatePrice> get copyWith;
}

/// @nodoc
class _$DetailsStateTearOff {
  const _$DetailsStateTearOff();

// ignore: unused_element
  _None none() {
    return const _None();
  }

// ignore: unused_element
  _HasData hasData(Stream<Plant> plant, Stream<Iterable<Supply>> supplies) {
    return _HasData(
      plant,
      supplies,
    );
  }

// ignore: unused_element
  _Failed failed(Failure failure) {
    return _Failed(
      failure,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $DetailsState = _$DetailsStateTearOff();

/// @nodoc
mixin _$DetailsState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult none(),
    @required
        TResult hasData(Stream<Plant> plant, Stream<Iterable<Supply>> supplies),
    @required TResult failed(Failure failure),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult none(),
    TResult hasData(Stream<Plant> plant, Stream<Iterable<Supply>> supplies),
    TResult failed(Failure failure),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult none(_None value),
    @required TResult hasData(_HasData value),
    @required TResult failed(_Failed value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult none(_None value),
    TResult hasData(_HasData value),
    TResult failed(_Failed value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $DetailsStateCopyWith<$Res> {
  factory $DetailsStateCopyWith(
          DetailsState value, $Res Function(DetailsState) then) =
      _$DetailsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$DetailsStateCopyWithImpl<$Res> implements $DetailsStateCopyWith<$Res> {
  _$DetailsStateCopyWithImpl(this._value, this._then);

  final DetailsState _value;
  // ignore: unused_field
  final $Res Function(DetailsState) _then;
}

/// @nodoc
abstract class _$NoneCopyWith<$Res> {
  factory _$NoneCopyWith(_None value, $Res Function(_None) then) =
      __$NoneCopyWithImpl<$Res>;
}

/// @nodoc
class __$NoneCopyWithImpl<$Res> extends _$DetailsStateCopyWithImpl<$Res>
    implements _$NoneCopyWith<$Res> {
  __$NoneCopyWithImpl(_None _value, $Res Function(_None) _then)
      : super(_value, (v) => _then(v as _None));

  @override
  _None get _value => super._value as _None;
}

/// @nodoc
class _$_None implements _None {
  const _$_None();

  @override
  String toString() {
    return 'DetailsState.none()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _None);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult none(),
    @required
        TResult hasData(Stream<Plant> plant, Stream<Iterable<Supply>> supplies),
    @required TResult failed(Failure failure),
  }) {
    assert(none != null);
    assert(hasData != null);
    assert(failed != null);
    return none();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult none(),
    TResult hasData(Stream<Plant> plant, Stream<Iterable<Supply>> supplies),
    TResult failed(Failure failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (none != null) {
      return none();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult none(_None value),
    @required TResult hasData(_HasData value),
    @required TResult failed(_Failed value),
  }) {
    assert(none != null);
    assert(hasData != null);
    assert(failed != null);
    return none(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult none(_None value),
    TResult hasData(_HasData value),
    TResult failed(_Failed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (none != null) {
      return none(this);
    }
    return orElse();
  }
}

abstract class _None implements DetailsState {
  const factory _None() = _$_None;
}

/// @nodoc
abstract class _$HasDataCopyWith<$Res> {
  factory _$HasDataCopyWith(_HasData value, $Res Function(_HasData) then) =
      __$HasDataCopyWithImpl<$Res>;
  $Res call({Stream<Plant> plant, Stream<Iterable<Supply>> supplies});
}

/// @nodoc
class __$HasDataCopyWithImpl<$Res> extends _$DetailsStateCopyWithImpl<$Res>
    implements _$HasDataCopyWith<$Res> {
  __$HasDataCopyWithImpl(_HasData _value, $Res Function(_HasData) _then)
      : super(_value, (v) => _then(v as _HasData));

  @override
  _HasData get _value => super._value as _HasData;

  @override
  $Res call({
    Object plant = freezed,
    Object supplies = freezed,
  }) {
    return _then(_HasData(
      plant == freezed ? _value.plant : plant as Stream<Plant>,
      supplies == freezed
          ? _value.supplies
          : supplies as Stream<Iterable<Supply>>,
    ));
  }
}

/// @nodoc
class _$_HasData implements _HasData {
  const _$_HasData(this.plant, this.supplies)
      : assert(plant != null),
        assert(supplies != null);

  @override
  final Stream<Plant> plant;
  @override
  final Stream<Iterable<Supply>> supplies;

  @override
  String toString() {
    return 'DetailsState.hasData(plant: $plant, supplies: $supplies)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HasData &&
            (identical(other.plant, plant) ||
                const DeepCollectionEquality().equals(other.plant, plant)) &&
            (identical(other.supplies, supplies) ||
                const DeepCollectionEquality()
                    .equals(other.supplies, supplies)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(plant) ^
      const DeepCollectionEquality().hash(supplies);

  @override
  _$HasDataCopyWith<_HasData> get copyWith =>
      __$HasDataCopyWithImpl<_HasData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult none(),
    @required
        TResult hasData(Stream<Plant> plant, Stream<Iterable<Supply>> supplies),
    @required TResult failed(Failure failure),
  }) {
    assert(none != null);
    assert(hasData != null);
    assert(failed != null);
    return hasData(plant, supplies);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult none(),
    TResult hasData(Stream<Plant> plant, Stream<Iterable<Supply>> supplies),
    TResult failed(Failure failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (hasData != null) {
      return hasData(plant, supplies);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult none(_None value),
    @required TResult hasData(_HasData value),
    @required TResult failed(_Failed value),
  }) {
    assert(none != null);
    assert(hasData != null);
    assert(failed != null);
    return hasData(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult none(_None value),
    TResult hasData(_HasData value),
    TResult failed(_Failed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (hasData != null) {
      return hasData(this);
    }
    return orElse();
  }
}

abstract class _HasData implements DetailsState {
  const factory _HasData(
      Stream<Plant> plant, Stream<Iterable<Supply>> supplies) = _$_HasData;

  Stream<Plant> get plant;
  Stream<Iterable<Supply>> get supplies;
  _$HasDataCopyWith<_HasData> get copyWith;
}

/// @nodoc
abstract class _$FailedCopyWith<$Res> {
  factory _$FailedCopyWith(_Failed value, $Res Function(_Failed) then) =
      __$FailedCopyWithImpl<$Res>;
  $Res call({Failure failure});
}

/// @nodoc
class __$FailedCopyWithImpl<$Res> extends _$DetailsStateCopyWithImpl<$Res>
    implements _$FailedCopyWith<$Res> {
  __$FailedCopyWithImpl(_Failed _value, $Res Function(_Failed) _then)
      : super(_value, (v) => _then(v as _Failed));

  @override
  _Failed get _value => super._value as _Failed;

  @override
  $Res call({
    Object failure = freezed,
  }) {
    return _then(_Failed(
      failure == freezed ? _value.failure : failure as Failure,
    ));
  }
}

/// @nodoc
class _$_Failed implements _Failed {
  const _$_Failed(this.failure) : assert(failure != null);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'DetailsState.failed(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Failed &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @override
  _$FailedCopyWith<_Failed> get copyWith =>
      __$FailedCopyWithImpl<_Failed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult none(),
    @required
        TResult hasData(Stream<Plant> plant, Stream<Iterable<Supply>> supplies),
    @required TResult failed(Failure failure),
  }) {
    assert(none != null);
    assert(hasData != null);
    assert(failed != null);
    return failed(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult none(),
    TResult hasData(Stream<Plant> plant, Stream<Iterable<Supply>> supplies),
    TResult failed(Failure failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (failed != null) {
      return failed(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult none(_None value),
    @required TResult hasData(_HasData value),
    @required TResult failed(_Failed value),
  }) {
    assert(none != null);
    assert(hasData != null);
    assert(failed != null);
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult none(_None value),
    TResult hasData(_HasData value),
    TResult failed(_Failed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _Failed implements DetailsState {
  const factory _Failed(Failure failure) = _$_Failed;

  Failure get failure;
  _$FailedCopyWith<_Failed> get copyWith;
}
