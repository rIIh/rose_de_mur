// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$UpdateSupplyBlocEventTearOff {
  const _$UpdateSupplyBlocEventTearOff();

// ignore: unused_element
  _Update update(Supply supply) {
    return _Update(
      supply,
    );
  }

// ignore: unused_element
  _Delete delete(Supply supply) {
    return _Delete(
      supply,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UpdateSupplyBlocEvent = _$UpdateSupplyBlocEventTearOff();

/// @nodoc
mixin _$UpdateSupplyBlocEvent {
  Supply get supply;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult update(Supply supply),
    @required TResult delete(Supply supply),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult update(Supply supply),
    TResult delete(Supply supply),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult update(_Update value),
    @required TResult delete(_Delete value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult update(_Update value),
    TResult delete(_Delete value),
    @required TResult orElse(),
  });

  $UpdateSupplyBlocEventCopyWith<UpdateSupplyBlocEvent> get copyWith;
}

/// @nodoc
abstract class $UpdateSupplyBlocEventCopyWith<$Res> {
  factory $UpdateSupplyBlocEventCopyWith(UpdateSupplyBlocEvent value,
          $Res Function(UpdateSupplyBlocEvent) then) =
      _$UpdateSupplyBlocEventCopyWithImpl<$Res>;
  $Res call({Supply supply});

  $SupplyCopyWith<$Res> get supply;
}

/// @nodoc
class _$UpdateSupplyBlocEventCopyWithImpl<$Res>
    implements $UpdateSupplyBlocEventCopyWith<$Res> {
  _$UpdateSupplyBlocEventCopyWithImpl(this._value, this._then);

  final UpdateSupplyBlocEvent _value;
  // ignore: unused_field
  final $Res Function(UpdateSupplyBlocEvent) _then;

  @override
  $Res call({
    Object supply = freezed,
  }) {
    return _then(_value.copyWith(
      supply: supply == freezed ? _value.supply : supply as Supply,
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
abstract class _$UpdateCopyWith<$Res>
    implements $UpdateSupplyBlocEventCopyWith<$Res> {
  factory _$UpdateCopyWith(_Update value, $Res Function(_Update) then) =
      __$UpdateCopyWithImpl<$Res>;
  @override
  $Res call({Supply supply});

  @override
  $SupplyCopyWith<$Res> get supply;
}

/// @nodoc
class __$UpdateCopyWithImpl<$Res>
    extends _$UpdateSupplyBlocEventCopyWithImpl<$Res>
    implements _$UpdateCopyWith<$Res> {
  __$UpdateCopyWithImpl(_Update _value, $Res Function(_Update) _then)
      : super(_value, (v) => _then(v as _Update));

  @override
  _Update get _value => super._value as _Update;

  @override
  $Res call({
    Object supply = freezed,
  }) {
    return _then(_Update(
      supply == freezed ? _value.supply : supply as Supply,
    ));
  }
}

/// @nodoc
class _$_Update implements _Update {
  const _$_Update(this.supply) : assert(supply != null);

  @override
  final Supply supply;

  @override
  String toString() {
    return 'UpdateSupplyBlocEvent.update(supply: $supply)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Update &&
            (identical(other.supply, supply) ||
                const DeepCollectionEquality().equals(other.supply, supply)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(supply);

  @override
  _$UpdateCopyWith<_Update> get copyWith =>
      __$UpdateCopyWithImpl<_Update>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult update(Supply supply),
    @required TResult delete(Supply supply),
  }) {
    assert(update != null);
    assert(delete != null);
    return update(supply);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult update(Supply supply),
    TResult delete(Supply supply),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (update != null) {
      return update(supply);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult update(_Update value),
    @required TResult delete(_Delete value),
  }) {
    assert(update != null);
    assert(delete != null);
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult update(_Update value),
    TResult delete(_Delete value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class _Update implements UpdateSupplyBlocEvent {
  const factory _Update(Supply supply) = _$_Update;

  @override
  Supply get supply;
  @override
  _$UpdateCopyWith<_Update> get copyWith;
}

/// @nodoc
abstract class _$DeleteCopyWith<$Res>
    implements $UpdateSupplyBlocEventCopyWith<$Res> {
  factory _$DeleteCopyWith(_Delete value, $Res Function(_Delete) then) =
      __$DeleteCopyWithImpl<$Res>;
  @override
  $Res call({Supply supply});

  @override
  $SupplyCopyWith<$Res> get supply;
}

/// @nodoc
class __$DeleteCopyWithImpl<$Res>
    extends _$UpdateSupplyBlocEventCopyWithImpl<$Res>
    implements _$DeleteCopyWith<$Res> {
  __$DeleteCopyWithImpl(_Delete _value, $Res Function(_Delete) _then)
      : super(_value, (v) => _then(v as _Delete));

  @override
  _Delete get _value => super._value as _Delete;

  @override
  $Res call({
    Object supply = freezed,
  }) {
    return _then(_Delete(
      supply == freezed ? _value.supply : supply as Supply,
    ));
  }
}

/// @nodoc
class _$_Delete implements _Delete {
  const _$_Delete(this.supply) : assert(supply != null);

  @override
  final Supply supply;

  @override
  String toString() {
    return 'UpdateSupplyBlocEvent.delete(supply: $supply)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Delete &&
            (identical(other.supply, supply) ||
                const DeepCollectionEquality().equals(other.supply, supply)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(supply);

  @override
  _$DeleteCopyWith<_Delete> get copyWith =>
      __$DeleteCopyWithImpl<_Delete>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult update(Supply supply),
    @required TResult delete(Supply supply),
  }) {
    assert(update != null);
    assert(delete != null);
    return delete(supply);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult update(Supply supply),
    TResult delete(Supply supply),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (delete != null) {
      return delete(supply);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult update(_Update value),
    @required TResult delete(_Delete value),
  }) {
    assert(update != null);
    assert(delete != null);
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult update(_Update value),
    TResult delete(_Delete value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class _Delete implements UpdateSupplyBlocEvent {
  const factory _Delete(Supply supply) = _$_Delete;

  @override
  Supply get supply;
  @override
  _$DeleteCopyWith<_Delete> get copyWith;
}

/// @nodoc
class _$UpdateSupplyBlocStateTearOff {
  const _$UpdateSupplyBlocStateTearOff();

// ignore: unused_element
  _Succeeded succeeded() {
    return const _Succeeded();
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
const $UpdateSupplyBlocState = _$UpdateSupplyBlocStateTearOff();

/// @nodoc
mixin _$UpdateSupplyBlocState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult succeeded(),
    @required TResult failed(Failure failure),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult succeeded(),
    TResult failed(Failure failure),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult succeeded(_Succeeded value),
    @required TResult failed(_Failed value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult succeeded(_Succeeded value),
    TResult failed(_Failed value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $UpdateSupplyBlocStateCopyWith<$Res> {
  factory $UpdateSupplyBlocStateCopyWith(UpdateSupplyBlocState value,
          $Res Function(UpdateSupplyBlocState) then) =
      _$UpdateSupplyBlocStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateSupplyBlocStateCopyWithImpl<$Res>
    implements $UpdateSupplyBlocStateCopyWith<$Res> {
  _$UpdateSupplyBlocStateCopyWithImpl(this._value, this._then);

  final UpdateSupplyBlocState _value;
  // ignore: unused_field
  final $Res Function(UpdateSupplyBlocState) _then;
}

/// @nodoc
abstract class _$SucceededCopyWith<$Res> {
  factory _$SucceededCopyWith(
          _Succeeded value, $Res Function(_Succeeded) then) =
      __$SucceededCopyWithImpl<$Res>;
}

/// @nodoc
class __$SucceededCopyWithImpl<$Res>
    extends _$UpdateSupplyBlocStateCopyWithImpl<$Res>
    implements _$SucceededCopyWith<$Res> {
  __$SucceededCopyWithImpl(_Succeeded _value, $Res Function(_Succeeded) _then)
      : super(_value, (v) => _then(v as _Succeeded));

  @override
  _Succeeded get _value => super._value as _Succeeded;
}

/// @nodoc
class _$_Succeeded implements _Succeeded {
  const _$_Succeeded();

  @override
  String toString() {
    return 'UpdateSupplyBlocState.succeeded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Succeeded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult succeeded(),
    @required TResult failed(Failure failure),
  }) {
    assert(succeeded != null);
    assert(failed != null);
    return succeeded();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult succeeded(),
    TResult failed(Failure failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (succeeded != null) {
      return succeeded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult succeeded(_Succeeded value),
    @required TResult failed(_Failed value),
  }) {
    assert(succeeded != null);
    assert(failed != null);
    return succeeded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult succeeded(_Succeeded value),
    TResult failed(_Failed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (succeeded != null) {
      return succeeded(this);
    }
    return orElse();
  }
}

abstract class _Succeeded implements UpdateSupplyBlocState {
  const factory _Succeeded() = _$_Succeeded;
}

/// @nodoc
abstract class _$FailedCopyWith<$Res> {
  factory _$FailedCopyWith(_Failed value, $Res Function(_Failed) then) =
      __$FailedCopyWithImpl<$Res>;
  $Res call({Failure failure});
}

/// @nodoc
class __$FailedCopyWithImpl<$Res>
    extends _$UpdateSupplyBlocStateCopyWithImpl<$Res>
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
    return 'UpdateSupplyBlocState.failed(failure: $failure)';
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
    @required TResult succeeded(),
    @required TResult failed(Failure failure),
  }) {
    assert(succeeded != null);
    assert(failed != null);
    return failed(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult succeeded(),
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
    @required TResult succeeded(_Succeeded value),
    @required TResult failed(_Failed value),
  }) {
    assert(succeeded != null);
    assert(failed != null);
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult succeeded(_Succeeded value),
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

abstract class _Failed implements UpdateSupplyBlocState {
  const factory _Failed(Failure failure) = _$_Failed;

  Failure get failure;
  _$FailedCopyWith<_Failed> get copyWith;
}
