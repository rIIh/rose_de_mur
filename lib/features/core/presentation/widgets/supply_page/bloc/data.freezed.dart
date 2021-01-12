// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SupplyPageEventTearOff {
  const _$SupplyPageEventTearOff();

// ignore: unused_element
  _SetDate setDate(DateTime date) {
    return _SetDate(
      date,
    );
  }

// ignore: unused_element
  _Add add() {
    return const _Add();
  }

// ignore: unused_element
  _Remove remove(String key) {
    return _Remove(
      key,
    );
  }

// ignore: unused_element
  _Update update(String key, Supply supply) {
    return _Update(
      key,
      supply,
    );
  }

// ignore: unused_element
  _Save save({Completer<dynamic> completer}) {
    return _Save(
      completer: completer,
    );
  }

// ignore: unused_element
  _Sync sync() {
    return const _Sync();
  }
}

/// @nodoc
// ignore: unused_element
const $SupplyPageEvent = _$SupplyPageEventTearOff();

/// @nodoc
mixin _$SupplyPageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult setDate(DateTime date),
    @required TResult add(),
    @required TResult remove(String key),
    @required TResult update(String key, Supply supply),
    @required TResult save(Completer<dynamic> completer),
    @required TResult sync(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult setDate(DateTime date),
    TResult add(),
    TResult remove(String key),
    TResult update(String key, Supply supply),
    TResult save(Completer<dynamic> completer),
    TResult sync(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult setDate(_SetDate value),
    @required TResult add(_Add value),
    @required TResult remove(_Remove value),
    @required TResult update(_Update value),
    @required TResult save(_Save value),
    @required TResult sync(_Sync value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult setDate(_SetDate value),
    TResult add(_Add value),
    TResult remove(_Remove value),
    TResult update(_Update value),
    TResult save(_Save value),
    TResult sync(_Sync value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $SupplyPageEventCopyWith<$Res> {
  factory $SupplyPageEventCopyWith(
          SupplyPageEvent value, $Res Function(SupplyPageEvent) then) =
      _$SupplyPageEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SupplyPageEventCopyWithImpl<$Res>
    implements $SupplyPageEventCopyWith<$Res> {
  _$SupplyPageEventCopyWithImpl(this._value, this._then);

  final SupplyPageEvent _value;
  // ignore: unused_field
  final $Res Function(SupplyPageEvent) _then;
}

/// @nodoc
abstract class _$SetDateCopyWith<$Res> {
  factory _$SetDateCopyWith(_SetDate value, $Res Function(_SetDate) then) =
      __$SetDateCopyWithImpl<$Res>;
  $Res call({DateTime date});
}

/// @nodoc
class __$SetDateCopyWithImpl<$Res> extends _$SupplyPageEventCopyWithImpl<$Res>
    implements _$SetDateCopyWith<$Res> {
  __$SetDateCopyWithImpl(_SetDate _value, $Res Function(_SetDate) _then)
      : super(_value, (v) => _then(v as _SetDate));

  @override
  _SetDate get _value => super._value as _SetDate;

  @override
  $Res call({
    Object date = freezed,
  }) {
    return _then(_SetDate(
      date == freezed ? _value.date : date as DateTime,
    ));
  }
}

/// @nodoc
class _$_SetDate implements _SetDate {
  const _$_SetDate(this.date) : assert(date != null);

  @override
  final DateTime date;

  @override
  String toString() {
    return 'SupplyPageEvent.setDate(date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SetDate &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(date);

  @override
  _$SetDateCopyWith<_SetDate> get copyWith =>
      __$SetDateCopyWithImpl<_SetDate>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult setDate(DateTime date),
    @required TResult add(),
    @required TResult remove(String key),
    @required TResult update(String key, Supply supply),
    @required TResult save(Completer<dynamic> completer),
    @required TResult sync(),
  }) {
    assert(setDate != null);
    assert(add != null);
    assert(remove != null);
    assert(update != null);
    assert(save != null);
    assert(sync != null);
    return setDate(date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult setDate(DateTime date),
    TResult add(),
    TResult remove(String key),
    TResult update(String key, Supply supply),
    TResult save(Completer<dynamic> completer),
    TResult sync(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (setDate != null) {
      return setDate(date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult setDate(_SetDate value),
    @required TResult add(_Add value),
    @required TResult remove(_Remove value),
    @required TResult update(_Update value),
    @required TResult save(_Save value),
    @required TResult sync(_Sync value),
  }) {
    assert(setDate != null);
    assert(add != null);
    assert(remove != null);
    assert(update != null);
    assert(save != null);
    assert(sync != null);
    return setDate(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult setDate(_SetDate value),
    TResult add(_Add value),
    TResult remove(_Remove value),
    TResult update(_Update value),
    TResult save(_Save value),
    TResult sync(_Sync value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (setDate != null) {
      return setDate(this);
    }
    return orElse();
  }
}

abstract class _SetDate implements SupplyPageEvent {
  const factory _SetDate(DateTime date) = _$_SetDate;

  DateTime get date;
  _$SetDateCopyWith<_SetDate> get copyWith;
}

/// @nodoc
abstract class _$AddCopyWith<$Res> {
  factory _$AddCopyWith(_Add value, $Res Function(_Add) then) =
      __$AddCopyWithImpl<$Res>;
}

/// @nodoc
class __$AddCopyWithImpl<$Res> extends _$SupplyPageEventCopyWithImpl<$Res>
    implements _$AddCopyWith<$Res> {
  __$AddCopyWithImpl(_Add _value, $Res Function(_Add) _then)
      : super(_value, (v) => _then(v as _Add));

  @override
  _Add get _value => super._value as _Add;
}

/// @nodoc
class _$_Add implements _Add {
  const _$_Add();

  @override
  String toString() {
    return 'SupplyPageEvent.add()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Add);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult setDate(DateTime date),
    @required TResult add(),
    @required TResult remove(String key),
    @required TResult update(String key, Supply supply),
    @required TResult save(Completer<dynamic> completer),
    @required TResult sync(),
  }) {
    assert(setDate != null);
    assert(add != null);
    assert(remove != null);
    assert(update != null);
    assert(save != null);
    assert(sync != null);
    return add();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult setDate(DateTime date),
    TResult add(),
    TResult remove(String key),
    TResult update(String key, Supply supply),
    TResult save(Completer<dynamic> completer),
    TResult sync(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (add != null) {
      return add();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult setDate(_SetDate value),
    @required TResult add(_Add value),
    @required TResult remove(_Remove value),
    @required TResult update(_Update value),
    @required TResult save(_Save value),
    @required TResult sync(_Sync value),
  }) {
    assert(setDate != null);
    assert(add != null);
    assert(remove != null);
    assert(update != null);
    assert(save != null);
    assert(sync != null);
    return add(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult setDate(_SetDate value),
    TResult add(_Add value),
    TResult remove(_Remove value),
    TResult update(_Update value),
    TResult save(_Save value),
    TResult sync(_Sync value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (add != null) {
      return add(this);
    }
    return orElse();
  }
}

abstract class _Add implements SupplyPageEvent {
  const factory _Add() = _$_Add;
}

/// @nodoc
abstract class _$RemoveCopyWith<$Res> {
  factory _$RemoveCopyWith(_Remove value, $Res Function(_Remove) then) =
      __$RemoveCopyWithImpl<$Res>;
  $Res call({String key});
}

/// @nodoc
class __$RemoveCopyWithImpl<$Res> extends _$SupplyPageEventCopyWithImpl<$Res>
    implements _$RemoveCopyWith<$Res> {
  __$RemoveCopyWithImpl(_Remove _value, $Res Function(_Remove) _then)
      : super(_value, (v) => _then(v as _Remove));

  @override
  _Remove get _value => super._value as _Remove;

  @override
  $Res call({
    Object key = freezed,
  }) {
    return _then(_Remove(
      key == freezed ? _value.key : key as String,
    ));
  }
}

/// @nodoc
class _$_Remove implements _Remove {
  const _$_Remove(this.key) : assert(key != null);

  @override
  final String key;

  @override
  String toString() {
    return 'SupplyPageEvent.remove(key: $key)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Remove &&
            (identical(other.key, key) ||
                const DeepCollectionEquality().equals(other.key, key)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(key);

  @override
  _$RemoveCopyWith<_Remove> get copyWith =>
      __$RemoveCopyWithImpl<_Remove>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult setDate(DateTime date),
    @required TResult add(),
    @required TResult remove(String key),
    @required TResult update(String key, Supply supply),
    @required TResult save(Completer<dynamic> completer),
    @required TResult sync(),
  }) {
    assert(setDate != null);
    assert(add != null);
    assert(remove != null);
    assert(update != null);
    assert(save != null);
    assert(sync != null);
    return remove(key);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult setDate(DateTime date),
    TResult add(),
    TResult remove(String key),
    TResult update(String key, Supply supply),
    TResult save(Completer<dynamic> completer),
    TResult sync(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (remove != null) {
      return remove(key);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult setDate(_SetDate value),
    @required TResult add(_Add value),
    @required TResult remove(_Remove value),
    @required TResult update(_Update value),
    @required TResult save(_Save value),
    @required TResult sync(_Sync value),
  }) {
    assert(setDate != null);
    assert(add != null);
    assert(remove != null);
    assert(update != null);
    assert(save != null);
    assert(sync != null);
    return remove(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult setDate(_SetDate value),
    TResult add(_Add value),
    TResult remove(_Remove value),
    TResult update(_Update value),
    TResult save(_Save value),
    TResult sync(_Sync value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (remove != null) {
      return remove(this);
    }
    return orElse();
  }
}

abstract class _Remove implements SupplyPageEvent {
  const factory _Remove(String key) = _$_Remove;

  String get key;
  _$RemoveCopyWith<_Remove> get copyWith;
}

/// @nodoc
abstract class _$UpdateCopyWith<$Res> {
  factory _$UpdateCopyWith(_Update value, $Res Function(_Update) then) =
      __$UpdateCopyWithImpl<$Res>;
  $Res call({String key, Supply supply});

  $SupplyCopyWith<$Res> get supply;
}

/// @nodoc
class __$UpdateCopyWithImpl<$Res> extends _$SupplyPageEventCopyWithImpl<$Res>
    implements _$UpdateCopyWith<$Res> {
  __$UpdateCopyWithImpl(_Update _value, $Res Function(_Update) _then)
      : super(_value, (v) => _then(v as _Update));

  @override
  _Update get _value => super._value as _Update;

  @override
  $Res call({
    Object key = freezed,
    Object supply = freezed,
  }) {
    return _then(_Update(
      key == freezed ? _value.key : key as String,
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
class _$_Update implements _Update {
  const _$_Update(this.key, this.supply)
      : assert(key != null),
        assert(supply != null);

  @override
  final String key;
  @override
  final Supply supply;

  @override
  String toString() {
    return 'SupplyPageEvent.update(key: $key, supply: $supply)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Update &&
            (identical(other.key, key) ||
                const DeepCollectionEquality().equals(other.key, key)) &&
            (identical(other.supply, supply) ||
                const DeepCollectionEquality().equals(other.supply, supply)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(key) ^
      const DeepCollectionEquality().hash(supply);

  @override
  _$UpdateCopyWith<_Update> get copyWith =>
      __$UpdateCopyWithImpl<_Update>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult setDate(DateTime date),
    @required TResult add(),
    @required TResult remove(String key),
    @required TResult update(String key, Supply supply),
    @required TResult save(Completer<dynamic> completer),
    @required TResult sync(),
  }) {
    assert(setDate != null);
    assert(add != null);
    assert(remove != null);
    assert(update != null);
    assert(save != null);
    assert(sync != null);
    return update(key, supply);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult setDate(DateTime date),
    TResult add(),
    TResult remove(String key),
    TResult update(String key, Supply supply),
    TResult save(Completer<dynamic> completer),
    TResult sync(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (update != null) {
      return update(key, supply);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult setDate(_SetDate value),
    @required TResult add(_Add value),
    @required TResult remove(_Remove value),
    @required TResult update(_Update value),
    @required TResult save(_Save value),
    @required TResult sync(_Sync value),
  }) {
    assert(setDate != null);
    assert(add != null);
    assert(remove != null);
    assert(update != null);
    assert(save != null);
    assert(sync != null);
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult setDate(_SetDate value),
    TResult add(_Add value),
    TResult remove(_Remove value),
    TResult update(_Update value),
    TResult save(_Save value),
    TResult sync(_Sync value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class _Update implements SupplyPageEvent {
  const factory _Update(String key, Supply supply) = _$_Update;

  String get key;
  Supply get supply;
  _$UpdateCopyWith<_Update> get copyWith;
}

/// @nodoc
abstract class _$SaveCopyWith<$Res> {
  factory _$SaveCopyWith(_Save value, $Res Function(_Save) then) =
      __$SaveCopyWithImpl<$Res>;
  $Res call({Completer<dynamic> completer});
}

/// @nodoc
class __$SaveCopyWithImpl<$Res> extends _$SupplyPageEventCopyWithImpl<$Res>
    implements _$SaveCopyWith<$Res> {
  __$SaveCopyWithImpl(_Save _value, $Res Function(_Save) _then)
      : super(_value, (v) => _then(v as _Save));

  @override
  _Save get _value => super._value as _Save;

  @override
  $Res call({
    Object completer = freezed,
  }) {
    return _then(_Save(
      completer: completer == freezed
          ? _value.completer
          : completer as Completer<dynamic>,
    ));
  }
}

/// @nodoc
class _$_Save implements _Save {
  const _$_Save({this.completer});

  @override
  final Completer<dynamic> completer;

  @override
  String toString() {
    return 'SupplyPageEvent.save(completer: $completer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Save &&
            (identical(other.completer, completer) ||
                const DeepCollectionEquality()
                    .equals(other.completer, completer)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(completer);

  @override
  _$SaveCopyWith<_Save> get copyWith =>
      __$SaveCopyWithImpl<_Save>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult setDate(DateTime date),
    @required TResult add(),
    @required TResult remove(String key),
    @required TResult update(String key, Supply supply),
    @required TResult save(Completer<dynamic> completer),
    @required TResult sync(),
  }) {
    assert(setDate != null);
    assert(add != null);
    assert(remove != null);
    assert(update != null);
    assert(save != null);
    assert(sync != null);
    return save(completer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult setDate(DateTime date),
    TResult add(),
    TResult remove(String key),
    TResult update(String key, Supply supply),
    TResult save(Completer<dynamic> completer),
    TResult sync(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (save != null) {
      return save(completer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult setDate(_SetDate value),
    @required TResult add(_Add value),
    @required TResult remove(_Remove value),
    @required TResult update(_Update value),
    @required TResult save(_Save value),
    @required TResult sync(_Sync value),
  }) {
    assert(setDate != null);
    assert(add != null);
    assert(remove != null);
    assert(update != null);
    assert(save != null);
    assert(sync != null);
    return save(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult setDate(_SetDate value),
    TResult add(_Add value),
    TResult remove(_Remove value),
    TResult update(_Update value),
    TResult save(_Save value),
    TResult sync(_Sync value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (save != null) {
      return save(this);
    }
    return orElse();
  }
}

abstract class _Save implements SupplyPageEvent {
  const factory _Save({Completer<dynamic> completer}) = _$_Save;

  Completer<dynamic> get completer;
  _$SaveCopyWith<_Save> get copyWith;
}

/// @nodoc
abstract class _$SyncCopyWith<$Res> {
  factory _$SyncCopyWith(_Sync value, $Res Function(_Sync) then) =
      __$SyncCopyWithImpl<$Res>;
}

/// @nodoc
class __$SyncCopyWithImpl<$Res> extends _$SupplyPageEventCopyWithImpl<$Res>
    implements _$SyncCopyWith<$Res> {
  __$SyncCopyWithImpl(_Sync _value, $Res Function(_Sync) _then)
      : super(_value, (v) => _then(v as _Sync));

  @override
  _Sync get _value => super._value as _Sync;
}

/// @nodoc
class _$_Sync implements _Sync {
  const _$_Sync();

  @override
  String toString() {
    return 'SupplyPageEvent.sync()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Sync);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult setDate(DateTime date),
    @required TResult add(),
    @required TResult remove(String key),
    @required TResult update(String key, Supply supply),
    @required TResult save(Completer<dynamic> completer),
    @required TResult sync(),
  }) {
    assert(setDate != null);
    assert(add != null);
    assert(remove != null);
    assert(update != null);
    assert(save != null);
    assert(sync != null);
    return sync();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult setDate(DateTime date),
    TResult add(),
    TResult remove(String key),
    TResult update(String key, Supply supply),
    TResult save(Completer<dynamic> completer),
    TResult sync(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (sync != null) {
      return sync();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult setDate(_SetDate value),
    @required TResult add(_Add value),
    @required TResult remove(_Remove value),
    @required TResult update(_Update value),
    @required TResult save(_Save value),
    @required TResult sync(_Sync value),
  }) {
    assert(setDate != null);
    assert(add != null);
    assert(remove != null);
    assert(update != null);
    assert(save != null);
    assert(sync != null);
    return sync(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult setDate(_SetDate value),
    TResult add(_Add value),
    TResult remove(_Remove value),
    TResult update(_Update value),
    TResult save(_Save value),
    TResult sync(_Sync value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (sync != null) {
      return sync(this);
    }
    return orElse();
  }
}

abstract class _Sync implements SupplyPageEvent {
  const factory _Sync() = _$_Sync;
}

/// @nodoc
class _$SupplyPageStateTearOff {
  const _$SupplyPageStateTearOff();

// ignore: unused_element
  SupplyPageDataState data(BuiltMap<String, Supply> supplies, DateTime date) {
    return SupplyPageDataState(
      supplies,
      date,
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
const $SupplyPageState = _$SupplyPageStateTearOff();

/// @nodoc
mixin _$SupplyPageState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult data(BuiltMap<String, Supply> supplies, DateTime date),
    @required TResult failed(Failure failure),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult data(BuiltMap<String, Supply> supplies, DateTime date),
    TResult failed(Failure failure),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult data(SupplyPageDataState value),
    @required TResult failed(_Failed value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult data(SupplyPageDataState value),
    TResult failed(_Failed value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $SupplyPageStateCopyWith<$Res> {
  factory $SupplyPageStateCopyWith(
          SupplyPageState value, $Res Function(SupplyPageState) then) =
      _$SupplyPageStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SupplyPageStateCopyWithImpl<$Res>
    implements $SupplyPageStateCopyWith<$Res> {
  _$SupplyPageStateCopyWithImpl(this._value, this._then);

  final SupplyPageState _value;
  // ignore: unused_field
  final $Res Function(SupplyPageState) _then;
}

/// @nodoc
abstract class $SupplyPageDataStateCopyWith<$Res> {
  factory $SupplyPageDataStateCopyWith(
          SupplyPageDataState value, $Res Function(SupplyPageDataState) then) =
      _$SupplyPageDataStateCopyWithImpl<$Res>;
  $Res call({BuiltMap<String, Supply> supplies, DateTime date});
}

/// @nodoc
class _$SupplyPageDataStateCopyWithImpl<$Res>
    extends _$SupplyPageStateCopyWithImpl<$Res>
    implements $SupplyPageDataStateCopyWith<$Res> {
  _$SupplyPageDataStateCopyWithImpl(
      SupplyPageDataState _value, $Res Function(SupplyPageDataState) _then)
      : super(_value, (v) => _then(v as SupplyPageDataState));

  @override
  SupplyPageDataState get _value => super._value as SupplyPageDataState;

  @override
  $Res call({
    Object supplies = freezed,
    Object date = freezed,
  }) {
    return _then(SupplyPageDataState(
      supplies == freezed
          ? _value.supplies
          : supplies as BuiltMap<String, Supply>,
      date == freezed ? _value.date : date as DateTime,
    ));
  }
}

/// @nodoc
class _$SupplyPageDataState implements SupplyPageDataState {
  const _$SupplyPageDataState(this.supplies, this.date)
      : assert(supplies != null),
        assert(date != null);

  @override
  final BuiltMap<String, Supply> supplies;
  @override
  final DateTime date;

  @override
  String toString() {
    return 'SupplyPageState.data(supplies: $supplies, date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SupplyPageDataState &&
            (identical(other.supplies, supplies) ||
                const DeepCollectionEquality()
                    .equals(other.supplies, supplies)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(supplies) ^
      const DeepCollectionEquality().hash(date);

  @override
  $SupplyPageDataStateCopyWith<SupplyPageDataState> get copyWith =>
      _$SupplyPageDataStateCopyWithImpl<SupplyPageDataState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult data(BuiltMap<String, Supply> supplies, DateTime date),
    @required TResult failed(Failure failure),
  }) {
    assert(data != null);
    assert(failed != null);
    return data(supplies, date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult data(BuiltMap<String, Supply> supplies, DateTime date),
    TResult failed(Failure failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (data != null) {
      return data(supplies, date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult data(SupplyPageDataState value),
    @required TResult failed(_Failed value),
  }) {
    assert(data != null);
    assert(failed != null);
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult data(SupplyPageDataState value),
    TResult failed(_Failed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class SupplyPageDataState implements SupplyPageState {
  const factory SupplyPageDataState(
      BuiltMap<String, Supply> supplies, DateTime date) = _$SupplyPageDataState;

  BuiltMap<String, Supply> get supplies;
  DateTime get date;
  $SupplyPageDataStateCopyWith<SupplyPageDataState> get copyWith;
}

/// @nodoc
abstract class _$FailedCopyWith<$Res> {
  factory _$FailedCopyWith(_Failed value, $Res Function(_Failed) then) =
      __$FailedCopyWithImpl<$Res>;
  $Res call({Failure failure});
}

/// @nodoc
class __$FailedCopyWithImpl<$Res> extends _$SupplyPageStateCopyWithImpl<$Res>
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
    return 'SupplyPageState.failed(failure: $failure)';
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
    @required TResult data(BuiltMap<String, Supply> supplies, DateTime date),
    @required TResult failed(Failure failure),
  }) {
    assert(data != null);
    assert(failed != null);
    return failed(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult data(BuiltMap<String, Supply> supplies, DateTime date),
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
    @required TResult data(SupplyPageDataState value),
    @required TResult failed(_Failed value),
  }) {
    assert(data != null);
    assert(failed != null);
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult data(SupplyPageDataState value),
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

abstract class _Failed implements SupplyPageState {
  const factory _Failed(Failure failure) = _$_Failed;

  Failure get failure;
  _$FailedCopyWith<_Failed> get copyWith;
}
