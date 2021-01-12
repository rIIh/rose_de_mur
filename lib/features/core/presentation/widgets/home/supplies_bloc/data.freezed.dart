// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SuppliesEventTearOff {
  const _$SuppliesEventTearOff();

// ignore: unused_element
  _Fetch watch() {
    return const _Fetch();
  }

// ignore: unused_element
  _Remove remove(Supply supply) {
    return _Remove(
      supply,
    );
  }

// ignore: unused_element
  _RemoveMany removeMany(Iterable<Supply> supplies) {
    return _RemoveMany(
      supplies,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SuppliesEvent = _$SuppliesEventTearOff();

/// @nodoc
mixin _$SuppliesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watch(),
    @required TResult remove(Supply supply),
    @required TResult removeMany(Iterable<Supply> supplies),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watch(),
    TResult remove(Supply supply),
    TResult removeMany(Iterable<Supply> supplies),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watch(_Fetch value),
    @required TResult remove(_Remove value),
    @required TResult removeMany(_RemoveMany value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watch(_Fetch value),
    TResult remove(_Remove value),
    TResult removeMany(_RemoveMany value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $SuppliesEventCopyWith<$Res> {
  factory $SuppliesEventCopyWith(
          SuppliesEvent value, $Res Function(SuppliesEvent) then) =
      _$SuppliesEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SuppliesEventCopyWithImpl<$Res>
    implements $SuppliesEventCopyWith<$Res> {
  _$SuppliesEventCopyWithImpl(this._value, this._then);

  final SuppliesEvent _value;
  // ignore: unused_field
  final $Res Function(SuppliesEvent) _then;
}

/// @nodoc
abstract class _$FetchCopyWith<$Res> {
  factory _$FetchCopyWith(_Fetch value, $Res Function(_Fetch) then) =
      __$FetchCopyWithImpl<$Res>;
}

/// @nodoc
class __$FetchCopyWithImpl<$Res> extends _$SuppliesEventCopyWithImpl<$Res>
    implements _$FetchCopyWith<$Res> {
  __$FetchCopyWithImpl(_Fetch _value, $Res Function(_Fetch) _then)
      : super(_value, (v) => _then(v as _Fetch));

  @override
  _Fetch get _value => super._value as _Fetch;
}

/// @nodoc
class _$_Fetch implements _Fetch {
  const _$_Fetch();

  @override
  String toString() {
    return 'SuppliesEvent.watch()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Fetch);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watch(),
    @required TResult remove(Supply supply),
    @required TResult removeMany(Iterable<Supply> supplies),
  }) {
    assert(watch != null);
    assert(remove != null);
    assert(removeMany != null);
    return watch();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watch(),
    TResult remove(Supply supply),
    TResult removeMany(Iterable<Supply> supplies),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (watch != null) {
      return watch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watch(_Fetch value),
    @required TResult remove(_Remove value),
    @required TResult removeMany(_RemoveMany value),
  }) {
    assert(watch != null);
    assert(remove != null);
    assert(removeMany != null);
    return watch(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watch(_Fetch value),
    TResult remove(_Remove value),
    TResult removeMany(_RemoveMany value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (watch != null) {
      return watch(this);
    }
    return orElse();
  }
}

abstract class _Fetch implements SuppliesEvent {
  const factory _Fetch() = _$_Fetch;
}

/// @nodoc
abstract class _$RemoveCopyWith<$Res> {
  factory _$RemoveCopyWith(_Remove value, $Res Function(_Remove) then) =
      __$RemoveCopyWithImpl<$Res>;
  $Res call({Supply supply});

  $SupplyCopyWith<$Res> get supply;
}

/// @nodoc
class __$RemoveCopyWithImpl<$Res> extends _$SuppliesEventCopyWithImpl<$Res>
    implements _$RemoveCopyWith<$Res> {
  __$RemoveCopyWithImpl(_Remove _value, $Res Function(_Remove) _then)
      : super(_value, (v) => _then(v as _Remove));

  @override
  _Remove get _value => super._value as _Remove;

  @override
  $Res call({
    Object supply = freezed,
  }) {
    return _then(_Remove(
      supply == freezed ? _value.supply : supply as Supply,
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
class _$_Remove implements _Remove {
  const _$_Remove(this.supply) : assert(supply != null);

  @override
  final Supply supply;

  @override
  String toString() {
    return 'SuppliesEvent.remove(supply: $supply)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Remove &&
            (identical(other.supply, supply) ||
                const DeepCollectionEquality().equals(other.supply, supply)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(supply);

  @override
  _$RemoveCopyWith<_Remove> get copyWith =>
      __$RemoveCopyWithImpl<_Remove>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watch(),
    @required TResult remove(Supply supply),
    @required TResult removeMany(Iterable<Supply> supplies),
  }) {
    assert(watch != null);
    assert(remove != null);
    assert(removeMany != null);
    return remove(supply);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watch(),
    TResult remove(Supply supply),
    TResult removeMany(Iterable<Supply> supplies),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (remove != null) {
      return remove(supply);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watch(_Fetch value),
    @required TResult remove(_Remove value),
    @required TResult removeMany(_RemoveMany value),
  }) {
    assert(watch != null);
    assert(remove != null);
    assert(removeMany != null);
    return remove(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watch(_Fetch value),
    TResult remove(_Remove value),
    TResult removeMany(_RemoveMany value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (remove != null) {
      return remove(this);
    }
    return orElse();
  }
}

abstract class _Remove implements SuppliesEvent {
  const factory _Remove(Supply supply) = _$_Remove;

  Supply get supply;
  _$RemoveCopyWith<_Remove> get copyWith;
}

/// @nodoc
abstract class _$RemoveManyCopyWith<$Res> {
  factory _$RemoveManyCopyWith(
          _RemoveMany value, $Res Function(_RemoveMany) then) =
      __$RemoveManyCopyWithImpl<$Res>;
  $Res call({Iterable<Supply> supplies});
}

/// @nodoc
class __$RemoveManyCopyWithImpl<$Res> extends _$SuppliesEventCopyWithImpl<$Res>
    implements _$RemoveManyCopyWith<$Res> {
  __$RemoveManyCopyWithImpl(
      _RemoveMany _value, $Res Function(_RemoveMany) _then)
      : super(_value, (v) => _then(v as _RemoveMany));

  @override
  _RemoveMany get _value => super._value as _RemoveMany;

  @override
  $Res call({
    Object supplies = freezed,
  }) {
    return _then(_RemoveMany(
      supplies == freezed ? _value.supplies : supplies as Iterable<Supply>,
    ));
  }
}

/// @nodoc
class _$_RemoveMany implements _RemoveMany {
  const _$_RemoveMany(this.supplies) : assert(supplies != null);

  @override
  final Iterable<Supply> supplies;

  @override
  String toString() {
    return 'SuppliesEvent.removeMany(supplies: $supplies)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RemoveMany &&
            (identical(other.supplies, supplies) ||
                const DeepCollectionEquality()
                    .equals(other.supplies, supplies)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(supplies);

  @override
  _$RemoveManyCopyWith<_RemoveMany> get copyWith =>
      __$RemoveManyCopyWithImpl<_RemoveMany>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watch(),
    @required TResult remove(Supply supply),
    @required TResult removeMany(Iterable<Supply> supplies),
  }) {
    assert(watch != null);
    assert(remove != null);
    assert(removeMany != null);
    return removeMany(supplies);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watch(),
    TResult remove(Supply supply),
    TResult removeMany(Iterable<Supply> supplies),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (removeMany != null) {
      return removeMany(supplies);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watch(_Fetch value),
    @required TResult remove(_Remove value),
    @required TResult removeMany(_RemoveMany value),
  }) {
    assert(watch != null);
    assert(remove != null);
    assert(removeMany != null);
    return removeMany(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watch(_Fetch value),
    TResult remove(_Remove value),
    TResult removeMany(_RemoveMany value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (removeMany != null) {
      return removeMany(this);
    }
    return orElse();
  }
}

abstract class _RemoveMany implements SuppliesEvent {
  const factory _RemoveMany(Iterable<Supply> supplies) = _$_RemoveMany;

  Iterable<Supply> get supplies;
  _$RemoveManyCopyWith<_RemoveMany> get copyWith;
}

/// @nodoc
class _$SuppliesStateTearOff {
  const _$SuppliesStateTearOff();

// ignore: unused_element
  _Loading loading() {
    return const _Loading();
  }

// ignore: unused_element
  _HasData hasData(Stream<Iterable<Supply>> supplies) {
    return _HasData(
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
const $SuppliesState = _$SuppliesStateTearOff();

/// @nodoc
mixin _$SuppliesState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loading(),
    @required TResult hasData(Stream<Iterable<Supply>> supplies),
    @required TResult failed(Failure failure),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult hasData(Stream<Iterable<Supply>> supplies),
    TResult failed(Failure failure),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loading(_Loading value),
    @required TResult hasData(_HasData value),
    @required TResult failed(_Failed value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(_Loading value),
    TResult hasData(_HasData value),
    TResult failed(_Failed value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $SuppliesStateCopyWith<$Res> {
  factory $SuppliesStateCopyWith(
          SuppliesState value, $Res Function(SuppliesState) then) =
      _$SuppliesStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SuppliesStateCopyWithImpl<$Res>
    implements $SuppliesStateCopyWith<$Res> {
  _$SuppliesStateCopyWithImpl(this._value, this._then);

  final SuppliesState _value;
  // ignore: unused_field
  final $Res Function(SuppliesState) _then;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$SuppliesStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

/// @nodoc
class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'SuppliesState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loading(),
    @required TResult hasData(Stream<Iterable<Supply>> supplies),
    @required TResult failed(Failure failure),
  }) {
    assert(loading != null);
    assert(hasData != null);
    assert(failed != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult hasData(Stream<Iterable<Supply>> supplies),
    TResult failed(Failure failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loading(_Loading value),
    @required TResult hasData(_HasData value),
    @required TResult failed(_Failed value),
  }) {
    assert(loading != null);
    assert(hasData != null);
    assert(failed != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(_Loading value),
    TResult hasData(_HasData value),
    TResult failed(_Failed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements SuppliesState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$HasDataCopyWith<$Res> {
  factory _$HasDataCopyWith(_HasData value, $Res Function(_HasData) then) =
      __$HasDataCopyWithImpl<$Res>;
  $Res call({Stream<Iterable<Supply>> supplies});
}

/// @nodoc
class __$HasDataCopyWithImpl<$Res> extends _$SuppliesStateCopyWithImpl<$Res>
    implements _$HasDataCopyWith<$Res> {
  __$HasDataCopyWithImpl(_HasData _value, $Res Function(_HasData) _then)
      : super(_value, (v) => _then(v as _HasData));

  @override
  _HasData get _value => super._value as _HasData;

  @override
  $Res call({
    Object supplies = freezed,
  }) {
    return _then(_HasData(
      supplies == freezed
          ? _value.supplies
          : supplies as Stream<Iterable<Supply>>,
    ));
  }
}

/// @nodoc
class _$_HasData implements _HasData {
  const _$_HasData(this.supplies) : assert(supplies != null);

  @override
  final Stream<Iterable<Supply>> supplies;

  @override
  String toString() {
    return 'SuppliesState.hasData(supplies: $supplies)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HasData &&
            (identical(other.supplies, supplies) ||
                const DeepCollectionEquality()
                    .equals(other.supplies, supplies)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(supplies);

  @override
  _$HasDataCopyWith<_HasData> get copyWith =>
      __$HasDataCopyWithImpl<_HasData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loading(),
    @required TResult hasData(Stream<Iterable<Supply>> supplies),
    @required TResult failed(Failure failure),
  }) {
    assert(loading != null);
    assert(hasData != null);
    assert(failed != null);
    return hasData(supplies);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult hasData(Stream<Iterable<Supply>> supplies),
    TResult failed(Failure failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (hasData != null) {
      return hasData(supplies);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loading(_Loading value),
    @required TResult hasData(_HasData value),
    @required TResult failed(_Failed value),
  }) {
    assert(loading != null);
    assert(hasData != null);
    assert(failed != null);
    return hasData(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(_Loading value),
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

abstract class _HasData implements SuppliesState {
  const factory _HasData(Stream<Iterable<Supply>> supplies) = _$_HasData;

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
class __$FailedCopyWithImpl<$Res> extends _$SuppliesStateCopyWithImpl<$Res>
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
    return 'SuppliesState.failed(failure: $failure)';
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
    @required TResult loading(),
    @required TResult hasData(Stream<Iterable<Supply>> supplies),
    @required TResult failed(Failure failure),
  }) {
    assert(loading != null);
    assert(hasData != null);
    assert(failed != null);
    return failed(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult hasData(Stream<Iterable<Supply>> supplies),
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
    @required TResult loading(_Loading value),
    @required TResult hasData(_HasData value),
    @required TResult failed(_Failed value),
  }) {
    assert(loading != null);
    assert(hasData != null);
    assert(failed != null);
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(_Loading value),
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

abstract class _Failed implements SuppliesState {
  const factory _Failed(Failure failure) = _$_Failed;

  Failure get failure;
  _$FailedCopyWith<_Failed> get copyWith;
}
