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
  _Fetch fetch() {
    return const _Fetch();
  }
}

/// @nodoc
// ignore: unused_element
const $SuppliesEvent = _$SuppliesEventTearOff();

/// @nodoc
mixin _$SuppliesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult fetch(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult fetch(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult fetch(_Fetch value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult fetch(_Fetch value),
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
    return 'SuppliesEvent.fetch()';
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
    @required TResult fetch(),
  }) {
    assert(fetch != null);
    return fetch();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult fetch(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (fetch != null) {
      return fetch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult fetch(_Fetch value),
  }) {
    assert(fetch != null);
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult fetch(_Fetch value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class _Fetch implements SuppliesEvent {
  const factory _Fetch() = _$_Fetch;
}

/// @nodoc
class _$SuppliesStateTearOff {
  const _$SuppliesStateTearOff();

// ignore: unused_element
  _Loading loading() {
    return const _Loading();
  }

// ignore: unused_element
  _HasData hasData(Iterable<Supply> supplies) {
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
    @required TResult hasData(Iterable<Supply> supplies),
    @required TResult failed(Failure failure),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult hasData(Iterable<Supply> supplies),
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
    @required TResult hasData(Iterable<Supply> supplies),
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
    TResult hasData(Iterable<Supply> supplies),
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
  $Res call({Iterable<Supply> supplies});
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
      supplies == freezed ? _value.supplies : supplies as Iterable<Supply>,
    ));
  }
}

/// @nodoc
class _$_HasData implements _HasData {
  const _$_HasData(this.supplies) : assert(supplies != null);

  @override
  final Iterable<Supply> supplies;

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
    @required TResult hasData(Iterable<Supply> supplies),
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
    TResult hasData(Iterable<Supply> supplies),
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
  const factory _HasData(Iterable<Supply> supplies) = _$_HasData;

  Iterable<Supply> get supplies;
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
    @required TResult hasData(Iterable<Supply> supplies),
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
    TResult hasData(Iterable<Supply> supplies),
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
