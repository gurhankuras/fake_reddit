// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'change_community_avatar_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ChangeCommunityAvatarEventTearOff {
  const _$ChangeCommunityAvatarEventTearOff();

  _AvatarColorChanged avatarColorChanged(int index) {
    return _AvatarColorChanged(
      index,
    );
  }

  _AvatarIconChanged avatarIconChanged(int index) {
    return _AvatarIconChanged(
      index,
    );
  }

  _ImageCropped imageCropped(Uint8List bytes) {
    return _ImageCropped(
      bytes,
    );
  }

  _LoadingCustomImageSelected loadingCustomImageSelected(ImageSource source) {
    return _LoadingCustomImageSelected(
      source,
    );
  }

  _ImageSelected imageSelected(File image) {
    return _ImageSelected(
      image,
    );
  }

  _Saved saved() {
    return const _Saved();
  }
}

/// @nodoc
const $ChangeCommunityAvatarEvent = _$ChangeCommunityAvatarEventTearOff();

/// @nodoc
mixin _$ChangeCommunityAvatarEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) avatarColorChanged,
    required TResult Function(int index) avatarIconChanged,
    required TResult Function(Uint8List bytes) imageCropped,
    required TResult Function(ImageSource source) loadingCustomImageSelected,
    required TResult Function(File image) imageSelected,
    required TResult Function() saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? avatarColorChanged,
    TResult Function(int index)? avatarIconChanged,
    TResult Function(Uint8List bytes)? imageCropped,
    TResult Function(ImageSource source)? loadingCustomImageSelected,
    TResult Function(File image)? imageSelected,
    TResult Function()? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AvatarColorChanged value) avatarColorChanged,
    required TResult Function(_AvatarIconChanged value) avatarIconChanged,
    required TResult Function(_ImageCropped value) imageCropped,
    required TResult Function(_LoadingCustomImageSelected value)
        loadingCustomImageSelected,
    required TResult Function(_ImageSelected value) imageSelected,
    required TResult Function(_Saved value) saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AvatarColorChanged value)? avatarColorChanged,
    TResult Function(_AvatarIconChanged value)? avatarIconChanged,
    TResult Function(_ImageCropped value)? imageCropped,
    TResult Function(_LoadingCustomImageSelected value)?
        loadingCustomImageSelected,
    TResult Function(_ImageSelected value)? imageSelected,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangeCommunityAvatarEventCopyWith<$Res> {
  factory $ChangeCommunityAvatarEventCopyWith(ChangeCommunityAvatarEvent value,
          $Res Function(ChangeCommunityAvatarEvent) then) =
      _$ChangeCommunityAvatarEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChangeCommunityAvatarEventCopyWithImpl<$Res>
    implements $ChangeCommunityAvatarEventCopyWith<$Res> {
  _$ChangeCommunityAvatarEventCopyWithImpl(this._value, this._then);

  final ChangeCommunityAvatarEvent _value;
  // ignore: unused_field
  final $Res Function(ChangeCommunityAvatarEvent) _then;
}

/// @nodoc
abstract class _$AvatarColorChangedCopyWith<$Res> {
  factory _$AvatarColorChangedCopyWith(
          _AvatarColorChanged value, $Res Function(_AvatarColorChanged) then) =
      __$AvatarColorChangedCopyWithImpl<$Res>;
  $Res call({int index});
}

/// @nodoc
class __$AvatarColorChangedCopyWithImpl<$Res>
    extends _$ChangeCommunityAvatarEventCopyWithImpl<$Res>
    implements _$AvatarColorChangedCopyWith<$Res> {
  __$AvatarColorChangedCopyWithImpl(
      _AvatarColorChanged _value, $Res Function(_AvatarColorChanged) _then)
      : super(_value, (v) => _then(v as _AvatarColorChanged));

  @override
  _AvatarColorChanged get _value => super._value as _AvatarColorChanged;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(_AvatarColorChanged(
      index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_AvatarColorChanged implements _AvatarColorChanged {
  const _$_AvatarColorChanged(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'ChangeCommunityAvatarEvent.avatarColorChanged(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AvatarColorChanged &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(index);

  @JsonKey(ignore: true)
  @override
  _$AvatarColorChangedCopyWith<_AvatarColorChanged> get copyWith =>
      __$AvatarColorChangedCopyWithImpl<_AvatarColorChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) avatarColorChanged,
    required TResult Function(int index) avatarIconChanged,
    required TResult Function(Uint8List bytes) imageCropped,
    required TResult Function(ImageSource source) loadingCustomImageSelected,
    required TResult Function(File image) imageSelected,
    required TResult Function() saved,
  }) {
    return avatarColorChanged(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? avatarColorChanged,
    TResult Function(int index)? avatarIconChanged,
    TResult Function(Uint8List bytes)? imageCropped,
    TResult Function(ImageSource source)? loadingCustomImageSelected,
    TResult Function(File image)? imageSelected,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (avatarColorChanged != null) {
      return avatarColorChanged(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AvatarColorChanged value) avatarColorChanged,
    required TResult Function(_AvatarIconChanged value) avatarIconChanged,
    required TResult Function(_ImageCropped value) imageCropped,
    required TResult Function(_LoadingCustomImageSelected value)
        loadingCustomImageSelected,
    required TResult Function(_ImageSelected value) imageSelected,
    required TResult Function(_Saved value) saved,
  }) {
    return avatarColorChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AvatarColorChanged value)? avatarColorChanged,
    TResult Function(_AvatarIconChanged value)? avatarIconChanged,
    TResult Function(_ImageCropped value)? imageCropped,
    TResult Function(_LoadingCustomImageSelected value)?
        loadingCustomImageSelected,
    TResult Function(_ImageSelected value)? imageSelected,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (avatarColorChanged != null) {
      return avatarColorChanged(this);
    }
    return orElse();
  }
}

abstract class _AvatarColorChanged implements ChangeCommunityAvatarEvent {
  const factory _AvatarColorChanged(int index) = _$_AvatarColorChanged;

  int get index => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$AvatarColorChangedCopyWith<_AvatarColorChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AvatarIconChangedCopyWith<$Res> {
  factory _$AvatarIconChangedCopyWith(
          _AvatarIconChanged value, $Res Function(_AvatarIconChanged) then) =
      __$AvatarIconChangedCopyWithImpl<$Res>;
  $Res call({int index});
}

/// @nodoc
class __$AvatarIconChangedCopyWithImpl<$Res>
    extends _$ChangeCommunityAvatarEventCopyWithImpl<$Res>
    implements _$AvatarIconChangedCopyWith<$Res> {
  __$AvatarIconChangedCopyWithImpl(
      _AvatarIconChanged _value, $Res Function(_AvatarIconChanged) _then)
      : super(_value, (v) => _then(v as _AvatarIconChanged));

  @override
  _AvatarIconChanged get _value => super._value as _AvatarIconChanged;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(_AvatarIconChanged(
      index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_AvatarIconChanged implements _AvatarIconChanged {
  const _$_AvatarIconChanged(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'ChangeCommunityAvatarEvent.avatarIconChanged(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AvatarIconChanged &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(index);

  @JsonKey(ignore: true)
  @override
  _$AvatarIconChangedCopyWith<_AvatarIconChanged> get copyWith =>
      __$AvatarIconChangedCopyWithImpl<_AvatarIconChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) avatarColorChanged,
    required TResult Function(int index) avatarIconChanged,
    required TResult Function(Uint8List bytes) imageCropped,
    required TResult Function(ImageSource source) loadingCustomImageSelected,
    required TResult Function(File image) imageSelected,
    required TResult Function() saved,
  }) {
    return avatarIconChanged(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? avatarColorChanged,
    TResult Function(int index)? avatarIconChanged,
    TResult Function(Uint8List bytes)? imageCropped,
    TResult Function(ImageSource source)? loadingCustomImageSelected,
    TResult Function(File image)? imageSelected,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (avatarIconChanged != null) {
      return avatarIconChanged(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AvatarColorChanged value) avatarColorChanged,
    required TResult Function(_AvatarIconChanged value) avatarIconChanged,
    required TResult Function(_ImageCropped value) imageCropped,
    required TResult Function(_LoadingCustomImageSelected value)
        loadingCustomImageSelected,
    required TResult Function(_ImageSelected value) imageSelected,
    required TResult Function(_Saved value) saved,
  }) {
    return avatarIconChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AvatarColorChanged value)? avatarColorChanged,
    TResult Function(_AvatarIconChanged value)? avatarIconChanged,
    TResult Function(_ImageCropped value)? imageCropped,
    TResult Function(_LoadingCustomImageSelected value)?
        loadingCustomImageSelected,
    TResult Function(_ImageSelected value)? imageSelected,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (avatarIconChanged != null) {
      return avatarIconChanged(this);
    }
    return orElse();
  }
}

abstract class _AvatarIconChanged implements ChangeCommunityAvatarEvent {
  const factory _AvatarIconChanged(int index) = _$_AvatarIconChanged;

  int get index => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$AvatarIconChangedCopyWith<_AvatarIconChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ImageCroppedCopyWith<$Res> {
  factory _$ImageCroppedCopyWith(
          _ImageCropped value, $Res Function(_ImageCropped) then) =
      __$ImageCroppedCopyWithImpl<$Res>;
  $Res call({Uint8List bytes});
}

/// @nodoc
class __$ImageCroppedCopyWithImpl<$Res>
    extends _$ChangeCommunityAvatarEventCopyWithImpl<$Res>
    implements _$ImageCroppedCopyWith<$Res> {
  __$ImageCroppedCopyWithImpl(
      _ImageCropped _value, $Res Function(_ImageCropped) _then)
      : super(_value, (v) => _then(v as _ImageCropped));

  @override
  _ImageCropped get _value => super._value as _ImageCropped;

  @override
  $Res call({
    Object? bytes = freezed,
  }) {
    return _then(_ImageCropped(
      bytes == freezed
          ? _value.bytes
          : bytes // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ));
  }
}

/// @nodoc

class _$_ImageCropped implements _ImageCropped {
  const _$_ImageCropped(this.bytes);

  @override
  final Uint8List bytes;

  @override
  String toString() {
    return 'ChangeCommunityAvatarEvent.imageCropped(bytes: $bytes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ImageCropped &&
            (identical(other.bytes, bytes) ||
                const DeepCollectionEquality().equals(other.bytes, bytes)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(bytes);

  @JsonKey(ignore: true)
  @override
  _$ImageCroppedCopyWith<_ImageCropped> get copyWith =>
      __$ImageCroppedCopyWithImpl<_ImageCropped>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) avatarColorChanged,
    required TResult Function(int index) avatarIconChanged,
    required TResult Function(Uint8List bytes) imageCropped,
    required TResult Function(ImageSource source) loadingCustomImageSelected,
    required TResult Function(File image) imageSelected,
    required TResult Function() saved,
  }) {
    return imageCropped(bytes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? avatarColorChanged,
    TResult Function(int index)? avatarIconChanged,
    TResult Function(Uint8List bytes)? imageCropped,
    TResult Function(ImageSource source)? loadingCustomImageSelected,
    TResult Function(File image)? imageSelected,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (imageCropped != null) {
      return imageCropped(bytes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AvatarColorChanged value) avatarColorChanged,
    required TResult Function(_AvatarIconChanged value) avatarIconChanged,
    required TResult Function(_ImageCropped value) imageCropped,
    required TResult Function(_LoadingCustomImageSelected value)
        loadingCustomImageSelected,
    required TResult Function(_ImageSelected value) imageSelected,
    required TResult Function(_Saved value) saved,
  }) {
    return imageCropped(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AvatarColorChanged value)? avatarColorChanged,
    TResult Function(_AvatarIconChanged value)? avatarIconChanged,
    TResult Function(_ImageCropped value)? imageCropped,
    TResult Function(_LoadingCustomImageSelected value)?
        loadingCustomImageSelected,
    TResult Function(_ImageSelected value)? imageSelected,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (imageCropped != null) {
      return imageCropped(this);
    }
    return orElse();
  }
}

abstract class _ImageCropped implements ChangeCommunityAvatarEvent {
  const factory _ImageCropped(Uint8List bytes) = _$_ImageCropped;

  Uint8List get bytes => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ImageCroppedCopyWith<_ImageCropped> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadingCustomImageSelectedCopyWith<$Res> {
  factory _$LoadingCustomImageSelectedCopyWith(
          _LoadingCustomImageSelected value,
          $Res Function(_LoadingCustomImageSelected) then) =
      __$LoadingCustomImageSelectedCopyWithImpl<$Res>;
  $Res call({ImageSource source});
}

/// @nodoc
class __$LoadingCustomImageSelectedCopyWithImpl<$Res>
    extends _$ChangeCommunityAvatarEventCopyWithImpl<$Res>
    implements _$LoadingCustomImageSelectedCopyWith<$Res> {
  __$LoadingCustomImageSelectedCopyWithImpl(_LoadingCustomImageSelected _value,
      $Res Function(_LoadingCustomImageSelected) _then)
      : super(_value, (v) => _then(v as _LoadingCustomImageSelected));

  @override
  _LoadingCustomImageSelected get _value =>
      super._value as _LoadingCustomImageSelected;

  @override
  $Res call({
    Object? source = freezed,
  }) {
    return _then(_LoadingCustomImageSelected(
      source == freezed
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as ImageSource,
    ));
  }
}

/// @nodoc

class _$_LoadingCustomImageSelected implements _LoadingCustomImageSelected {
  const _$_LoadingCustomImageSelected(this.source);

  @override
  final ImageSource source;

  @override
  String toString() {
    return 'ChangeCommunityAvatarEvent.loadingCustomImageSelected(source: $source)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadingCustomImageSelected &&
            (identical(other.source, source) ||
                const DeepCollectionEquality().equals(other.source, source)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(source);

  @JsonKey(ignore: true)
  @override
  _$LoadingCustomImageSelectedCopyWith<_LoadingCustomImageSelected>
      get copyWith => __$LoadingCustomImageSelectedCopyWithImpl<
          _LoadingCustomImageSelected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) avatarColorChanged,
    required TResult Function(int index) avatarIconChanged,
    required TResult Function(Uint8List bytes) imageCropped,
    required TResult Function(ImageSource source) loadingCustomImageSelected,
    required TResult Function(File image) imageSelected,
    required TResult Function() saved,
  }) {
    return loadingCustomImageSelected(source);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? avatarColorChanged,
    TResult Function(int index)? avatarIconChanged,
    TResult Function(Uint8List bytes)? imageCropped,
    TResult Function(ImageSource source)? loadingCustomImageSelected,
    TResult Function(File image)? imageSelected,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (loadingCustomImageSelected != null) {
      return loadingCustomImageSelected(source);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AvatarColorChanged value) avatarColorChanged,
    required TResult Function(_AvatarIconChanged value) avatarIconChanged,
    required TResult Function(_ImageCropped value) imageCropped,
    required TResult Function(_LoadingCustomImageSelected value)
        loadingCustomImageSelected,
    required TResult Function(_ImageSelected value) imageSelected,
    required TResult Function(_Saved value) saved,
  }) {
    return loadingCustomImageSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AvatarColorChanged value)? avatarColorChanged,
    TResult Function(_AvatarIconChanged value)? avatarIconChanged,
    TResult Function(_ImageCropped value)? imageCropped,
    TResult Function(_LoadingCustomImageSelected value)?
        loadingCustomImageSelected,
    TResult Function(_ImageSelected value)? imageSelected,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (loadingCustomImageSelected != null) {
      return loadingCustomImageSelected(this);
    }
    return orElse();
  }
}

abstract class _LoadingCustomImageSelected
    implements ChangeCommunityAvatarEvent {
  const factory _LoadingCustomImageSelected(ImageSource source) =
      _$_LoadingCustomImageSelected;

  ImageSource get source => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadingCustomImageSelectedCopyWith<_LoadingCustomImageSelected>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ImageSelectedCopyWith<$Res> {
  factory _$ImageSelectedCopyWith(
          _ImageSelected value, $Res Function(_ImageSelected) then) =
      __$ImageSelectedCopyWithImpl<$Res>;
  $Res call({File image});
}

/// @nodoc
class __$ImageSelectedCopyWithImpl<$Res>
    extends _$ChangeCommunityAvatarEventCopyWithImpl<$Res>
    implements _$ImageSelectedCopyWith<$Res> {
  __$ImageSelectedCopyWithImpl(
      _ImageSelected _value, $Res Function(_ImageSelected) _then)
      : super(_value, (v) => _then(v as _ImageSelected));

  @override
  _ImageSelected get _value => super._value as _ImageSelected;

  @override
  $Res call({
    Object? image = freezed,
  }) {
    return _then(_ImageSelected(
      image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as File,
    ));
  }
}

/// @nodoc

class _$_ImageSelected implements _ImageSelected {
  const _$_ImageSelected(this.image);

  @override
  final File image;

  @override
  String toString() {
    return 'ChangeCommunityAvatarEvent.imageSelected(image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ImageSelected &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(image);

  @JsonKey(ignore: true)
  @override
  _$ImageSelectedCopyWith<_ImageSelected> get copyWith =>
      __$ImageSelectedCopyWithImpl<_ImageSelected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) avatarColorChanged,
    required TResult Function(int index) avatarIconChanged,
    required TResult Function(Uint8List bytes) imageCropped,
    required TResult Function(ImageSource source) loadingCustomImageSelected,
    required TResult Function(File image) imageSelected,
    required TResult Function() saved,
  }) {
    return imageSelected(image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? avatarColorChanged,
    TResult Function(int index)? avatarIconChanged,
    TResult Function(Uint8List bytes)? imageCropped,
    TResult Function(ImageSource source)? loadingCustomImageSelected,
    TResult Function(File image)? imageSelected,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (imageSelected != null) {
      return imageSelected(image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AvatarColorChanged value) avatarColorChanged,
    required TResult Function(_AvatarIconChanged value) avatarIconChanged,
    required TResult Function(_ImageCropped value) imageCropped,
    required TResult Function(_LoadingCustomImageSelected value)
        loadingCustomImageSelected,
    required TResult Function(_ImageSelected value) imageSelected,
    required TResult Function(_Saved value) saved,
  }) {
    return imageSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AvatarColorChanged value)? avatarColorChanged,
    TResult Function(_AvatarIconChanged value)? avatarIconChanged,
    TResult Function(_ImageCropped value)? imageCropped,
    TResult Function(_LoadingCustomImageSelected value)?
        loadingCustomImageSelected,
    TResult Function(_ImageSelected value)? imageSelected,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (imageSelected != null) {
      return imageSelected(this);
    }
    return orElse();
  }
}

abstract class _ImageSelected implements ChangeCommunityAvatarEvent {
  const factory _ImageSelected(File image) = _$_ImageSelected;

  File get image => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ImageSelectedCopyWith<_ImageSelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SavedCopyWith<$Res> {
  factory _$SavedCopyWith(_Saved value, $Res Function(_Saved) then) =
      __$SavedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SavedCopyWithImpl<$Res>
    extends _$ChangeCommunityAvatarEventCopyWithImpl<$Res>
    implements _$SavedCopyWith<$Res> {
  __$SavedCopyWithImpl(_Saved _value, $Res Function(_Saved) _then)
      : super(_value, (v) => _then(v as _Saved));

  @override
  _Saved get _value => super._value as _Saved;
}

/// @nodoc

class _$_Saved implements _Saved {
  const _$_Saved();

  @override
  String toString() {
    return 'ChangeCommunityAvatarEvent.saved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Saved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) avatarColorChanged,
    required TResult Function(int index) avatarIconChanged,
    required TResult Function(Uint8List bytes) imageCropped,
    required TResult Function(ImageSource source) loadingCustomImageSelected,
    required TResult Function(File image) imageSelected,
    required TResult Function() saved,
  }) {
    return saved();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? avatarColorChanged,
    TResult Function(int index)? avatarIconChanged,
    TResult Function(Uint8List bytes)? imageCropped,
    TResult Function(ImageSource source)? loadingCustomImageSelected,
    TResult Function(File image)? imageSelected,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AvatarColorChanged value) avatarColorChanged,
    required TResult Function(_AvatarIconChanged value) avatarIconChanged,
    required TResult Function(_ImageCropped value) imageCropped,
    required TResult Function(_LoadingCustomImageSelected value)
        loadingCustomImageSelected,
    required TResult Function(_ImageSelected value) imageSelected,
    required TResult Function(_Saved value) saved,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AvatarColorChanged value)? avatarColorChanged,
    TResult Function(_AvatarIconChanged value)? avatarIconChanged,
    TResult Function(_ImageCropped value)? imageCropped,
    TResult Function(_LoadingCustomImageSelected value)?
        loadingCustomImageSelected,
    TResult Function(_ImageSelected value)? imageSelected,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _Saved implements ChangeCommunityAvatarEvent {
  const factory _Saved() = _$_Saved;
}

/// @nodoc
class _$ChangeCommunityAvatarStateTearOff {
  const _$ChangeCommunityAvatarStateTearOff();

  _ChangeCommunityAvatarState call(
      {required bool hasAnyChanged,
      required int iconIndex,
      required int colorIndex,
      required Option<Uint8List> croppedImage,
      required Option<Uint8List> selectedImage,
      required bool saving,
      required Option<bool> success}) {
    return _ChangeCommunityAvatarState(
      hasAnyChanged: hasAnyChanged,
      iconIndex: iconIndex,
      colorIndex: colorIndex,
      croppedImage: croppedImage,
      selectedImage: selectedImage,
      saving: saving,
      success: success,
    );
  }
}

/// @nodoc
const $ChangeCommunityAvatarState = _$ChangeCommunityAvatarStateTearOff();

/// @nodoc
mixin _$ChangeCommunityAvatarState {
  bool get hasAnyChanged => throw _privateConstructorUsedError;
  int get iconIndex => throw _privateConstructorUsedError;
  int get colorIndex => throw _privateConstructorUsedError;
  Option<Uint8List> get croppedImage => throw _privateConstructorUsedError;
  Option<Uint8List> get selectedImage => throw _privateConstructorUsedError;
  bool get saving => throw _privateConstructorUsedError;
  Option<bool> get success => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChangeCommunityAvatarStateCopyWith<ChangeCommunityAvatarState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangeCommunityAvatarStateCopyWith<$Res> {
  factory $ChangeCommunityAvatarStateCopyWith(ChangeCommunityAvatarState value,
          $Res Function(ChangeCommunityAvatarState) then) =
      _$ChangeCommunityAvatarStateCopyWithImpl<$Res>;
  $Res call(
      {bool hasAnyChanged,
      int iconIndex,
      int colorIndex,
      Option<Uint8List> croppedImage,
      Option<Uint8List> selectedImage,
      bool saving,
      Option<bool> success});
}

/// @nodoc
class _$ChangeCommunityAvatarStateCopyWithImpl<$Res>
    implements $ChangeCommunityAvatarStateCopyWith<$Res> {
  _$ChangeCommunityAvatarStateCopyWithImpl(this._value, this._then);

  final ChangeCommunityAvatarState _value;
  // ignore: unused_field
  final $Res Function(ChangeCommunityAvatarState) _then;

  @override
  $Res call({
    Object? hasAnyChanged = freezed,
    Object? iconIndex = freezed,
    Object? colorIndex = freezed,
    Object? croppedImage = freezed,
    Object? selectedImage = freezed,
    Object? saving = freezed,
    Object? success = freezed,
  }) {
    return _then(_value.copyWith(
      hasAnyChanged: hasAnyChanged == freezed
          ? _value.hasAnyChanged
          : hasAnyChanged // ignore: cast_nullable_to_non_nullable
              as bool,
      iconIndex: iconIndex == freezed
          ? _value.iconIndex
          : iconIndex // ignore: cast_nullable_to_non_nullable
              as int,
      colorIndex: colorIndex == freezed
          ? _value.colorIndex
          : colorIndex // ignore: cast_nullable_to_non_nullable
              as int,
      croppedImage: croppedImage == freezed
          ? _value.croppedImage
          : croppedImage // ignore: cast_nullable_to_non_nullable
              as Option<Uint8List>,
      selectedImage: selectedImage == freezed
          ? _value.selectedImage
          : selectedImage // ignore: cast_nullable_to_non_nullable
              as Option<Uint8List>,
      saving: saving == freezed
          ? _value.saving
          : saving // ignore: cast_nullable_to_non_nullable
              as bool,
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as Option<bool>,
    ));
  }
}

/// @nodoc
abstract class _$ChangeCommunityAvatarStateCopyWith<$Res>
    implements $ChangeCommunityAvatarStateCopyWith<$Res> {
  factory _$ChangeCommunityAvatarStateCopyWith(
          _ChangeCommunityAvatarState value,
          $Res Function(_ChangeCommunityAvatarState) then) =
      __$ChangeCommunityAvatarStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool hasAnyChanged,
      int iconIndex,
      int colorIndex,
      Option<Uint8List> croppedImage,
      Option<Uint8List> selectedImage,
      bool saving,
      Option<bool> success});
}

/// @nodoc
class __$ChangeCommunityAvatarStateCopyWithImpl<$Res>
    extends _$ChangeCommunityAvatarStateCopyWithImpl<$Res>
    implements _$ChangeCommunityAvatarStateCopyWith<$Res> {
  __$ChangeCommunityAvatarStateCopyWithImpl(_ChangeCommunityAvatarState _value,
      $Res Function(_ChangeCommunityAvatarState) _then)
      : super(_value, (v) => _then(v as _ChangeCommunityAvatarState));

  @override
  _ChangeCommunityAvatarState get _value =>
      super._value as _ChangeCommunityAvatarState;

  @override
  $Res call({
    Object? hasAnyChanged = freezed,
    Object? iconIndex = freezed,
    Object? colorIndex = freezed,
    Object? croppedImage = freezed,
    Object? selectedImage = freezed,
    Object? saving = freezed,
    Object? success = freezed,
  }) {
    return _then(_ChangeCommunityAvatarState(
      hasAnyChanged: hasAnyChanged == freezed
          ? _value.hasAnyChanged
          : hasAnyChanged // ignore: cast_nullable_to_non_nullable
              as bool,
      iconIndex: iconIndex == freezed
          ? _value.iconIndex
          : iconIndex // ignore: cast_nullable_to_non_nullable
              as int,
      colorIndex: colorIndex == freezed
          ? _value.colorIndex
          : colorIndex // ignore: cast_nullable_to_non_nullable
              as int,
      croppedImage: croppedImage == freezed
          ? _value.croppedImage
          : croppedImage // ignore: cast_nullable_to_non_nullable
              as Option<Uint8List>,
      selectedImage: selectedImage == freezed
          ? _value.selectedImage
          : selectedImage // ignore: cast_nullable_to_non_nullable
              as Option<Uint8List>,
      saving: saving == freezed
          ? _value.saving
          : saving // ignore: cast_nullable_to_non_nullable
              as bool,
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as Option<bool>,
    ));
  }
}

/// @nodoc

class _$_ChangeCommunityAvatarState implements _ChangeCommunityAvatarState {
  const _$_ChangeCommunityAvatarState(
      {required this.hasAnyChanged,
      required this.iconIndex,
      required this.colorIndex,
      required this.croppedImage,
      required this.selectedImage,
      required this.saving,
      required this.success});

  @override
  final bool hasAnyChanged;
  @override
  final int iconIndex;
  @override
  final int colorIndex;
  @override
  final Option<Uint8List> croppedImage;
  @override
  final Option<Uint8List> selectedImage;
  @override
  final bool saving;
  @override
  final Option<bool> success;

  @override
  String toString() {
    return 'ChangeCommunityAvatarState(hasAnyChanged: $hasAnyChanged, iconIndex: $iconIndex, colorIndex: $colorIndex, croppedImage: $croppedImage, selectedImage: $selectedImage, saving: $saving, success: $success)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangeCommunityAvatarState &&
            (identical(other.hasAnyChanged, hasAnyChanged) ||
                const DeepCollectionEquality()
                    .equals(other.hasAnyChanged, hasAnyChanged)) &&
            (identical(other.iconIndex, iconIndex) ||
                const DeepCollectionEquality()
                    .equals(other.iconIndex, iconIndex)) &&
            (identical(other.colorIndex, colorIndex) ||
                const DeepCollectionEquality()
                    .equals(other.colorIndex, colorIndex)) &&
            (identical(other.croppedImage, croppedImage) ||
                const DeepCollectionEquality()
                    .equals(other.croppedImage, croppedImage)) &&
            (identical(other.selectedImage, selectedImage) ||
                const DeepCollectionEquality()
                    .equals(other.selectedImage, selectedImage)) &&
            (identical(other.saving, saving) ||
                const DeepCollectionEquality().equals(other.saving, saving)) &&
            (identical(other.success, success) ||
                const DeepCollectionEquality().equals(other.success, success)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(hasAnyChanged) ^
      const DeepCollectionEquality().hash(iconIndex) ^
      const DeepCollectionEquality().hash(colorIndex) ^
      const DeepCollectionEquality().hash(croppedImage) ^
      const DeepCollectionEquality().hash(selectedImage) ^
      const DeepCollectionEquality().hash(saving) ^
      const DeepCollectionEquality().hash(success);

  @JsonKey(ignore: true)
  @override
  _$ChangeCommunityAvatarStateCopyWith<_ChangeCommunityAvatarState>
      get copyWith => __$ChangeCommunityAvatarStateCopyWithImpl<
          _ChangeCommunityAvatarState>(this, _$identity);
}

abstract class _ChangeCommunityAvatarState
    implements ChangeCommunityAvatarState {
  const factory _ChangeCommunityAvatarState(
      {required bool hasAnyChanged,
      required int iconIndex,
      required int colorIndex,
      required Option<Uint8List> croppedImage,
      required Option<Uint8List> selectedImage,
      required bool saving,
      required Option<bool> success}) = _$_ChangeCommunityAvatarState;

  @override
  bool get hasAnyChanged => throw _privateConstructorUsedError;
  @override
  int get iconIndex => throw _privateConstructorUsedError;
  @override
  int get colorIndex => throw _privateConstructorUsedError;
  @override
  Option<Uint8List> get croppedImage => throw _privateConstructorUsedError;
  @override
  Option<Uint8List> get selectedImage => throw _privateConstructorUsedError;
  @override
  bool get saving => throw _privateConstructorUsedError;
  @override
  Option<bool> get success => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ChangeCommunityAvatarStateCopyWith<_ChangeCommunityAvatarState>
      get copyWith => throw _privateConstructorUsedError;
}
