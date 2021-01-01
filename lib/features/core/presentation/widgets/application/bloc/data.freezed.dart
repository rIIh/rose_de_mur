// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ApplicationEventTearOff {
  const _$ApplicationEventTearOff();

// ignore: unused_element
  _Color color(Color accent) {
    return _Color(
      accent,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ApplicationEvent = _$ApplicationEventTearOff();

/// @nodoc
mixin _$ApplicationEvent {
  Color get accent;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult color(Color accent),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult color(Color accent),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult color(_Color value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult color(_Color value),
    @required TResult orElse(),
  });

  $ApplicationEventCopyWith<ApplicationEvent> get copyWith;
}

/// @nodoc
abstract class $ApplicationEventCopyWith<$Res> {
  factory $ApplicationEventCopyWith(
          ApplicationEvent value, $Res Function(ApplicationEvent) then) =
      _$ApplicationEventCopyWithImpl<$Res>;
  $Res call({Color accent});
}

/// @nodoc
class _$ApplicationEventCopyWithImpl<$Res>
    implements $ApplicationEventCopyWith<$Res> {
  _$ApplicationEventCopyWithImpl(this._value, this._then);

  final ApplicationEvent _value;
  // ignore: unused_field
  final $Res Function(ApplicationEvent) _then;

  @override
  $Res call({
    Object accent = freezed,
  }) {
    return _then(_value.copyWith(
      accent: accent == freezed ? _value.accent : accent as Color,
    ));
  }
}

/// @nodoc
abstract class _$ColorCopyWith<$Res>
    implements $ApplicationEventCopyWith<$Res> {
  factory _$ColorCopyWith(_Color value, $Res Function(_Color) then) =
      __$ColorCopyWithImpl<$Res>;
  @override
  $Res call({Color accent});
}

/// @nodoc
class __$ColorCopyWithImpl<$Res> extends _$ApplicationEventCopyWithImpl<$Res>
    implements _$ColorCopyWith<$Res> {
  __$ColorCopyWithImpl(_Color _value, $Res Function(_Color) _then)
      : super(_value, (v) => _then(v as _Color));

  @override
  _Color get _value => super._value as _Color;

  @override
  $Res call({
    Object accent = freezed,
  }) {
    return _then(_Color(
      accent == freezed ? _value.accent : accent as Color,
    ));
  }
}

/// @nodoc
class _$_Color implements _Color {
  const _$_Color(this.accent) : assert(accent != null);

  @override
  final Color accent;

  @override
  String toString() {
    return 'ApplicationEvent.color(accent: $accent)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Color &&
            (identical(other.accent, accent) ||
                const DeepCollectionEquality().equals(other.accent, accent)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(accent);

  @override
  _$ColorCopyWith<_Color> get copyWith =>
      __$ColorCopyWithImpl<_Color>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult color(Color accent),
  }) {
    assert(color != null);
    return color(accent);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult color(Color accent),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (color != null) {
      return color(accent);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult color(_Color value),
  }) {
    assert(color != null);
    return color(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult color(_Color value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (color != null) {
      return color(this);
    }
    return orElse();
  }
}

abstract class _Color implements ApplicationEvent {
  const factory _Color(Color accent) = _$_Color;

  @override
  Color get accent;
  @override
  _$ColorCopyWith<_Color> get copyWith;
}

ApplicationState _$ApplicationStateFromJson(Map<String, dynamic> json) {
  return _State.fromJson(json);
}

/// @nodoc
class _$ApplicationStateTearOff {
  const _$ApplicationStateTearOff();

// ignore: unused_element
  _State state({@ColorSerializer() Color accent}) {
    return _State(
      accent: accent,
    );
  }

// ignore: unused_element
  ApplicationState fromJson(Map<String, Object> json) {
    return ApplicationState.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $ApplicationState = _$ApplicationStateTearOff();

/// @nodoc
mixin _$ApplicationState {
  @ColorSerializer()
  Color get accent;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult state(@ColorSerializer() Color accent),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult state(@ColorSerializer() Color accent),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult state(_State value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult state(_State value),
    @required TResult orElse(),
  });
  Map<String, dynamic> toJson();
  $ApplicationStateCopyWith<ApplicationState> get copyWith;
}

/// @nodoc
abstract class $ApplicationStateCopyWith<$Res> {
  factory $ApplicationStateCopyWith(
          ApplicationState value, $Res Function(ApplicationState) then) =
      _$ApplicationStateCopyWithImpl<$Res>;
  $Res call({@ColorSerializer() Color accent});
}

/// @nodoc
class _$ApplicationStateCopyWithImpl<$Res>
    implements $ApplicationStateCopyWith<$Res> {
  _$ApplicationStateCopyWithImpl(this._value, this._then);

  final ApplicationState _value;
  // ignore: unused_field
  final $Res Function(ApplicationState) _then;

  @override
  $Res call({
    Object accent = freezed,
  }) {
    return _then(_value.copyWith(
      accent: accent == freezed ? _value.accent : accent as Color,
    ));
  }
}

/// @nodoc
abstract class _$StateCopyWith<$Res>
    implements $ApplicationStateCopyWith<$Res> {
  factory _$StateCopyWith(_State value, $Res Function(_State) then) =
      __$StateCopyWithImpl<$Res>;
  @override
  $Res call({@ColorSerializer() Color accent});
}

/// @nodoc
class __$StateCopyWithImpl<$Res> extends _$ApplicationStateCopyWithImpl<$Res>
    implements _$StateCopyWith<$Res> {
  __$StateCopyWithImpl(_State _value, $Res Function(_State) _then)
      : super(_value, (v) => _then(v as _State));

  @override
  _State get _value => super._value as _State;

  @override
  $Res call({
    Object accent = freezed,
  }) {
    return _then(_State(
      accent: accent == freezed ? _value.accent : accent as Color,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_State implements _State {
  const _$_State({@ColorSerializer() this.accent});

  factory _$_State.fromJson(Map<String, dynamic> json) =>
      _$_$_StateFromJson(json);

  @override
  @ColorSerializer()
  final Color accent;

  @override
  String toString() {
    return 'ApplicationState.state(accent: $accent)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _State &&
            (identical(other.accent, accent) ||
                const DeepCollectionEquality().equals(other.accent, accent)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(accent);

  @override
  _$StateCopyWith<_State> get copyWith =>
      __$StateCopyWithImpl<_State>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult state(@ColorSerializer() Color accent),
  }) {
    assert(state != null);
    return state(accent);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult state(@ColorSerializer() Color accent),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (state != null) {
      return state(accent);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult state(_State value),
  }) {
    assert(state != null);
    return state(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult state(_State value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (state != null) {
      return state(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_StateToJson(this);
  }
}

abstract class _State implements ApplicationState {
  const factory _State({@ColorSerializer() Color accent}) = _$_State;

  factory _State.fromJson(Map<String, dynamic> json) = _$_State.fromJson;

  @override
  @ColorSerializer()
  Color get accent;
  @override
  _$StateCopyWith<_State> get copyWith;
}
