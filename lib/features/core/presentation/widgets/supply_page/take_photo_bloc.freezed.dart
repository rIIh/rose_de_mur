// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'take_photo_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$TakePhotoEventTearOff {
  const _$TakePhotoEventTearOff();

// ignore: unused_element
  _TakePhoto takePhoto() {
    return const _TakePhoto();
  }
}

/// @nodoc
// ignore: unused_element
const $TakePhotoEvent = _$TakePhotoEventTearOff();

/// @nodoc
mixin _$TakePhotoEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult takePhoto(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult takePhoto(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult takePhoto(_TakePhoto value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult takePhoto(_TakePhoto value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $TakePhotoEventCopyWith<$Res> {
  factory $TakePhotoEventCopyWith(
          TakePhotoEvent value, $Res Function(TakePhotoEvent) then) =
      _$TakePhotoEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$TakePhotoEventCopyWithImpl<$Res>
    implements $TakePhotoEventCopyWith<$Res> {
  _$TakePhotoEventCopyWithImpl(this._value, this._then);

  final TakePhotoEvent _value;
  // ignore: unused_field
  final $Res Function(TakePhotoEvent) _then;
}

/// @nodoc
abstract class _$TakePhotoCopyWith<$Res> {
  factory _$TakePhotoCopyWith(
          _TakePhoto value, $Res Function(_TakePhoto) then) =
      __$TakePhotoCopyWithImpl<$Res>;
}

/// @nodoc
class __$TakePhotoCopyWithImpl<$Res> extends _$TakePhotoEventCopyWithImpl<$Res>
    implements _$TakePhotoCopyWith<$Res> {
  __$TakePhotoCopyWithImpl(_TakePhoto _value, $Res Function(_TakePhoto) _then)
      : super(_value, (v) => _then(v as _TakePhoto));

  @override
  _TakePhoto get _value => super._value as _TakePhoto;
}

/// @nodoc
class _$_TakePhoto implements _TakePhoto {
  const _$_TakePhoto();

  @override
  String toString() {
    return 'TakePhotoEvent.takePhoto()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _TakePhoto);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult takePhoto(),
  }) {
    assert(takePhoto != null);
    return takePhoto();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult takePhoto(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (takePhoto != null) {
      return takePhoto();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult takePhoto(_TakePhoto value),
  }) {
    assert(takePhoto != null);
    return takePhoto(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult takePhoto(_TakePhoto value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (takePhoto != null) {
      return takePhoto(this);
    }
    return orElse();
  }
}

abstract class _TakePhoto implements TakePhotoEvent {
  const factory _TakePhoto() = _$_TakePhoto;
}

/// @nodoc
class _$TakePhotoStateTearOff {
  const _$TakePhotoStateTearOff();

// ignore: unused_element
  _Photo photo(Uint8List photo) {
    return _Photo(
      photo,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $TakePhotoState = _$TakePhotoStateTearOff();

/// @nodoc
mixin _$TakePhotoState {
  Uint8List get photo;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult photo(Uint8List photo),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult photo(Uint8List photo),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult photo(_Photo value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult photo(_Photo value),
    @required TResult orElse(),
  });

  $TakePhotoStateCopyWith<TakePhotoState> get copyWith;
}

/// @nodoc
abstract class $TakePhotoStateCopyWith<$Res> {
  factory $TakePhotoStateCopyWith(
          TakePhotoState value, $Res Function(TakePhotoState) then) =
      _$TakePhotoStateCopyWithImpl<$Res>;
  $Res call({Uint8List photo});
}

/// @nodoc
class _$TakePhotoStateCopyWithImpl<$Res>
    implements $TakePhotoStateCopyWith<$Res> {
  _$TakePhotoStateCopyWithImpl(this._value, this._then);

  final TakePhotoState _value;
  // ignore: unused_field
  final $Res Function(TakePhotoState) _then;

  @override
  $Res call({
    Object photo = freezed,
  }) {
    return _then(_value.copyWith(
      photo: photo == freezed ? _value.photo : photo as Uint8List,
    ));
  }
}

/// @nodoc
abstract class _$PhotoCopyWith<$Res> implements $TakePhotoStateCopyWith<$Res> {
  factory _$PhotoCopyWith(_Photo value, $Res Function(_Photo) then) =
      __$PhotoCopyWithImpl<$Res>;
  @override
  $Res call({Uint8List photo});
}

/// @nodoc
class __$PhotoCopyWithImpl<$Res> extends _$TakePhotoStateCopyWithImpl<$Res>
    implements _$PhotoCopyWith<$Res> {
  __$PhotoCopyWithImpl(_Photo _value, $Res Function(_Photo) _then)
      : super(_value, (v) => _then(v as _Photo));

  @override
  _Photo get _value => super._value as _Photo;

  @override
  $Res call({
    Object photo = freezed,
  }) {
    return _then(_Photo(
      photo == freezed ? _value.photo : photo as Uint8List,
    ));
  }
}

/// @nodoc
class _$_Photo implements _Photo {
  const _$_Photo(this.photo) : assert(photo != null);

  @override
  final Uint8List photo;

  @override
  String toString() {
    return 'TakePhotoState.photo(photo: $photo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Photo &&
            (identical(other.photo, photo) ||
                const DeepCollectionEquality().equals(other.photo, photo)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(photo);

  @override
  _$PhotoCopyWith<_Photo> get copyWith =>
      __$PhotoCopyWithImpl<_Photo>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult photo(Uint8List photo),
  }) {
    assert(photo != null);
    return photo(this.photo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult photo(Uint8List photo),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (photo != null) {
      return photo(this.photo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult photo(_Photo value),
  }) {
    assert(photo != null);
    return photo(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult photo(_Photo value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (photo != null) {
      return photo(this);
    }
    return orElse();
  }
}

abstract class _Photo implements TakePhotoState {
  const factory _Photo(Uint8List photo) = _$_Photo;

  @override
  Uint8List get photo;
  @override
  _$PhotoCopyWith<_Photo> get copyWith;
}
