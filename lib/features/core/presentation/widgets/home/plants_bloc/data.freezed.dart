// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$PlantsGridEventTearOff {
  const _$PlantsGridEventTearOff();

// ignore: unused_element
  _Fetch fetch() {
    return const _Fetch();
  }
}

/// @nodoc
// ignore: unused_element
const $PlantsGridEvent = _$PlantsGridEventTearOff();

/// @nodoc
mixin _$PlantsGridEvent {
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
abstract class $PlantsGridEventCopyWith<$Res> {
  factory $PlantsGridEventCopyWith(
          PlantsGridEvent value, $Res Function(PlantsGridEvent) then) =
      _$PlantsGridEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PlantsGridEventCopyWithImpl<$Res>
    implements $PlantsGridEventCopyWith<$Res> {
  _$PlantsGridEventCopyWithImpl(this._value, this._then);

  final PlantsGridEvent _value;
  // ignore: unused_field
  final $Res Function(PlantsGridEvent) _then;
}

/// @nodoc
abstract class _$FetchCopyWith<$Res> {
  factory _$FetchCopyWith(_Fetch value, $Res Function(_Fetch) then) =
      __$FetchCopyWithImpl<$Res>;
}

/// @nodoc
class __$FetchCopyWithImpl<$Res> extends _$PlantsGridEventCopyWithImpl<$Res>
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
    return 'PlantsGridEvent.fetch()';
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

abstract class _Fetch implements PlantsGridEvent {
  const factory _Fetch() = _$_Fetch;
}

/// @nodoc
class _$PlansGridStateTearOff {
  const _$PlansGridStateTearOff();

// ignore: unused_element
  _Loading loading() {
    return const _Loading();
  }

// ignore: unused_element
  _HasData hasData(Iterable<Plant> plants) {
    return _HasData(
      plants,
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
const $PlansGridState = _$PlansGridStateTearOff();

/// @nodoc
mixin _$PlansGridState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loading(),
    @required TResult hasData(Iterable<Plant> plants),
    @required TResult failed(Failure failure),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult hasData(Iterable<Plant> plants),
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
abstract class $PlansGridStateCopyWith<$Res> {
  factory $PlansGridStateCopyWith(
          PlansGridState value, $Res Function(PlansGridState) then) =
      _$PlansGridStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PlansGridStateCopyWithImpl<$Res>
    implements $PlansGridStateCopyWith<$Res> {
  _$PlansGridStateCopyWithImpl(this._value, this._then);

  final PlansGridState _value;
  // ignore: unused_field
  final $Res Function(PlansGridState) _then;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$PlansGridStateCopyWithImpl<$Res>
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
    return 'PlansGridState.loading()';
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
    @required TResult hasData(Iterable<Plant> plants),
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
    TResult hasData(Iterable<Plant> plants),
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

abstract class _Loading implements PlansGridState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$HasDataCopyWith<$Res> {
  factory _$HasDataCopyWith(_HasData value, $Res Function(_HasData) then) =
      __$HasDataCopyWithImpl<$Res>;
  $Res call({Iterable<Plant> plants});
}

/// @nodoc
class __$HasDataCopyWithImpl<$Res> extends _$PlansGridStateCopyWithImpl<$Res>
    implements _$HasDataCopyWith<$Res> {
  __$HasDataCopyWithImpl(_HasData _value, $Res Function(_HasData) _then)
      : super(_value, (v) => _then(v as _HasData));

  @override
  _HasData get _value => super._value as _HasData;

  @override
  $Res call({
    Object plants = freezed,
  }) {
    return _then(_HasData(
      plants == freezed ? _value.plants : plants as Iterable<Plant>,
    ));
  }
}

/// @nodoc
class _$_HasData implements _HasData {
  const _$_HasData(this.plants) : assert(plants != null);

  @override
  final Iterable<Plant> plants;

  @override
  String toString() {
    return 'PlansGridState.hasData(plants: $plants)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HasData &&
            (identical(other.plants, plants) ||
                const DeepCollectionEquality().equals(other.plants, plants)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(plants);

  @override
  _$HasDataCopyWith<_HasData> get copyWith =>
      __$HasDataCopyWithImpl<_HasData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loading(),
    @required TResult hasData(Iterable<Plant> plants),
    @required TResult failed(Failure failure),
  }) {
    assert(loading != null);
    assert(hasData != null);
    assert(failed != null);
    return hasData(plants);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult hasData(Iterable<Plant> plants),
    TResult failed(Failure failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (hasData != null) {
      return hasData(plants);
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

abstract class _HasData implements PlansGridState {
  const factory _HasData(Iterable<Plant> plants) = _$_HasData;

  Iterable<Plant> get plants;
  _$HasDataCopyWith<_HasData> get copyWith;
}

/// @nodoc
abstract class _$FailedCopyWith<$Res> {
  factory _$FailedCopyWith(_Failed value, $Res Function(_Failed) then) =
      __$FailedCopyWithImpl<$Res>;
  $Res call({Failure failure});
}

/// @nodoc
class __$FailedCopyWithImpl<$Res> extends _$PlansGridStateCopyWithImpl<$Res>
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
    return 'PlansGridState.failed(failure: $failure)';
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
    @required TResult hasData(Iterable<Plant> plants),
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
    TResult hasData(Iterable<Plant> plants),
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

abstract class _Failed implements PlansGridState {
  const factory _Failed(Failure failure) = _$_Failed;

  Failure get failure;
  _$FailedCopyWith<_Failed> get copyWith;
}
