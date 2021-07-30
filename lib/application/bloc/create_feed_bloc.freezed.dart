// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'create_feed_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CreateFeedEventTearOff {
  const _$CreateFeedEventTearOff();

  _FeedTypeChanged feedTypeChanged(
      {required int index,
      required bool autofocus,
      required Future<bool?> Function() showDialog}) {
    return _FeedTypeChanged(
      index: index,
      autofocus: autofocus,
      showDialog: showDialog,
    );
  }

  _TitleChanged titleChanged(String title) {
    return _TitleChanged(
      title,
    );
  }

  _BodyTextChanged bodyTextChanged(String bodyText) {
    return _BodyTextChanged(
      bodyText,
    );
  }

  _UrlChanged urlChanged(String url) {
    return _UrlChanged(
      url,
    );
  }

  _PollEndsPressed pollEndsPressed(
      {required Future<int?> Function(Days) showDays}) {
    return _PollEndsPressed(
      showDays: showDays,
    );
  }

  _PollOptionAdded pollOptionAdded(String option) {
    return _PollOptionAdded(
      option,
    );
  }

  _PollOptionEdited pollOptionEdited(int index, String option) {
    return _PollOptionEdited(
      index,
      option,
    );
  }

  _PollOptionDeleted pollOptionDeleted(int index) {
    return _PollOptionDeleted(
      index,
    );
  }

  _AddImageClicked addImageClicked() {
    return const _AddImageClicked();
  }

  _ImageDeleted imageDeleted(String id) {
    return _ImageDeleted(
      id,
    );
  }

  _RecoverLastDeletedImage recoverLastDeletedImage() {
    return const _RecoverLastDeletedImage();
  }

  _FeedPosted feedPosted() {
    return const _FeedPosted();
  }
}

/// @nodoc
const $CreateFeedEvent = _$CreateFeedEventTearOff();

/// @nodoc
mixin _$CreateFeedEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int index, bool autofocus, Future<bool?> Function() showDialog)
        feedTypeChanged,
    required TResult Function(String title) titleChanged,
    required TResult Function(String bodyText) bodyTextChanged,
    required TResult Function(String url) urlChanged,
    required TResult Function(Future<int?> Function(Days) showDays)
        pollEndsPressed,
    required TResult Function(String option) pollOptionAdded,
    required TResult Function(int index, String option) pollOptionEdited,
    required TResult Function(int index) pollOptionDeleted,
    required TResult Function() addImageClicked,
    required TResult Function(String id) imageDeleted,
    required TResult Function() recoverLastDeletedImage,
    required TResult Function() feedPosted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int index, bool autofocus, Future<bool?> Function() showDialog)?
        feedTypeChanged,
    TResult Function(String title)? titleChanged,
    TResult Function(String bodyText)? bodyTextChanged,
    TResult Function(String url)? urlChanged,
    TResult Function(Future<int?> Function(Days) showDays)? pollEndsPressed,
    TResult Function(String option)? pollOptionAdded,
    TResult Function(int index, String option)? pollOptionEdited,
    TResult Function(int index)? pollOptionDeleted,
    TResult Function()? addImageClicked,
    TResult Function(String id)? imageDeleted,
    TResult Function()? recoverLastDeletedImage,
    TResult Function()? feedPosted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FeedTypeChanged value) feedTypeChanged,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_BodyTextChanged value) bodyTextChanged,
    required TResult Function(_UrlChanged value) urlChanged,
    required TResult Function(_PollEndsPressed value) pollEndsPressed,
    required TResult Function(_PollOptionAdded value) pollOptionAdded,
    required TResult Function(_PollOptionEdited value) pollOptionEdited,
    required TResult Function(_PollOptionDeleted value) pollOptionDeleted,
    required TResult Function(_AddImageClicked value) addImageClicked,
    required TResult Function(_ImageDeleted value) imageDeleted,
    required TResult Function(_RecoverLastDeletedImage value)
        recoverLastDeletedImage,
    required TResult Function(_FeedPosted value) feedPosted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FeedTypeChanged value)? feedTypeChanged,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_BodyTextChanged value)? bodyTextChanged,
    TResult Function(_UrlChanged value)? urlChanged,
    TResult Function(_PollEndsPressed value)? pollEndsPressed,
    TResult Function(_PollOptionAdded value)? pollOptionAdded,
    TResult Function(_PollOptionEdited value)? pollOptionEdited,
    TResult Function(_PollOptionDeleted value)? pollOptionDeleted,
    TResult Function(_AddImageClicked value)? addImageClicked,
    TResult Function(_ImageDeleted value)? imageDeleted,
    TResult Function(_RecoverLastDeletedImage value)? recoverLastDeletedImage,
    TResult Function(_FeedPosted value)? feedPosted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateFeedEventCopyWith<$Res> {
  factory $CreateFeedEventCopyWith(
          CreateFeedEvent value, $Res Function(CreateFeedEvent) then) =
      _$CreateFeedEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CreateFeedEventCopyWithImpl<$Res>
    implements $CreateFeedEventCopyWith<$Res> {
  _$CreateFeedEventCopyWithImpl(this._value, this._then);

  final CreateFeedEvent _value;
  // ignore: unused_field
  final $Res Function(CreateFeedEvent) _then;
}

/// @nodoc
abstract class _$FeedTypeChangedCopyWith<$Res> {
  factory _$FeedTypeChangedCopyWith(
          _FeedTypeChanged value, $Res Function(_FeedTypeChanged) then) =
      __$FeedTypeChangedCopyWithImpl<$Res>;
  $Res call({int index, bool autofocus, Future<bool?> Function() showDialog});
}

/// @nodoc
class __$FeedTypeChangedCopyWithImpl<$Res>
    extends _$CreateFeedEventCopyWithImpl<$Res>
    implements _$FeedTypeChangedCopyWith<$Res> {
  __$FeedTypeChangedCopyWithImpl(
      _FeedTypeChanged _value, $Res Function(_FeedTypeChanged) _then)
      : super(_value, (v) => _then(v as _FeedTypeChanged));

  @override
  _FeedTypeChanged get _value => super._value as _FeedTypeChanged;

  @override
  $Res call({
    Object? index = freezed,
    Object? autofocus = freezed,
    Object? showDialog = freezed,
  }) {
    return _then(_FeedTypeChanged(
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      autofocus: autofocus == freezed
          ? _value.autofocus
          : autofocus // ignore: cast_nullable_to_non_nullable
              as bool,
      showDialog: showDialog == freezed
          ? _value.showDialog
          : showDialog // ignore: cast_nullable_to_non_nullable
              as Future<bool?> Function(),
    ));
  }
}

/// @nodoc

class _$_FeedTypeChanged implements _FeedTypeChanged {
  const _$_FeedTypeChanged(
      {required this.index, required this.autofocus, required this.showDialog});

  @override
  final int index;
  @override
  final bool autofocus;
  @override
  final Future<bool?> Function() showDialog;

  @override
  String toString() {
    return 'CreateFeedEvent.feedTypeChanged(index: $index, autofocus: $autofocus, showDialog: $showDialog)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FeedTypeChanged &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)) &&
            (identical(other.autofocus, autofocus) ||
                const DeepCollectionEquality()
                    .equals(other.autofocus, autofocus)) &&
            (identical(other.showDialog, showDialog) ||
                const DeepCollectionEquality()
                    .equals(other.showDialog, showDialog)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(index) ^
      const DeepCollectionEquality().hash(autofocus) ^
      const DeepCollectionEquality().hash(showDialog);

  @JsonKey(ignore: true)
  @override
  _$FeedTypeChangedCopyWith<_FeedTypeChanged> get copyWith =>
      __$FeedTypeChangedCopyWithImpl<_FeedTypeChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int index, bool autofocus, Future<bool?> Function() showDialog)
        feedTypeChanged,
    required TResult Function(String title) titleChanged,
    required TResult Function(String bodyText) bodyTextChanged,
    required TResult Function(String url) urlChanged,
    required TResult Function(Future<int?> Function(Days) showDays)
        pollEndsPressed,
    required TResult Function(String option) pollOptionAdded,
    required TResult Function(int index, String option) pollOptionEdited,
    required TResult Function(int index) pollOptionDeleted,
    required TResult Function() addImageClicked,
    required TResult Function(String id) imageDeleted,
    required TResult Function() recoverLastDeletedImage,
    required TResult Function() feedPosted,
  }) {
    return feedTypeChanged(index, autofocus, showDialog);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int index, bool autofocus, Future<bool?> Function() showDialog)?
        feedTypeChanged,
    TResult Function(String title)? titleChanged,
    TResult Function(String bodyText)? bodyTextChanged,
    TResult Function(String url)? urlChanged,
    TResult Function(Future<int?> Function(Days) showDays)? pollEndsPressed,
    TResult Function(String option)? pollOptionAdded,
    TResult Function(int index, String option)? pollOptionEdited,
    TResult Function(int index)? pollOptionDeleted,
    TResult Function()? addImageClicked,
    TResult Function(String id)? imageDeleted,
    TResult Function()? recoverLastDeletedImage,
    TResult Function()? feedPosted,
    required TResult orElse(),
  }) {
    if (feedTypeChanged != null) {
      return feedTypeChanged(index, autofocus, showDialog);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FeedTypeChanged value) feedTypeChanged,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_BodyTextChanged value) bodyTextChanged,
    required TResult Function(_UrlChanged value) urlChanged,
    required TResult Function(_PollEndsPressed value) pollEndsPressed,
    required TResult Function(_PollOptionAdded value) pollOptionAdded,
    required TResult Function(_PollOptionEdited value) pollOptionEdited,
    required TResult Function(_PollOptionDeleted value) pollOptionDeleted,
    required TResult Function(_AddImageClicked value) addImageClicked,
    required TResult Function(_ImageDeleted value) imageDeleted,
    required TResult Function(_RecoverLastDeletedImage value)
        recoverLastDeletedImage,
    required TResult Function(_FeedPosted value) feedPosted,
  }) {
    return feedTypeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FeedTypeChanged value)? feedTypeChanged,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_BodyTextChanged value)? bodyTextChanged,
    TResult Function(_UrlChanged value)? urlChanged,
    TResult Function(_PollEndsPressed value)? pollEndsPressed,
    TResult Function(_PollOptionAdded value)? pollOptionAdded,
    TResult Function(_PollOptionEdited value)? pollOptionEdited,
    TResult Function(_PollOptionDeleted value)? pollOptionDeleted,
    TResult Function(_AddImageClicked value)? addImageClicked,
    TResult Function(_ImageDeleted value)? imageDeleted,
    TResult Function(_RecoverLastDeletedImage value)? recoverLastDeletedImage,
    TResult Function(_FeedPosted value)? feedPosted,
    required TResult orElse(),
  }) {
    if (feedTypeChanged != null) {
      return feedTypeChanged(this);
    }
    return orElse();
  }
}

abstract class _FeedTypeChanged implements CreateFeedEvent {
  const factory _FeedTypeChanged(
      {required int index,
      required bool autofocus,
      required Future<bool?> Function() showDialog}) = _$_FeedTypeChanged;

  int get index => throw _privateConstructorUsedError;
  bool get autofocus => throw _privateConstructorUsedError;
  Future<bool?> Function() get showDialog => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$FeedTypeChangedCopyWith<_FeedTypeChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$TitleChangedCopyWith<$Res> {
  factory _$TitleChangedCopyWith(
          _TitleChanged value, $Res Function(_TitleChanged) then) =
      __$TitleChangedCopyWithImpl<$Res>;
  $Res call({String title});
}

/// @nodoc
class __$TitleChangedCopyWithImpl<$Res>
    extends _$CreateFeedEventCopyWithImpl<$Res>
    implements _$TitleChangedCopyWith<$Res> {
  __$TitleChangedCopyWithImpl(
      _TitleChanged _value, $Res Function(_TitleChanged) _then)
      : super(_value, (v) => _then(v as _TitleChanged));

  @override
  _TitleChanged get _value => super._value as _TitleChanged;

  @override
  $Res call({
    Object? title = freezed,
  }) {
    return _then(_TitleChanged(
      title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TitleChanged implements _TitleChanged {
  const _$_TitleChanged(this.title);

  @override
  final String title;

  @override
  String toString() {
    return 'CreateFeedEvent.titleChanged(title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TitleChanged &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(title);

  @JsonKey(ignore: true)
  @override
  _$TitleChangedCopyWith<_TitleChanged> get copyWith =>
      __$TitleChangedCopyWithImpl<_TitleChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int index, bool autofocus, Future<bool?> Function() showDialog)
        feedTypeChanged,
    required TResult Function(String title) titleChanged,
    required TResult Function(String bodyText) bodyTextChanged,
    required TResult Function(String url) urlChanged,
    required TResult Function(Future<int?> Function(Days) showDays)
        pollEndsPressed,
    required TResult Function(String option) pollOptionAdded,
    required TResult Function(int index, String option) pollOptionEdited,
    required TResult Function(int index) pollOptionDeleted,
    required TResult Function() addImageClicked,
    required TResult Function(String id) imageDeleted,
    required TResult Function() recoverLastDeletedImage,
    required TResult Function() feedPosted,
  }) {
    return titleChanged(title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int index, bool autofocus, Future<bool?> Function() showDialog)?
        feedTypeChanged,
    TResult Function(String title)? titleChanged,
    TResult Function(String bodyText)? bodyTextChanged,
    TResult Function(String url)? urlChanged,
    TResult Function(Future<int?> Function(Days) showDays)? pollEndsPressed,
    TResult Function(String option)? pollOptionAdded,
    TResult Function(int index, String option)? pollOptionEdited,
    TResult Function(int index)? pollOptionDeleted,
    TResult Function()? addImageClicked,
    TResult Function(String id)? imageDeleted,
    TResult Function()? recoverLastDeletedImage,
    TResult Function()? feedPosted,
    required TResult orElse(),
  }) {
    if (titleChanged != null) {
      return titleChanged(title);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FeedTypeChanged value) feedTypeChanged,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_BodyTextChanged value) bodyTextChanged,
    required TResult Function(_UrlChanged value) urlChanged,
    required TResult Function(_PollEndsPressed value) pollEndsPressed,
    required TResult Function(_PollOptionAdded value) pollOptionAdded,
    required TResult Function(_PollOptionEdited value) pollOptionEdited,
    required TResult Function(_PollOptionDeleted value) pollOptionDeleted,
    required TResult Function(_AddImageClicked value) addImageClicked,
    required TResult Function(_ImageDeleted value) imageDeleted,
    required TResult Function(_RecoverLastDeletedImage value)
        recoverLastDeletedImage,
    required TResult Function(_FeedPosted value) feedPosted,
  }) {
    return titleChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FeedTypeChanged value)? feedTypeChanged,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_BodyTextChanged value)? bodyTextChanged,
    TResult Function(_UrlChanged value)? urlChanged,
    TResult Function(_PollEndsPressed value)? pollEndsPressed,
    TResult Function(_PollOptionAdded value)? pollOptionAdded,
    TResult Function(_PollOptionEdited value)? pollOptionEdited,
    TResult Function(_PollOptionDeleted value)? pollOptionDeleted,
    TResult Function(_AddImageClicked value)? addImageClicked,
    TResult Function(_ImageDeleted value)? imageDeleted,
    TResult Function(_RecoverLastDeletedImage value)? recoverLastDeletedImage,
    TResult Function(_FeedPosted value)? feedPosted,
    required TResult orElse(),
  }) {
    if (titleChanged != null) {
      return titleChanged(this);
    }
    return orElse();
  }
}

abstract class _TitleChanged implements CreateFeedEvent {
  const factory _TitleChanged(String title) = _$_TitleChanged;

  String get title => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$TitleChangedCopyWith<_TitleChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$BodyTextChangedCopyWith<$Res> {
  factory _$BodyTextChangedCopyWith(
          _BodyTextChanged value, $Res Function(_BodyTextChanged) then) =
      __$BodyTextChangedCopyWithImpl<$Res>;
  $Res call({String bodyText});
}

/// @nodoc
class __$BodyTextChangedCopyWithImpl<$Res>
    extends _$CreateFeedEventCopyWithImpl<$Res>
    implements _$BodyTextChangedCopyWith<$Res> {
  __$BodyTextChangedCopyWithImpl(
      _BodyTextChanged _value, $Res Function(_BodyTextChanged) _then)
      : super(_value, (v) => _then(v as _BodyTextChanged));

  @override
  _BodyTextChanged get _value => super._value as _BodyTextChanged;

  @override
  $Res call({
    Object? bodyText = freezed,
  }) {
    return _then(_BodyTextChanged(
      bodyText == freezed
          ? _value.bodyText
          : bodyText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_BodyTextChanged implements _BodyTextChanged {
  const _$_BodyTextChanged(this.bodyText);

  @override
  final String bodyText;

  @override
  String toString() {
    return 'CreateFeedEvent.bodyTextChanged(bodyText: $bodyText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BodyTextChanged &&
            (identical(other.bodyText, bodyText) ||
                const DeepCollectionEquality()
                    .equals(other.bodyText, bodyText)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(bodyText);

  @JsonKey(ignore: true)
  @override
  _$BodyTextChangedCopyWith<_BodyTextChanged> get copyWith =>
      __$BodyTextChangedCopyWithImpl<_BodyTextChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int index, bool autofocus, Future<bool?> Function() showDialog)
        feedTypeChanged,
    required TResult Function(String title) titleChanged,
    required TResult Function(String bodyText) bodyTextChanged,
    required TResult Function(String url) urlChanged,
    required TResult Function(Future<int?> Function(Days) showDays)
        pollEndsPressed,
    required TResult Function(String option) pollOptionAdded,
    required TResult Function(int index, String option) pollOptionEdited,
    required TResult Function(int index) pollOptionDeleted,
    required TResult Function() addImageClicked,
    required TResult Function(String id) imageDeleted,
    required TResult Function() recoverLastDeletedImage,
    required TResult Function() feedPosted,
  }) {
    return bodyTextChanged(bodyText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int index, bool autofocus, Future<bool?> Function() showDialog)?
        feedTypeChanged,
    TResult Function(String title)? titleChanged,
    TResult Function(String bodyText)? bodyTextChanged,
    TResult Function(String url)? urlChanged,
    TResult Function(Future<int?> Function(Days) showDays)? pollEndsPressed,
    TResult Function(String option)? pollOptionAdded,
    TResult Function(int index, String option)? pollOptionEdited,
    TResult Function(int index)? pollOptionDeleted,
    TResult Function()? addImageClicked,
    TResult Function(String id)? imageDeleted,
    TResult Function()? recoverLastDeletedImage,
    TResult Function()? feedPosted,
    required TResult orElse(),
  }) {
    if (bodyTextChanged != null) {
      return bodyTextChanged(bodyText);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FeedTypeChanged value) feedTypeChanged,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_BodyTextChanged value) bodyTextChanged,
    required TResult Function(_UrlChanged value) urlChanged,
    required TResult Function(_PollEndsPressed value) pollEndsPressed,
    required TResult Function(_PollOptionAdded value) pollOptionAdded,
    required TResult Function(_PollOptionEdited value) pollOptionEdited,
    required TResult Function(_PollOptionDeleted value) pollOptionDeleted,
    required TResult Function(_AddImageClicked value) addImageClicked,
    required TResult Function(_ImageDeleted value) imageDeleted,
    required TResult Function(_RecoverLastDeletedImage value)
        recoverLastDeletedImage,
    required TResult Function(_FeedPosted value) feedPosted,
  }) {
    return bodyTextChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FeedTypeChanged value)? feedTypeChanged,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_BodyTextChanged value)? bodyTextChanged,
    TResult Function(_UrlChanged value)? urlChanged,
    TResult Function(_PollEndsPressed value)? pollEndsPressed,
    TResult Function(_PollOptionAdded value)? pollOptionAdded,
    TResult Function(_PollOptionEdited value)? pollOptionEdited,
    TResult Function(_PollOptionDeleted value)? pollOptionDeleted,
    TResult Function(_AddImageClicked value)? addImageClicked,
    TResult Function(_ImageDeleted value)? imageDeleted,
    TResult Function(_RecoverLastDeletedImage value)? recoverLastDeletedImage,
    TResult Function(_FeedPosted value)? feedPosted,
    required TResult orElse(),
  }) {
    if (bodyTextChanged != null) {
      return bodyTextChanged(this);
    }
    return orElse();
  }
}

abstract class _BodyTextChanged implements CreateFeedEvent {
  const factory _BodyTextChanged(String bodyText) = _$_BodyTextChanged;

  String get bodyText => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$BodyTextChangedCopyWith<_BodyTextChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UrlChangedCopyWith<$Res> {
  factory _$UrlChangedCopyWith(
          _UrlChanged value, $Res Function(_UrlChanged) then) =
      __$UrlChangedCopyWithImpl<$Res>;
  $Res call({String url});
}

/// @nodoc
class __$UrlChangedCopyWithImpl<$Res>
    extends _$CreateFeedEventCopyWithImpl<$Res>
    implements _$UrlChangedCopyWith<$Res> {
  __$UrlChangedCopyWithImpl(
      _UrlChanged _value, $Res Function(_UrlChanged) _then)
      : super(_value, (v) => _then(v as _UrlChanged));

  @override
  _UrlChanged get _value => super._value as _UrlChanged;

  @override
  $Res call({
    Object? url = freezed,
  }) {
    return _then(_UrlChanged(
      url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UrlChanged implements _UrlChanged {
  const _$_UrlChanged(this.url);

  @override
  final String url;

  @override
  String toString() {
    return 'CreateFeedEvent.urlChanged(url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UrlChanged &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(url);

  @JsonKey(ignore: true)
  @override
  _$UrlChangedCopyWith<_UrlChanged> get copyWith =>
      __$UrlChangedCopyWithImpl<_UrlChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int index, bool autofocus, Future<bool?> Function() showDialog)
        feedTypeChanged,
    required TResult Function(String title) titleChanged,
    required TResult Function(String bodyText) bodyTextChanged,
    required TResult Function(String url) urlChanged,
    required TResult Function(Future<int?> Function(Days) showDays)
        pollEndsPressed,
    required TResult Function(String option) pollOptionAdded,
    required TResult Function(int index, String option) pollOptionEdited,
    required TResult Function(int index) pollOptionDeleted,
    required TResult Function() addImageClicked,
    required TResult Function(String id) imageDeleted,
    required TResult Function() recoverLastDeletedImage,
    required TResult Function() feedPosted,
  }) {
    return urlChanged(url);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int index, bool autofocus, Future<bool?> Function() showDialog)?
        feedTypeChanged,
    TResult Function(String title)? titleChanged,
    TResult Function(String bodyText)? bodyTextChanged,
    TResult Function(String url)? urlChanged,
    TResult Function(Future<int?> Function(Days) showDays)? pollEndsPressed,
    TResult Function(String option)? pollOptionAdded,
    TResult Function(int index, String option)? pollOptionEdited,
    TResult Function(int index)? pollOptionDeleted,
    TResult Function()? addImageClicked,
    TResult Function(String id)? imageDeleted,
    TResult Function()? recoverLastDeletedImage,
    TResult Function()? feedPosted,
    required TResult orElse(),
  }) {
    if (urlChanged != null) {
      return urlChanged(url);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FeedTypeChanged value) feedTypeChanged,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_BodyTextChanged value) bodyTextChanged,
    required TResult Function(_UrlChanged value) urlChanged,
    required TResult Function(_PollEndsPressed value) pollEndsPressed,
    required TResult Function(_PollOptionAdded value) pollOptionAdded,
    required TResult Function(_PollOptionEdited value) pollOptionEdited,
    required TResult Function(_PollOptionDeleted value) pollOptionDeleted,
    required TResult Function(_AddImageClicked value) addImageClicked,
    required TResult Function(_ImageDeleted value) imageDeleted,
    required TResult Function(_RecoverLastDeletedImage value)
        recoverLastDeletedImage,
    required TResult Function(_FeedPosted value) feedPosted,
  }) {
    return urlChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FeedTypeChanged value)? feedTypeChanged,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_BodyTextChanged value)? bodyTextChanged,
    TResult Function(_UrlChanged value)? urlChanged,
    TResult Function(_PollEndsPressed value)? pollEndsPressed,
    TResult Function(_PollOptionAdded value)? pollOptionAdded,
    TResult Function(_PollOptionEdited value)? pollOptionEdited,
    TResult Function(_PollOptionDeleted value)? pollOptionDeleted,
    TResult Function(_AddImageClicked value)? addImageClicked,
    TResult Function(_ImageDeleted value)? imageDeleted,
    TResult Function(_RecoverLastDeletedImage value)? recoverLastDeletedImage,
    TResult Function(_FeedPosted value)? feedPosted,
    required TResult orElse(),
  }) {
    if (urlChanged != null) {
      return urlChanged(this);
    }
    return orElse();
  }
}

abstract class _UrlChanged implements CreateFeedEvent {
  const factory _UrlChanged(String url) = _$_UrlChanged;

  String get url => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$UrlChangedCopyWith<_UrlChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PollEndsPressedCopyWith<$Res> {
  factory _$PollEndsPressedCopyWith(
          _PollEndsPressed value, $Res Function(_PollEndsPressed) then) =
      __$PollEndsPressedCopyWithImpl<$Res>;
  $Res call({Future<int?> Function(Days) showDays});
}

/// @nodoc
class __$PollEndsPressedCopyWithImpl<$Res>
    extends _$CreateFeedEventCopyWithImpl<$Res>
    implements _$PollEndsPressedCopyWith<$Res> {
  __$PollEndsPressedCopyWithImpl(
      _PollEndsPressed _value, $Res Function(_PollEndsPressed) _then)
      : super(_value, (v) => _then(v as _PollEndsPressed));

  @override
  _PollEndsPressed get _value => super._value as _PollEndsPressed;

  @override
  $Res call({
    Object? showDays = freezed,
  }) {
    return _then(_PollEndsPressed(
      showDays: showDays == freezed
          ? _value.showDays
          : showDays // ignore: cast_nullable_to_non_nullable
              as Future<int?> Function(Days),
    ));
  }
}

/// @nodoc

class _$_PollEndsPressed implements _PollEndsPressed {
  const _$_PollEndsPressed({required this.showDays});

  @override
  final Future<int?> Function(Days) showDays;

  @override
  String toString() {
    return 'CreateFeedEvent.pollEndsPressed(showDays: $showDays)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PollEndsPressed &&
            (identical(other.showDays, showDays) ||
                const DeepCollectionEquality()
                    .equals(other.showDays, showDays)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(showDays);

  @JsonKey(ignore: true)
  @override
  _$PollEndsPressedCopyWith<_PollEndsPressed> get copyWith =>
      __$PollEndsPressedCopyWithImpl<_PollEndsPressed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int index, bool autofocus, Future<bool?> Function() showDialog)
        feedTypeChanged,
    required TResult Function(String title) titleChanged,
    required TResult Function(String bodyText) bodyTextChanged,
    required TResult Function(String url) urlChanged,
    required TResult Function(Future<int?> Function(Days) showDays)
        pollEndsPressed,
    required TResult Function(String option) pollOptionAdded,
    required TResult Function(int index, String option) pollOptionEdited,
    required TResult Function(int index) pollOptionDeleted,
    required TResult Function() addImageClicked,
    required TResult Function(String id) imageDeleted,
    required TResult Function() recoverLastDeletedImage,
    required TResult Function() feedPosted,
  }) {
    return pollEndsPressed(showDays);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int index, bool autofocus, Future<bool?> Function() showDialog)?
        feedTypeChanged,
    TResult Function(String title)? titleChanged,
    TResult Function(String bodyText)? bodyTextChanged,
    TResult Function(String url)? urlChanged,
    TResult Function(Future<int?> Function(Days) showDays)? pollEndsPressed,
    TResult Function(String option)? pollOptionAdded,
    TResult Function(int index, String option)? pollOptionEdited,
    TResult Function(int index)? pollOptionDeleted,
    TResult Function()? addImageClicked,
    TResult Function(String id)? imageDeleted,
    TResult Function()? recoverLastDeletedImage,
    TResult Function()? feedPosted,
    required TResult orElse(),
  }) {
    if (pollEndsPressed != null) {
      return pollEndsPressed(showDays);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FeedTypeChanged value) feedTypeChanged,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_BodyTextChanged value) bodyTextChanged,
    required TResult Function(_UrlChanged value) urlChanged,
    required TResult Function(_PollEndsPressed value) pollEndsPressed,
    required TResult Function(_PollOptionAdded value) pollOptionAdded,
    required TResult Function(_PollOptionEdited value) pollOptionEdited,
    required TResult Function(_PollOptionDeleted value) pollOptionDeleted,
    required TResult Function(_AddImageClicked value) addImageClicked,
    required TResult Function(_ImageDeleted value) imageDeleted,
    required TResult Function(_RecoverLastDeletedImage value)
        recoverLastDeletedImage,
    required TResult Function(_FeedPosted value) feedPosted,
  }) {
    return pollEndsPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FeedTypeChanged value)? feedTypeChanged,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_BodyTextChanged value)? bodyTextChanged,
    TResult Function(_UrlChanged value)? urlChanged,
    TResult Function(_PollEndsPressed value)? pollEndsPressed,
    TResult Function(_PollOptionAdded value)? pollOptionAdded,
    TResult Function(_PollOptionEdited value)? pollOptionEdited,
    TResult Function(_PollOptionDeleted value)? pollOptionDeleted,
    TResult Function(_AddImageClicked value)? addImageClicked,
    TResult Function(_ImageDeleted value)? imageDeleted,
    TResult Function(_RecoverLastDeletedImage value)? recoverLastDeletedImage,
    TResult Function(_FeedPosted value)? feedPosted,
    required TResult orElse(),
  }) {
    if (pollEndsPressed != null) {
      return pollEndsPressed(this);
    }
    return orElse();
  }
}

abstract class _PollEndsPressed implements CreateFeedEvent {
  const factory _PollEndsPressed(
      {required Future<int?> Function(Days) showDays}) = _$_PollEndsPressed;

  Future<int?> Function(Days) get showDays =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$PollEndsPressedCopyWith<_PollEndsPressed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PollOptionAddedCopyWith<$Res> {
  factory _$PollOptionAddedCopyWith(
          _PollOptionAdded value, $Res Function(_PollOptionAdded) then) =
      __$PollOptionAddedCopyWithImpl<$Res>;
  $Res call({String option});
}

/// @nodoc
class __$PollOptionAddedCopyWithImpl<$Res>
    extends _$CreateFeedEventCopyWithImpl<$Res>
    implements _$PollOptionAddedCopyWith<$Res> {
  __$PollOptionAddedCopyWithImpl(
      _PollOptionAdded _value, $Res Function(_PollOptionAdded) _then)
      : super(_value, (v) => _then(v as _PollOptionAdded));

  @override
  _PollOptionAdded get _value => super._value as _PollOptionAdded;

  @override
  $Res call({
    Object? option = freezed,
  }) {
    return _then(_PollOptionAdded(
      option == freezed
          ? _value.option
          : option // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PollOptionAdded implements _PollOptionAdded {
  const _$_PollOptionAdded(this.option);

  @override
  final String option;

  @override
  String toString() {
    return 'CreateFeedEvent.pollOptionAdded(option: $option)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PollOptionAdded &&
            (identical(other.option, option) ||
                const DeepCollectionEquality().equals(other.option, option)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(option);

  @JsonKey(ignore: true)
  @override
  _$PollOptionAddedCopyWith<_PollOptionAdded> get copyWith =>
      __$PollOptionAddedCopyWithImpl<_PollOptionAdded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int index, bool autofocus, Future<bool?> Function() showDialog)
        feedTypeChanged,
    required TResult Function(String title) titleChanged,
    required TResult Function(String bodyText) bodyTextChanged,
    required TResult Function(String url) urlChanged,
    required TResult Function(Future<int?> Function(Days) showDays)
        pollEndsPressed,
    required TResult Function(String option) pollOptionAdded,
    required TResult Function(int index, String option) pollOptionEdited,
    required TResult Function(int index) pollOptionDeleted,
    required TResult Function() addImageClicked,
    required TResult Function(String id) imageDeleted,
    required TResult Function() recoverLastDeletedImage,
    required TResult Function() feedPosted,
  }) {
    return pollOptionAdded(option);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int index, bool autofocus, Future<bool?> Function() showDialog)?
        feedTypeChanged,
    TResult Function(String title)? titleChanged,
    TResult Function(String bodyText)? bodyTextChanged,
    TResult Function(String url)? urlChanged,
    TResult Function(Future<int?> Function(Days) showDays)? pollEndsPressed,
    TResult Function(String option)? pollOptionAdded,
    TResult Function(int index, String option)? pollOptionEdited,
    TResult Function(int index)? pollOptionDeleted,
    TResult Function()? addImageClicked,
    TResult Function(String id)? imageDeleted,
    TResult Function()? recoverLastDeletedImage,
    TResult Function()? feedPosted,
    required TResult orElse(),
  }) {
    if (pollOptionAdded != null) {
      return pollOptionAdded(option);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FeedTypeChanged value) feedTypeChanged,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_BodyTextChanged value) bodyTextChanged,
    required TResult Function(_UrlChanged value) urlChanged,
    required TResult Function(_PollEndsPressed value) pollEndsPressed,
    required TResult Function(_PollOptionAdded value) pollOptionAdded,
    required TResult Function(_PollOptionEdited value) pollOptionEdited,
    required TResult Function(_PollOptionDeleted value) pollOptionDeleted,
    required TResult Function(_AddImageClicked value) addImageClicked,
    required TResult Function(_ImageDeleted value) imageDeleted,
    required TResult Function(_RecoverLastDeletedImage value)
        recoverLastDeletedImage,
    required TResult Function(_FeedPosted value) feedPosted,
  }) {
    return pollOptionAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FeedTypeChanged value)? feedTypeChanged,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_BodyTextChanged value)? bodyTextChanged,
    TResult Function(_UrlChanged value)? urlChanged,
    TResult Function(_PollEndsPressed value)? pollEndsPressed,
    TResult Function(_PollOptionAdded value)? pollOptionAdded,
    TResult Function(_PollOptionEdited value)? pollOptionEdited,
    TResult Function(_PollOptionDeleted value)? pollOptionDeleted,
    TResult Function(_AddImageClicked value)? addImageClicked,
    TResult Function(_ImageDeleted value)? imageDeleted,
    TResult Function(_RecoverLastDeletedImage value)? recoverLastDeletedImage,
    TResult Function(_FeedPosted value)? feedPosted,
    required TResult orElse(),
  }) {
    if (pollOptionAdded != null) {
      return pollOptionAdded(this);
    }
    return orElse();
  }
}

abstract class _PollOptionAdded implements CreateFeedEvent {
  const factory _PollOptionAdded(String option) = _$_PollOptionAdded;

  String get option => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$PollOptionAddedCopyWith<_PollOptionAdded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PollOptionEditedCopyWith<$Res> {
  factory _$PollOptionEditedCopyWith(
          _PollOptionEdited value, $Res Function(_PollOptionEdited) then) =
      __$PollOptionEditedCopyWithImpl<$Res>;
  $Res call({int index, String option});
}

/// @nodoc
class __$PollOptionEditedCopyWithImpl<$Res>
    extends _$CreateFeedEventCopyWithImpl<$Res>
    implements _$PollOptionEditedCopyWith<$Res> {
  __$PollOptionEditedCopyWithImpl(
      _PollOptionEdited _value, $Res Function(_PollOptionEdited) _then)
      : super(_value, (v) => _then(v as _PollOptionEdited));

  @override
  _PollOptionEdited get _value => super._value as _PollOptionEdited;

  @override
  $Res call({
    Object? index = freezed,
    Object? option = freezed,
  }) {
    return _then(_PollOptionEdited(
      index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      option == freezed
          ? _value.option
          : option // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PollOptionEdited implements _PollOptionEdited {
  const _$_PollOptionEdited(this.index, this.option);

  @override
  final int index;
  @override
  final String option;

  @override
  String toString() {
    return 'CreateFeedEvent.pollOptionEdited(index: $index, option: $option)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PollOptionEdited &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)) &&
            (identical(other.option, option) ||
                const DeepCollectionEquality().equals(other.option, option)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(index) ^
      const DeepCollectionEquality().hash(option);

  @JsonKey(ignore: true)
  @override
  _$PollOptionEditedCopyWith<_PollOptionEdited> get copyWith =>
      __$PollOptionEditedCopyWithImpl<_PollOptionEdited>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int index, bool autofocus, Future<bool?> Function() showDialog)
        feedTypeChanged,
    required TResult Function(String title) titleChanged,
    required TResult Function(String bodyText) bodyTextChanged,
    required TResult Function(String url) urlChanged,
    required TResult Function(Future<int?> Function(Days) showDays)
        pollEndsPressed,
    required TResult Function(String option) pollOptionAdded,
    required TResult Function(int index, String option) pollOptionEdited,
    required TResult Function(int index) pollOptionDeleted,
    required TResult Function() addImageClicked,
    required TResult Function(String id) imageDeleted,
    required TResult Function() recoverLastDeletedImage,
    required TResult Function() feedPosted,
  }) {
    return pollOptionEdited(index, option);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int index, bool autofocus, Future<bool?> Function() showDialog)?
        feedTypeChanged,
    TResult Function(String title)? titleChanged,
    TResult Function(String bodyText)? bodyTextChanged,
    TResult Function(String url)? urlChanged,
    TResult Function(Future<int?> Function(Days) showDays)? pollEndsPressed,
    TResult Function(String option)? pollOptionAdded,
    TResult Function(int index, String option)? pollOptionEdited,
    TResult Function(int index)? pollOptionDeleted,
    TResult Function()? addImageClicked,
    TResult Function(String id)? imageDeleted,
    TResult Function()? recoverLastDeletedImage,
    TResult Function()? feedPosted,
    required TResult orElse(),
  }) {
    if (pollOptionEdited != null) {
      return pollOptionEdited(index, option);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FeedTypeChanged value) feedTypeChanged,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_BodyTextChanged value) bodyTextChanged,
    required TResult Function(_UrlChanged value) urlChanged,
    required TResult Function(_PollEndsPressed value) pollEndsPressed,
    required TResult Function(_PollOptionAdded value) pollOptionAdded,
    required TResult Function(_PollOptionEdited value) pollOptionEdited,
    required TResult Function(_PollOptionDeleted value) pollOptionDeleted,
    required TResult Function(_AddImageClicked value) addImageClicked,
    required TResult Function(_ImageDeleted value) imageDeleted,
    required TResult Function(_RecoverLastDeletedImage value)
        recoverLastDeletedImage,
    required TResult Function(_FeedPosted value) feedPosted,
  }) {
    return pollOptionEdited(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FeedTypeChanged value)? feedTypeChanged,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_BodyTextChanged value)? bodyTextChanged,
    TResult Function(_UrlChanged value)? urlChanged,
    TResult Function(_PollEndsPressed value)? pollEndsPressed,
    TResult Function(_PollOptionAdded value)? pollOptionAdded,
    TResult Function(_PollOptionEdited value)? pollOptionEdited,
    TResult Function(_PollOptionDeleted value)? pollOptionDeleted,
    TResult Function(_AddImageClicked value)? addImageClicked,
    TResult Function(_ImageDeleted value)? imageDeleted,
    TResult Function(_RecoverLastDeletedImage value)? recoverLastDeletedImage,
    TResult Function(_FeedPosted value)? feedPosted,
    required TResult orElse(),
  }) {
    if (pollOptionEdited != null) {
      return pollOptionEdited(this);
    }
    return orElse();
  }
}

abstract class _PollOptionEdited implements CreateFeedEvent {
  const factory _PollOptionEdited(int index, String option) =
      _$_PollOptionEdited;

  int get index => throw _privateConstructorUsedError;
  String get option => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$PollOptionEditedCopyWith<_PollOptionEdited> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PollOptionDeletedCopyWith<$Res> {
  factory _$PollOptionDeletedCopyWith(
          _PollOptionDeleted value, $Res Function(_PollOptionDeleted) then) =
      __$PollOptionDeletedCopyWithImpl<$Res>;
  $Res call({int index});
}

/// @nodoc
class __$PollOptionDeletedCopyWithImpl<$Res>
    extends _$CreateFeedEventCopyWithImpl<$Res>
    implements _$PollOptionDeletedCopyWith<$Res> {
  __$PollOptionDeletedCopyWithImpl(
      _PollOptionDeleted _value, $Res Function(_PollOptionDeleted) _then)
      : super(_value, (v) => _then(v as _PollOptionDeleted));

  @override
  _PollOptionDeleted get _value => super._value as _PollOptionDeleted;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(_PollOptionDeleted(
      index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_PollOptionDeleted implements _PollOptionDeleted {
  const _$_PollOptionDeleted(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'CreateFeedEvent.pollOptionDeleted(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PollOptionDeleted &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(index);

  @JsonKey(ignore: true)
  @override
  _$PollOptionDeletedCopyWith<_PollOptionDeleted> get copyWith =>
      __$PollOptionDeletedCopyWithImpl<_PollOptionDeleted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int index, bool autofocus, Future<bool?> Function() showDialog)
        feedTypeChanged,
    required TResult Function(String title) titleChanged,
    required TResult Function(String bodyText) bodyTextChanged,
    required TResult Function(String url) urlChanged,
    required TResult Function(Future<int?> Function(Days) showDays)
        pollEndsPressed,
    required TResult Function(String option) pollOptionAdded,
    required TResult Function(int index, String option) pollOptionEdited,
    required TResult Function(int index) pollOptionDeleted,
    required TResult Function() addImageClicked,
    required TResult Function(String id) imageDeleted,
    required TResult Function() recoverLastDeletedImage,
    required TResult Function() feedPosted,
  }) {
    return pollOptionDeleted(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int index, bool autofocus, Future<bool?> Function() showDialog)?
        feedTypeChanged,
    TResult Function(String title)? titleChanged,
    TResult Function(String bodyText)? bodyTextChanged,
    TResult Function(String url)? urlChanged,
    TResult Function(Future<int?> Function(Days) showDays)? pollEndsPressed,
    TResult Function(String option)? pollOptionAdded,
    TResult Function(int index, String option)? pollOptionEdited,
    TResult Function(int index)? pollOptionDeleted,
    TResult Function()? addImageClicked,
    TResult Function(String id)? imageDeleted,
    TResult Function()? recoverLastDeletedImage,
    TResult Function()? feedPosted,
    required TResult orElse(),
  }) {
    if (pollOptionDeleted != null) {
      return pollOptionDeleted(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FeedTypeChanged value) feedTypeChanged,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_BodyTextChanged value) bodyTextChanged,
    required TResult Function(_UrlChanged value) urlChanged,
    required TResult Function(_PollEndsPressed value) pollEndsPressed,
    required TResult Function(_PollOptionAdded value) pollOptionAdded,
    required TResult Function(_PollOptionEdited value) pollOptionEdited,
    required TResult Function(_PollOptionDeleted value) pollOptionDeleted,
    required TResult Function(_AddImageClicked value) addImageClicked,
    required TResult Function(_ImageDeleted value) imageDeleted,
    required TResult Function(_RecoverLastDeletedImage value)
        recoverLastDeletedImage,
    required TResult Function(_FeedPosted value) feedPosted,
  }) {
    return pollOptionDeleted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FeedTypeChanged value)? feedTypeChanged,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_BodyTextChanged value)? bodyTextChanged,
    TResult Function(_UrlChanged value)? urlChanged,
    TResult Function(_PollEndsPressed value)? pollEndsPressed,
    TResult Function(_PollOptionAdded value)? pollOptionAdded,
    TResult Function(_PollOptionEdited value)? pollOptionEdited,
    TResult Function(_PollOptionDeleted value)? pollOptionDeleted,
    TResult Function(_AddImageClicked value)? addImageClicked,
    TResult Function(_ImageDeleted value)? imageDeleted,
    TResult Function(_RecoverLastDeletedImage value)? recoverLastDeletedImage,
    TResult Function(_FeedPosted value)? feedPosted,
    required TResult orElse(),
  }) {
    if (pollOptionDeleted != null) {
      return pollOptionDeleted(this);
    }
    return orElse();
  }
}

abstract class _PollOptionDeleted implements CreateFeedEvent {
  const factory _PollOptionDeleted(int index) = _$_PollOptionDeleted;

  int get index => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$PollOptionDeletedCopyWith<_PollOptionDeleted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AddImageClickedCopyWith<$Res> {
  factory _$AddImageClickedCopyWith(
          _AddImageClicked value, $Res Function(_AddImageClicked) then) =
      __$AddImageClickedCopyWithImpl<$Res>;
}

/// @nodoc
class __$AddImageClickedCopyWithImpl<$Res>
    extends _$CreateFeedEventCopyWithImpl<$Res>
    implements _$AddImageClickedCopyWith<$Res> {
  __$AddImageClickedCopyWithImpl(
      _AddImageClicked _value, $Res Function(_AddImageClicked) _then)
      : super(_value, (v) => _then(v as _AddImageClicked));

  @override
  _AddImageClicked get _value => super._value as _AddImageClicked;
}

/// @nodoc

class _$_AddImageClicked implements _AddImageClicked {
  const _$_AddImageClicked();

  @override
  String toString() {
    return 'CreateFeedEvent.addImageClicked()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _AddImageClicked);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int index, bool autofocus, Future<bool?> Function() showDialog)
        feedTypeChanged,
    required TResult Function(String title) titleChanged,
    required TResult Function(String bodyText) bodyTextChanged,
    required TResult Function(String url) urlChanged,
    required TResult Function(Future<int?> Function(Days) showDays)
        pollEndsPressed,
    required TResult Function(String option) pollOptionAdded,
    required TResult Function(int index, String option) pollOptionEdited,
    required TResult Function(int index) pollOptionDeleted,
    required TResult Function() addImageClicked,
    required TResult Function(String id) imageDeleted,
    required TResult Function() recoverLastDeletedImage,
    required TResult Function() feedPosted,
  }) {
    return addImageClicked();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int index, bool autofocus, Future<bool?> Function() showDialog)?
        feedTypeChanged,
    TResult Function(String title)? titleChanged,
    TResult Function(String bodyText)? bodyTextChanged,
    TResult Function(String url)? urlChanged,
    TResult Function(Future<int?> Function(Days) showDays)? pollEndsPressed,
    TResult Function(String option)? pollOptionAdded,
    TResult Function(int index, String option)? pollOptionEdited,
    TResult Function(int index)? pollOptionDeleted,
    TResult Function()? addImageClicked,
    TResult Function(String id)? imageDeleted,
    TResult Function()? recoverLastDeletedImage,
    TResult Function()? feedPosted,
    required TResult orElse(),
  }) {
    if (addImageClicked != null) {
      return addImageClicked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FeedTypeChanged value) feedTypeChanged,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_BodyTextChanged value) bodyTextChanged,
    required TResult Function(_UrlChanged value) urlChanged,
    required TResult Function(_PollEndsPressed value) pollEndsPressed,
    required TResult Function(_PollOptionAdded value) pollOptionAdded,
    required TResult Function(_PollOptionEdited value) pollOptionEdited,
    required TResult Function(_PollOptionDeleted value) pollOptionDeleted,
    required TResult Function(_AddImageClicked value) addImageClicked,
    required TResult Function(_ImageDeleted value) imageDeleted,
    required TResult Function(_RecoverLastDeletedImage value)
        recoverLastDeletedImage,
    required TResult Function(_FeedPosted value) feedPosted,
  }) {
    return addImageClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FeedTypeChanged value)? feedTypeChanged,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_BodyTextChanged value)? bodyTextChanged,
    TResult Function(_UrlChanged value)? urlChanged,
    TResult Function(_PollEndsPressed value)? pollEndsPressed,
    TResult Function(_PollOptionAdded value)? pollOptionAdded,
    TResult Function(_PollOptionEdited value)? pollOptionEdited,
    TResult Function(_PollOptionDeleted value)? pollOptionDeleted,
    TResult Function(_AddImageClicked value)? addImageClicked,
    TResult Function(_ImageDeleted value)? imageDeleted,
    TResult Function(_RecoverLastDeletedImage value)? recoverLastDeletedImage,
    TResult Function(_FeedPosted value)? feedPosted,
    required TResult orElse(),
  }) {
    if (addImageClicked != null) {
      return addImageClicked(this);
    }
    return orElse();
  }
}

abstract class _AddImageClicked implements CreateFeedEvent {
  const factory _AddImageClicked() = _$_AddImageClicked;
}

/// @nodoc
abstract class _$ImageDeletedCopyWith<$Res> {
  factory _$ImageDeletedCopyWith(
          _ImageDeleted value, $Res Function(_ImageDeleted) then) =
      __$ImageDeletedCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class __$ImageDeletedCopyWithImpl<$Res>
    extends _$CreateFeedEventCopyWithImpl<$Res>
    implements _$ImageDeletedCopyWith<$Res> {
  __$ImageDeletedCopyWithImpl(
      _ImageDeleted _value, $Res Function(_ImageDeleted) _then)
      : super(_value, (v) => _then(v as _ImageDeleted));

  @override
  _ImageDeleted get _value => super._value as _ImageDeleted;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_ImageDeleted(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ImageDeleted implements _ImageDeleted {
  const _$_ImageDeleted(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'CreateFeedEvent.imageDeleted(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ImageDeleted &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$ImageDeletedCopyWith<_ImageDeleted> get copyWith =>
      __$ImageDeletedCopyWithImpl<_ImageDeleted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int index, bool autofocus, Future<bool?> Function() showDialog)
        feedTypeChanged,
    required TResult Function(String title) titleChanged,
    required TResult Function(String bodyText) bodyTextChanged,
    required TResult Function(String url) urlChanged,
    required TResult Function(Future<int?> Function(Days) showDays)
        pollEndsPressed,
    required TResult Function(String option) pollOptionAdded,
    required TResult Function(int index, String option) pollOptionEdited,
    required TResult Function(int index) pollOptionDeleted,
    required TResult Function() addImageClicked,
    required TResult Function(String id) imageDeleted,
    required TResult Function() recoverLastDeletedImage,
    required TResult Function() feedPosted,
  }) {
    return imageDeleted(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int index, bool autofocus, Future<bool?> Function() showDialog)?
        feedTypeChanged,
    TResult Function(String title)? titleChanged,
    TResult Function(String bodyText)? bodyTextChanged,
    TResult Function(String url)? urlChanged,
    TResult Function(Future<int?> Function(Days) showDays)? pollEndsPressed,
    TResult Function(String option)? pollOptionAdded,
    TResult Function(int index, String option)? pollOptionEdited,
    TResult Function(int index)? pollOptionDeleted,
    TResult Function()? addImageClicked,
    TResult Function(String id)? imageDeleted,
    TResult Function()? recoverLastDeletedImage,
    TResult Function()? feedPosted,
    required TResult orElse(),
  }) {
    if (imageDeleted != null) {
      return imageDeleted(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FeedTypeChanged value) feedTypeChanged,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_BodyTextChanged value) bodyTextChanged,
    required TResult Function(_UrlChanged value) urlChanged,
    required TResult Function(_PollEndsPressed value) pollEndsPressed,
    required TResult Function(_PollOptionAdded value) pollOptionAdded,
    required TResult Function(_PollOptionEdited value) pollOptionEdited,
    required TResult Function(_PollOptionDeleted value) pollOptionDeleted,
    required TResult Function(_AddImageClicked value) addImageClicked,
    required TResult Function(_ImageDeleted value) imageDeleted,
    required TResult Function(_RecoverLastDeletedImage value)
        recoverLastDeletedImage,
    required TResult Function(_FeedPosted value) feedPosted,
  }) {
    return imageDeleted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FeedTypeChanged value)? feedTypeChanged,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_BodyTextChanged value)? bodyTextChanged,
    TResult Function(_UrlChanged value)? urlChanged,
    TResult Function(_PollEndsPressed value)? pollEndsPressed,
    TResult Function(_PollOptionAdded value)? pollOptionAdded,
    TResult Function(_PollOptionEdited value)? pollOptionEdited,
    TResult Function(_PollOptionDeleted value)? pollOptionDeleted,
    TResult Function(_AddImageClicked value)? addImageClicked,
    TResult Function(_ImageDeleted value)? imageDeleted,
    TResult Function(_RecoverLastDeletedImage value)? recoverLastDeletedImage,
    TResult Function(_FeedPosted value)? feedPosted,
    required TResult orElse(),
  }) {
    if (imageDeleted != null) {
      return imageDeleted(this);
    }
    return orElse();
  }
}

abstract class _ImageDeleted implements CreateFeedEvent {
  const factory _ImageDeleted(String id) = _$_ImageDeleted;

  String get id => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ImageDeletedCopyWith<_ImageDeleted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$RecoverLastDeletedImageCopyWith<$Res> {
  factory _$RecoverLastDeletedImageCopyWith(_RecoverLastDeletedImage value,
          $Res Function(_RecoverLastDeletedImage) then) =
      __$RecoverLastDeletedImageCopyWithImpl<$Res>;
}

/// @nodoc
class __$RecoverLastDeletedImageCopyWithImpl<$Res>
    extends _$CreateFeedEventCopyWithImpl<$Res>
    implements _$RecoverLastDeletedImageCopyWith<$Res> {
  __$RecoverLastDeletedImageCopyWithImpl(_RecoverLastDeletedImage _value,
      $Res Function(_RecoverLastDeletedImage) _then)
      : super(_value, (v) => _then(v as _RecoverLastDeletedImage));

  @override
  _RecoverLastDeletedImage get _value =>
      super._value as _RecoverLastDeletedImage;
}

/// @nodoc

class _$_RecoverLastDeletedImage implements _RecoverLastDeletedImage {
  const _$_RecoverLastDeletedImage();

  @override
  String toString() {
    return 'CreateFeedEvent.recoverLastDeletedImage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _RecoverLastDeletedImage);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int index, bool autofocus, Future<bool?> Function() showDialog)
        feedTypeChanged,
    required TResult Function(String title) titleChanged,
    required TResult Function(String bodyText) bodyTextChanged,
    required TResult Function(String url) urlChanged,
    required TResult Function(Future<int?> Function(Days) showDays)
        pollEndsPressed,
    required TResult Function(String option) pollOptionAdded,
    required TResult Function(int index, String option) pollOptionEdited,
    required TResult Function(int index) pollOptionDeleted,
    required TResult Function() addImageClicked,
    required TResult Function(String id) imageDeleted,
    required TResult Function() recoverLastDeletedImage,
    required TResult Function() feedPosted,
  }) {
    return recoverLastDeletedImage();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int index, bool autofocus, Future<bool?> Function() showDialog)?
        feedTypeChanged,
    TResult Function(String title)? titleChanged,
    TResult Function(String bodyText)? bodyTextChanged,
    TResult Function(String url)? urlChanged,
    TResult Function(Future<int?> Function(Days) showDays)? pollEndsPressed,
    TResult Function(String option)? pollOptionAdded,
    TResult Function(int index, String option)? pollOptionEdited,
    TResult Function(int index)? pollOptionDeleted,
    TResult Function()? addImageClicked,
    TResult Function(String id)? imageDeleted,
    TResult Function()? recoverLastDeletedImage,
    TResult Function()? feedPosted,
    required TResult orElse(),
  }) {
    if (recoverLastDeletedImage != null) {
      return recoverLastDeletedImage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FeedTypeChanged value) feedTypeChanged,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_BodyTextChanged value) bodyTextChanged,
    required TResult Function(_UrlChanged value) urlChanged,
    required TResult Function(_PollEndsPressed value) pollEndsPressed,
    required TResult Function(_PollOptionAdded value) pollOptionAdded,
    required TResult Function(_PollOptionEdited value) pollOptionEdited,
    required TResult Function(_PollOptionDeleted value) pollOptionDeleted,
    required TResult Function(_AddImageClicked value) addImageClicked,
    required TResult Function(_ImageDeleted value) imageDeleted,
    required TResult Function(_RecoverLastDeletedImage value)
        recoverLastDeletedImage,
    required TResult Function(_FeedPosted value) feedPosted,
  }) {
    return recoverLastDeletedImage(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FeedTypeChanged value)? feedTypeChanged,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_BodyTextChanged value)? bodyTextChanged,
    TResult Function(_UrlChanged value)? urlChanged,
    TResult Function(_PollEndsPressed value)? pollEndsPressed,
    TResult Function(_PollOptionAdded value)? pollOptionAdded,
    TResult Function(_PollOptionEdited value)? pollOptionEdited,
    TResult Function(_PollOptionDeleted value)? pollOptionDeleted,
    TResult Function(_AddImageClicked value)? addImageClicked,
    TResult Function(_ImageDeleted value)? imageDeleted,
    TResult Function(_RecoverLastDeletedImage value)? recoverLastDeletedImage,
    TResult Function(_FeedPosted value)? feedPosted,
    required TResult orElse(),
  }) {
    if (recoverLastDeletedImage != null) {
      return recoverLastDeletedImage(this);
    }
    return orElse();
  }
}

abstract class _RecoverLastDeletedImage implements CreateFeedEvent {
  const factory _RecoverLastDeletedImage() = _$_RecoverLastDeletedImage;
}

/// @nodoc
abstract class _$FeedPostedCopyWith<$Res> {
  factory _$FeedPostedCopyWith(
          _FeedPosted value, $Res Function(_FeedPosted) then) =
      __$FeedPostedCopyWithImpl<$Res>;
}

/// @nodoc
class __$FeedPostedCopyWithImpl<$Res>
    extends _$CreateFeedEventCopyWithImpl<$Res>
    implements _$FeedPostedCopyWith<$Res> {
  __$FeedPostedCopyWithImpl(
      _FeedPosted _value, $Res Function(_FeedPosted) _then)
      : super(_value, (v) => _then(v as _FeedPosted));

  @override
  _FeedPosted get _value => super._value as _FeedPosted;
}

/// @nodoc

class _$_FeedPosted implements _FeedPosted {
  const _$_FeedPosted();

  @override
  String toString() {
    return 'CreateFeedEvent.feedPosted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _FeedPosted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int index, bool autofocus, Future<bool?> Function() showDialog)
        feedTypeChanged,
    required TResult Function(String title) titleChanged,
    required TResult Function(String bodyText) bodyTextChanged,
    required TResult Function(String url) urlChanged,
    required TResult Function(Future<int?> Function(Days) showDays)
        pollEndsPressed,
    required TResult Function(String option) pollOptionAdded,
    required TResult Function(int index, String option) pollOptionEdited,
    required TResult Function(int index) pollOptionDeleted,
    required TResult Function() addImageClicked,
    required TResult Function(String id) imageDeleted,
    required TResult Function() recoverLastDeletedImage,
    required TResult Function() feedPosted,
  }) {
    return feedPosted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int index, bool autofocus, Future<bool?> Function() showDialog)?
        feedTypeChanged,
    TResult Function(String title)? titleChanged,
    TResult Function(String bodyText)? bodyTextChanged,
    TResult Function(String url)? urlChanged,
    TResult Function(Future<int?> Function(Days) showDays)? pollEndsPressed,
    TResult Function(String option)? pollOptionAdded,
    TResult Function(int index, String option)? pollOptionEdited,
    TResult Function(int index)? pollOptionDeleted,
    TResult Function()? addImageClicked,
    TResult Function(String id)? imageDeleted,
    TResult Function()? recoverLastDeletedImage,
    TResult Function()? feedPosted,
    required TResult orElse(),
  }) {
    if (feedPosted != null) {
      return feedPosted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FeedTypeChanged value) feedTypeChanged,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_BodyTextChanged value) bodyTextChanged,
    required TResult Function(_UrlChanged value) urlChanged,
    required TResult Function(_PollEndsPressed value) pollEndsPressed,
    required TResult Function(_PollOptionAdded value) pollOptionAdded,
    required TResult Function(_PollOptionEdited value) pollOptionEdited,
    required TResult Function(_PollOptionDeleted value) pollOptionDeleted,
    required TResult Function(_AddImageClicked value) addImageClicked,
    required TResult Function(_ImageDeleted value) imageDeleted,
    required TResult Function(_RecoverLastDeletedImage value)
        recoverLastDeletedImage,
    required TResult Function(_FeedPosted value) feedPosted,
  }) {
    return feedPosted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FeedTypeChanged value)? feedTypeChanged,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_BodyTextChanged value)? bodyTextChanged,
    TResult Function(_UrlChanged value)? urlChanged,
    TResult Function(_PollEndsPressed value)? pollEndsPressed,
    TResult Function(_PollOptionAdded value)? pollOptionAdded,
    TResult Function(_PollOptionEdited value)? pollOptionEdited,
    TResult Function(_PollOptionDeleted value)? pollOptionDeleted,
    TResult Function(_AddImageClicked value)? addImageClicked,
    TResult Function(_ImageDeleted value)? imageDeleted,
    TResult Function(_RecoverLastDeletedImage value)? recoverLastDeletedImage,
    TResult Function(_FeedPosted value)? feedPosted,
    required TResult orElse(),
  }) {
    if (feedPosted != null) {
      return feedPosted(this);
    }
    return orElse();
  }
}

abstract class _FeedPosted implements CreateFeedEvent {
  const factory _FeedPosted() = _$_FeedPosted;
}

/// @nodoc
class _$CreateFeedStateTearOff {
  const _$CreateFeedStateTearOff();

  _TextFeedEntry textFeedEntry(
      {required String title,
      required String bodyText,
      required FeedType feedType,
      required bool autofocus,
      required Either<FeedEditFailure, Unit> error}) {
    return _TextFeedEntry(
      title: title,
      bodyText: bodyText,
      feedType: feedType,
      autofocus: autofocus,
      error: error,
    );
  }

  _LinkFeedEntry linkFeedEntry(
      {required String title,
      required String url,
      required FeedType feedType,
      required bool autofocus,
      required Either<FeedEditFailure, Unit> error}) {
    return _LinkFeedEntry(
      title: title,
      url: url,
      feedType: feedType,
      autofocus: autofocus,
      error: error,
    );
  }

  _ImageFeedEntry imageFeedEntry(
      {required String title,
      required List<ImageData> images,
      required FeedType feedType,
      required bool autofocus,
      required Either<FeedEditFailure, Unit> error,
      required Option<bool> dirty,
      required Option<DeletedImageData> lastDeletedImage,
      required int nextIndex}) {
    return _ImageFeedEntry(
      title: title,
      images: images,
      feedType: feedType,
      autofocus: autofocus,
      error: error,
      dirty: dirty,
      lastDeletedImage: lastDeletedImage,
      nextIndex: nextIndex,
    );
  }

  _VideoFeedEntry videoFeedEntry(
      {required String title,
      File? video,
      required FeedType feedType,
      required bool autofocus,
      required Either<FeedEditFailure, Unit> error}) {
    return _VideoFeedEntry(
      title: title,
      video: video,
      feedType: feedType,
      autofocus: autofocus,
      error: error,
    );
  }

  _PollFeedEntry pollFeedEntry(
      {required String title,
      required String bodyText,
      required List<String> options,
      required int pollEndsDays,
      required FeedType feedType,
      required bool autofocus,
      required Either<FeedEditFailure, Unit> error}) {
    return _PollFeedEntry(
      title: title,
      bodyText: bodyText,
      options: options,
      pollEndsDays: pollEndsDays,
      feedType: feedType,
      autofocus: autofocus,
      error: error,
    );
  }
}

/// @nodoc
const $CreateFeedState = _$CreateFeedStateTearOff();

/// @nodoc
mixin _$CreateFeedState {
  String get title => throw _privateConstructorUsedError;
  FeedType get feedType => throw _privateConstructorUsedError;
  bool get autofocus => throw _privateConstructorUsedError;
  Either<FeedEditFailure, Unit> get error => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, String bodyText, FeedType feedType,
            bool autofocus, Either<FeedEditFailure, Unit> error)
        textFeedEntry,
    required TResult Function(String title, String url, FeedType feedType,
            bool autofocus, Either<FeedEditFailure, Unit> error)
        linkFeedEntry,
    required TResult Function(
            String title,
            List<ImageData> images,
            FeedType feedType,
            bool autofocus,
            Either<FeedEditFailure, Unit> error,
            Option<bool> dirty,
            Option<DeletedImageData> lastDeletedImage,
            int nextIndex)
        imageFeedEntry,
    required TResult Function(String title, File? video, FeedType feedType,
            bool autofocus, Either<FeedEditFailure, Unit> error)
        videoFeedEntry,
    required TResult Function(
            String title,
            String bodyText,
            List<String> options,
            int pollEndsDays,
            FeedType feedType,
            bool autofocus,
            Either<FeedEditFailure, Unit> error)
        pollFeedEntry,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, String bodyText, FeedType feedType,
            bool autofocus, Either<FeedEditFailure, Unit> error)?
        textFeedEntry,
    TResult Function(String title, String url, FeedType feedType,
            bool autofocus, Either<FeedEditFailure, Unit> error)?
        linkFeedEntry,
    TResult Function(
            String title,
            List<ImageData> images,
            FeedType feedType,
            bool autofocus,
            Either<FeedEditFailure, Unit> error,
            Option<bool> dirty,
            Option<DeletedImageData> lastDeletedImage,
            int nextIndex)?
        imageFeedEntry,
    TResult Function(String title, File? video, FeedType feedType,
            bool autofocus, Either<FeedEditFailure, Unit> error)?
        videoFeedEntry,
    TResult Function(
            String title,
            String bodyText,
            List<String> options,
            int pollEndsDays,
            FeedType feedType,
            bool autofocus,
            Either<FeedEditFailure, Unit> error)?
        pollFeedEntry,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TextFeedEntry value) textFeedEntry,
    required TResult Function(_LinkFeedEntry value) linkFeedEntry,
    required TResult Function(_ImageFeedEntry value) imageFeedEntry,
    required TResult Function(_VideoFeedEntry value) videoFeedEntry,
    required TResult Function(_PollFeedEntry value) pollFeedEntry,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TextFeedEntry value)? textFeedEntry,
    TResult Function(_LinkFeedEntry value)? linkFeedEntry,
    TResult Function(_ImageFeedEntry value)? imageFeedEntry,
    TResult Function(_VideoFeedEntry value)? videoFeedEntry,
    TResult Function(_PollFeedEntry value)? pollFeedEntry,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateFeedStateCopyWith<CreateFeedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateFeedStateCopyWith<$Res> {
  factory $CreateFeedStateCopyWith(
          CreateFeedState value, $Res Function(CreateFeedState) then) =
      _$CreateFeedStateCopyWithImpl<$Res>;
  $Res call(
      {String title,
      FeedType feedType,
      bool autofocus,
      Either<FeedEditFailure, Unit> error});
}

/// @nodoc
class _$CreateFeedStateCopyWithImpl<$Res>
    implements $CreateFeedStateCopyWith<$Res> {
  _$CreateFeedStateCopyWithImpl(this._value, this._then);

  final CreateFeedState _value;
  // ignore: unused_field
  final $Res Function(CreateFeedState) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? feedType = freezed,
    Object? autofocus = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      feedType: feedType == freezed
          ? _value.feedType
          : feedType // ignore: cast_nullable_to_non_nullable
              as FeedType,
      autofocus: autofocus == freezed
          ? _value.autofocus
          : autofocus // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Either<FeedEditFailure, Unit>,
    ));
  }
}

/// @nodoc
abstract class _$TextFeedEntryCopyWith<$Res>
    implements $CreateFeedStateCopyWith<$Res> {
  factory _$TextFeedEntryCopyWith(
          _TextFeedEntry value, $Res Function(_TextFeedEntry) then) =
      __$TextFeedEntryCopyWithImpl<$Res>;
  @override
  $Res call(
      {String title,
      String bodyText,
      FeedType feedType,
      bool autofocus,
      Either<FeedEditFailure, Unit> error});
}

/// @nodoc
class __$TextFeedEntryCopyWithImpl<$Res>
    extends _$CreateFeedStateCopyWithImpl<$Res>
    implements _$TextFeedEntryCopyWith<$Res> {
  __$TextFeedEntryCopyWithImpl(
      _TextFeedEntry _value, $Res Function(_TextFeedEntry) _then)
      : super(_value, (v) => _then(v as _TextFeedEntry));

  @override
  _TextFeedEntry get _value => super._value as _TextFeedEntry;

  @override
  $Res call({
    Object? title = freezed,
    Object? bodyText = freezed,
    Object? feedType = freezed,
    Object? autofocus = freezed,
    Object? error = freezed,
  }) {
    return _then(_TextFeedEntry(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      bodyText: bodyText == freezed
          ? _value.bodyText
          : bodyText // ignore: cast_nullable_to_non_nullable
              as String,
      feedType: feedType == freezed
          ? _value.feedType
          : feedType // ignore: cast_nullable_to_non_nullable
              as FeedType,
      autofocus: autofocus == freezed
          ? _value.autofocus
          : autofocus // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Either<FeedEditFailure, Unit>,
    ));
  }
}

/// @nodoc

class _$_TextFeedEntry implements _TextFeedEntry {
  const _$_TextFeedEntry(
      {required this.title,
      required this.bodyText,
      required this.feedType,
      required this.autofocus,
      required this.error});

  @override
  final String title;
  @override
  final String bodyText;
  @override
  final FeedType feedType;
  @override
  final bool autofocus;
  @override
  final Either<FeedEditFailure, Unit> error;

  @override
  String toString() {
    return 'CreateFeedState.textFeedEntry(title: $title, bodyText: $bodyText, feedType: $feedType, autofocus: $autofocus, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TextFeedEntry &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.bodyText, bodyText) ||
                const DeepCollectionEquality()
                    .equals(other.bodyText, bodyText)) &&
            (identical(other.feedType, feedType) ||
                const DeepCollectionEquality()
                    .equals(other.feedType, feedType)) &&
            (identical(other.autofocus, autofocus) ||
                const DeepCollectionEquality()
                    .equals(other.autofocus, autofocus)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(bodyText) ^
      const DeepCollectionEquality().hash(feedType) ^
      const DeepCollectionEquality().hash(autofocus) ^
      const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  _$TextFeedEntryCopyWith<_TextFeedEntry> get copyWith =>
      __$TextFeedEntryCopyWithImpl<_TextFeedEntry>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, String bodyText, FeedType feedType,
            bool autofocus, Either<FeedEditFailure, Unit> error)
        textFeedEntry,
    required TResult Function(String title, String url, FeedType feedType,
            bool autofocus, Either<FeedEditFailure, Unit> error)
        linkFeedEntry,
    required TResult Function(
            String title,
            List<ImageData> images,
            FeedType feedType,
            bool autofocus,
            Either<FeedEditFailure, Unit> error,
            Option<bool> dirty,
            Option<DeletedImageData> lastDeletedImage,
            int nextIndex)
        imageFeedEntry,
    required TResult Function(String title, File? video, FeedType feedType,
            bool autofocus, Either<FeedEditFailure, Unit> error)
        videoFeedEntry,
    required TResult Function(
            String title,
            String bodyText,
            List<String> options,
            int pollEndsDays,
            FeedType feedType,
            bool autofocus,
            Either<FeedEditFailure, Unit> error)
        pollFeedEntry,
  }) {
    return textFeedEntry(title, bodyText, feedType, autofocus, error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, String bodyText, FeedType feedType,
            bool autofocus, Either<FeedEditFailure, Unit> error)?
        textFeedEntry,
    TResult Function(String title, String url, FeedType feedType,
            bool autofocus, Either<FeedEditFailure, Unit> error)?
        linkFeedEntry,
    TResult Function(
            String title,
            List<ImageData> images,
            FeedType feedType,
            bool autofocus,
            Either<FeedEditFailure, Unit> error,
            Option<bool> dirty,
            Option<DeletedImageData> lastDeletedImage,
            int nextIndex)?
        imageFeedEntry,
    TResult Function(String title, File? video, FeedType feedType,
            bool autofocus, Either<FeedEditFailure, Unit> error)?
        videoFeedEntry,
    TResult Function(
            String title,
            String bodyText,
            List<String> options,
            int pollEndsDays,
            FeedType feedType,
            bool autofocus,
            Either<FeedEditFailure, Unit> error)?
        pollFeedEntry,
    required TResult orElse(),
  }) {
    if (textFeedEntry != null) {
      return textFeedEntry(title, bodyText, feedType, autofocus, error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TextFeedEntry value) textFeedEntry,
    required TResult Function(_LinkFeedEntry value) linkFeedEntry,
    required TResult Function(_ImageFeedEntry value) imageFeedEntry,
    required TResult Function(_VideoFeedEntry value) videoFeedEntry,
    required TResult Function(_PollFeedEntry value) pollFeedEntry,
  }) {
    return textFeedEntry(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TextFeedEntry value)? textFeedEntry,
    TResult Function(_LinkFeedEntry value)? linkFeedEntry,
    TResult Function(_ImageFeedEntry value)? imageFeedEntry,
    TResult Function(_VideoFeedEntry value)? videoFeedEntry,
    TResult Function(_PollFeedEntry value)? pollFeedEntry,
    required TResult orElse(),
  }) {
    if (textFeedEntry != null) {
      return textFeedEntry(this);
    }
    return orElse();
  }
}

abstract class _TextFeedEntry implements CreateFeedState {
  const factory _TextFeedEntry(
      {required String title,
      required String bodyText,
      required FeedType feedType,
      required bool autofocus,
      required Either<FeedEditFailure, Unit> error}) = _$_TextFeedEntry;

  @override
  String get title => throw _privateConstructorUsedError;
  String get bodyText => throw _privateConstructorUsedError;
  @override
  FeedType get feedType => throw _privateConstructorUsedError;
  @override
  bool get autofocus => throw _privateConstructorUsedError;
  @override
  Either<FeedEditFailure, Unit> get error => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TextFeedEntryCopyWith<_TextFeedEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LinkFeedEntryCopyWith<$Res>
    implements $CreateFeedStateCopyWith<$Res> {
  factory _$LinkFeedEntryCopyWith(
          _LinkFeedEntry value, $Res Function(_LinkFeedEntry) then) =
      __$LinkFeedEntryCopyWithImpl<$Res>;
  @override
  $Res call(
      {String title,
      String url,
      FeedType feedType,
      bool autofocus,
      Either<FeedEditFailure, Unit> error});
}

/// @nodoc
class __$LinkFeedEntryCopyWithImpl<$Res>
    extends _$CreateFeedStateCopyWithImpl<$Res>
    implements _$LinkFeedEntryCopyWith<$Res> {
  __$LinkFeedEntryCopyWithImpl(
      _LinkFeedEntry _value, $Res Function(_LinkFeedEntry) _then)
      : super(_value, (v) => _then(v as _LinkFeedEntry));

  @override
  _LinkFeedEntry get _value => super._value as _LinkFeedEntry;

  @override
  $Res call({
    Object? title = freezed,
    Object? url = freezed,
    Object? feedType = freezed,
    Object? autofocus = freezed,
    Object? error = freezed,
  }) {
    return _then(_LinkFeedEntry(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      feedType: feedType == freezed
          ? _value.feedType
          : feedType // ignore: cast_nullable_to_non_nullable
              as FeedType,
      autofocus: autofocus == freezed
          ? _value.autofocus
          : autofocus // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Either<FeedEditFailure, Unit>,
    ));
  }
}

/// @nodoc

class _$_LinkFeedEntry implements _LinkFeedEntry {
  const _$_LinkFeedEntry(
      {required this.title,
      required this.url,
      required this.feedType,
      required this.autofocus,
      required this.error});

  @override
  final String title;
  @override
  final String url;
  @override
  final FeedType feedType;
  @override
  final bool autofocus;
  @override
  final Either<FeedEditFailure, Unit> error;

  @override
  String toString() {
    return 'CreateFeedState.linkFeedEntry(title: $title, url: $url, feedType: $feedType, autofocus: $autofocus, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LinkFeedEntry &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.feedType, feedType) ||
                const DeepCollectionEquality()
                    .equals(other.feedType, feedType)) &&
            (identical(other.autofocus, autofocus) ||
                const DeepCollectionEquality()
                    .equals(other.autofocus, autofocus)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(feedType) ^
      const DeepCollectionEquality().hash(autofocus) ^
      const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  _$LinkFeedEntryCopyWith<_LinkFeedEntry> get copyWith =>
      __$LinkFeedEntryCopyWithImpl<_LinkFeedEntry>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, String bodyText, FeedType feedType,
            bool autofocus, Either<FeedEditFailure, Unit> error)
        textFeedEntry,
    required TResult Function(String title, String url, FeedType feedType,
            bool autofocus, Either<FeedEditFailure, Unit> error)
        linkFeedEntry,
    required TResult Function(
            String title,
            List<ImageData> images,
            FeedType feedType,
            bool autofocus,
            Either<FeedEditFailure, Unit> error,
            Option<bool> dirty,
            Option<DeletedImageData> lastDeletedImage,
            int nextIndex)
        imageFeedEntry,
    required TResult Function(String title, File? video, FeedType feedType,
            bool autofocus, Either<FeedEditFailure, Unit> error)
        videoFeedEntry,
    required TResult Function(
            String title,
            String bodyText,
            List<String> options,
            int pollEndsDays,
            FeedType feedType,
            bool autofocus,
            Either<FeedEditFailure, Unit> error)
        pollFeedEntry,
  }) {
    return linkFeedEntry(title, url, feedType, autofocus, error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, String bodyText, FeedType feedType,
            bool autofocus, Either<FeedEditFailure, Unit> error)?
        textFeedEntry,
    TResult Function(String title, String url, FeedType feedType,
            bool autofocus, Either<FeedEditFailure, Unit> error)?
        linkFeedEntry,
    TResult Function(
            String title,
            List<ImageData> images,
            FeedType feedType,
            bool autofocus,
            Either<FeedEditFailure, Unit> error,
            Option<bool> dirty,
            Option<DeletedImageData> lastDeletedImage,
            int nextIndex)?
        imageFeedEntry,
    TResult Function(String title, File? video, FeedType feedType,
            bool autofocus, Either<FeedEditFailure, Unit> error)?
        videoFeedEntry,
    TResult Function(
            String title,
            String bodyText,
            List<String> options,
            int pollEndsDays,
            FeedType feedType,
            bool autofocus,
            Either<FeedEditFailure, Unit> error)?
        pollFeedEntry,
    required TResult orElse(),
  }) {
    if (linkFeedEntry != null) {
      return linkFeedEntry(title, url, feedType, autofocus, error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TextFeedEntry value) textFeedEntry,
    required TResult Function(_LinkFeedEntry value) linkFeedEntry,
    required TResult Function(_ImageFeedEntry value) imageFeedEntry,
    required TResult Function(_VideoFeedEntry value) videoFeedEntry,
    required TResult Function(_PollFeedEntry value) pollFeedEntry,
  }) {
    return linkFeedEntry(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TextFeedEntry value)? textFeedEntry,
    TResult Function(_LinkFeedEntry value)? linkFeedEntry,
    TResult Function(_ImageFeedEntry value)? imageFeedEntry,
    TResult Function(_VideoFeedEntry value)? videoFeedEntry,
    TResult Function(_PollFeedEntry value)? pollFeedEntry,
    required TResult orElse(),
  }) {
    if (linkFeedEntry != null) {
      return linkFeedEntry(this);
    }
    return orElse();
  }
}

abstract class _LinkFeedEntry implements CreateFeedState {
  const factory _LinkFeedEntry(
      {required String title,
      required String url,
      required FeedType feedType,
      required bool autofocus,
      required Either<FeedEditFailure, Unit> error}) = _$_LinkFeedEntry;

  @override
  String get title => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  @override
  FeedType get feedType => throw _privateConstructorUsedError;
  @override
  bool get autofocus => throw _privateConstructorUsedError;
  @override
  Either<FeedEditFailure, Unit> get error => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LinkFeedEntryCopyWith<_LinkFeedEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ImageFeedEntryCopyWith<$Res>
    implements $CreateFeedStateCopyWith<$Res> {
  factory _$ImageFeedEntryCopyWith(
          _ImageFeedEntry value, $Res Function(_ImageFeedEntry) then) =
      __$ImageFeedEntryCopyWithImpl<$Res>;
  @override
  $Res call(
      {String title,
      List<ImageData> images,
      FeedType feedType,
      bool autofocus,
      Either<FeedEditFailure, Unit> error,
      Option<bool> dirty,
      Option<DeletedImageData> lastDeletedImage,
      int nextIndex});
}

/// @nodoc
class __$ImageFeedEntryCopyWithImpl<$Res>
    extends _$CreateFeedStateCopyWithImpl<$Res>
    implements _$ImageFeedEntryCopyWith<$Res> {
  __$ImageFeedEntryCopyWithImpl(
      _ImageFeedEntry _value, $Res Function(_ImageFeedEntry) _then)
      : super(_value, (v) => _then(v as _ImageFeedEntry));

  @override
  _ImageFeedEntry get _value => super._value as _ImageFeedEntry;

  @override
  $Res call({
    Object? title = freezed,
    Object? images = freezed,
    Object? feedType = freezed,
    Object? autofocus = freezed,
    Object? error = freezed,
    Object? dirty = freezed,
    Object? lastDeletedImage = freezed,
    Object? nextIndex = freezed,
  }) {
    return _then(_ImageFeedEntry(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      images: images == freezed
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageData>,
      feedType: feedType == freezed
          ? _value.feedType
          : feedType // ignore: cast_nullable_to_non_nullable
              as FeedType,
      autofocus: autofocus == freezed
          ? _value.autofocus
          : autofocus // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Either<FeedEditFailure, Unit>,
      dirty: dirty == freezed
          ? _value.dirty
          : dirty // ignore: cast_nullable_to_non_nullable
              as Option<bool>,
      lastDeletedImage: lastDeletedImage == freezed
          ? _value.lastDeletedImage
          : lastDeletedImage // ignore: cast_nullable_to_non_nullable
              as Option<DeletedImageData>,
      nextIndex: nextIndex == freezed
          ? _value.nextIndex
          : nextIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ImageFeedEntry implements _ImageFeedEntry {
  const _$_ImageFeedEntry(
      {required this.title,
      required this.images,
      required this.feedType,
      required this.autofocus,
      required this.error,
      required this.dirty,
      required this.lastDeletedImage,
      required this.nextIndex});

  @override
  final String title;
  @override
  final List<ImageData> images;
  @override
  final FeedType feedType;
  @override
  final bool autofocus;
  @override
  final Either<FeedEditFailure, Unit> error;
  @override
  final Option<bool> dirty;
  @override
  final Option<DeletedImageData> lastDeletedImage;
  @override
  final int nextIndex;

  @override
  String toString() {
    return 'CreateFeedState.imageFeedEntry(title: $title, images: $images, feedType: $feedType, autofocus: $autofocus, error: $error, dirty: $dirty, lastDeletedImage: $lastDeletedImage, nextIndex: $nextIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ImageFeedEntry &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.images, images) ||
                const DeepCollectionEquality().equals(other.images, images)) &&
            (identical(other.feedType, feedType) ||
                const DeepCollectionEquality()
                    .equals(other.feedType, feedType)) &&
            (identical(other.autofocus, autofocus) ||
                const DeepCollectionEquality()
                    .equals(other.autofocus, autofocus)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.dirty, dirty) ||
                const DeepCollectionEquality().equals(other.dirty, dirty)) &&
            (identical(other.lastDeletedImage, lastDeletedImage) ||
                const DeepCollectionEquality()
                    .equals(other.lastDeletedImage, lastDeletedImage)) &&
            (identical(other.nextIndex, nextIndex) ||
                const DeepCollectionEquality()
                    .equals(other.nextIndex, nextIndex)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(images) ^
      const DeepCollectionEquality().hash(feedType) ^
      const DeepCollectionEquality().hash(autofocus) ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(dirty) ^
      const DeepCollectionEquality().hash(lastDeletedImage) ^
      const DeepCollectionEquality().hash(nextIndex);

  @JsonKey(ignore: true)
  @override
  _$ImageFeedEntryCopyWith<_ImageFeedEntry> get copyWith =>
      __$ImageFeedEntryCopyWithImpl<_ImageFeedEntry>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, String bodyText, FeedType feedType,
            bool autofocus, Either<FeedEditFailure, Unit> error)
        textFeedEntry,
    required TResult Function(String title, String url, FeedType feedType,
            bool autofocus, Either<FeedEditFailure, Unit> error)
        linkFeedEntry,
    required TResult Function(
            String title,
            List<ImageData> images,
            FeedType feedType,
            bool autofocus,
            Either<FeedEditFailure, Unit> error,
            Option<bool> dirty,
            Option<DeletedImageData> lastDeletedImage,
            int nextIndex)
        imageFeedEntry,
    required TResult Function(String title, File? video, FeedType feedType,
            bool autofocus, Either<FeedEditFailure, Unit> error)
        videoFeedEntry,
    required TResult Function(
            String title,
            String bodyText,
            List<String> options,
            int pollEndsDays,
            FeedType feedType,
            bool autofocus,
            Either<FeedEditFailure, Unit> error)
        pollFeedEntry,
  }) {
    return imageFeedEntry(title, images, feedType, autofocus, error, dirty,
        lastDeletedImage, nextIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, String bodyText, FeedType feedType,
            bool autofocus, Either<FeedEditFailure, Unit> error)?
        textFeedEntry,
    TResult Function(String title, String url, FeedType feedType,
            bool autofocus, Either<FeedEditFailure, Unit> error)?
        linkFeedEntry,
    TResult Function(
            String title,
            List<ImageData> images,
            FeedType feedType,
            bool autofocus,
            Either<FeedEditFailure, Unit> error,
            Option<bool> dirty,
            Option<DeletedImageData> lastDeletedImage,
            int nextIndex)?
        imageFeedEntry,
    TResult Function(String title, File? video, FeedType feedType,
            bool autofocus, Either<FeedEditFailure, Unit> error)?
        videoFeedEntry,
    TResult Function(
            String title,
            String bodyText,
            List<String> options,
            int pollEndsDays,
            FeedType feedType,
            bool autofocus,
            Either<FeedEditFailure, Unit> error)?
        pollFeedEntry,
    required TResult orElse(),
  }) {
    if (imageFeedEntry != null) {
      return imageFeedEntry(title, images, feedType, autofocus, error, dirty,
          lastDeletedImage, nextIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TextFeedEntry value) textFeedEntry,
    required TResult Function(_LinkFeedEntry value) linkFeedEntry,
    required TResult Function(_ImageFeedEntry value) imageFeedEntry,
    required TResult Function(_VideoFeedEntry value) videoFeedEntry,
    required TResult Function(_PollFeedEntry value) pollFeedEntry,
  }) {
    return imageFeedEntry(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TextFeedEntry value)? textFeedEntry,
    TResult Function(_LinkFeedEntry value)? linkFeedEntry,
    TResult Function(_ImageFeedEntry value)? imageFeedEntry,
    TResult Function(_VideoFeedEntry value)? videoFeedEntry,
    TResult Function(_PollFeedEntry value)? pollFeedEntry,
    required TResult orElse(),
  }) {
    if (imageFeedEntry != null) {
      return imageFeedEntry(this);
    }
    return orElse();
  }
}

abstract class _ImageFeedEntry implements CreateFeedState {
  const factory _ImageFeedEntry(
      {required String title,
      required List<ImageData> images,
      required FeedType feedType,
      required bool autofocus,
      required Either<FeedEditFailure, Unit> error,
      required Option<bool> dirty,
      required Option<DeletedImageData> lastDeletedImage,
      required int nextIndex}) = _$_ImageFeedEntry;

  @override
  String get title => throw _privateConstructorUsedError;
  List<ImageData> get images => throw _privateConstructorUsedError;
  @override
  FeedType get feedType => throw _privateConstructorUsedError;
  @override
  bool get autofocus => throw _privateConstructorUsedError;
  @override
  Either<FeedEditFailure, Unit> get error => throw _privateConstructorUsedError;
  Option<bool> get dirty => throw _privateConstructorUsedError;
  Option<DeletedImageData> get lastDeletedImage =>
      throw _privateConstructorUsedError;
  int get nextIndex => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ImageFeedEntryCopyWith<_ImageFeedEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$VideoFeedEntryCopyWith<$Res>
    implements $CreateFeedStateCopyWith<$Res> {
  factory _$VideoFeedEntryCopyWith(
          _VideoFeedEntry value, $Res Function(_VideoFeedEntry) then) =
      __$VideoFeedEntryCopyWithImpl<$Res>;
  @override
  $Res call(
      {String title,
      File? video,
      FeedType feedType,
      bool autofocus,
      Either<FeedEditFailure, Unit> error});
}

/// @nodoc
class __$VideoFeedEntryCopyWithImpl<$Res>
    extends _$CreateFeedStateCopyWithImpl<$Res>
    implements _$VideoFeedEntryCopyWith<$Res> {
  __$VideoFeedEntryCopyWithImpl(
      _VideoFeedEntry _value, $Res Function(_VideoFeedEntry) _then)
      : super(_value, (v) => _then(v as _VideoFeedEntry));

  @override
  _VideoFeedEntry get _value => super._value as _VideoFeedEntry;

  @override
  $Res call({
    Object? title = freezed,
    Object? video = freezed,
    Object? feedType = freezed,
    Object? autofocus = freezed,
    Object? error = freezed,
  }) {
    return _then(_VideoFeedEntry(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      video: video == freezed
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as File?,
      feedType: feedType == freezed
          ? _value.feedType
          : feedType // ignore: cast_nullable_to_non_nullable
              as FeedType,
      autofocus: autofocus == freezed
          ? _value.autofocus
          : autofocus // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Either<FeedEditFailure, Unit>,
    ));
  }
}

/// @nodoc

class _$_VideoFeedEntry implements _VideoFeedEntry {
  const _$_VideoFeedEntry(
      {required this.title,
      this.video,
      required this.feedType,
      required this.autofocus,
      required this.error});

  @override
  final String title;
  @override
  final File? video;
  @override
  final FeedType feedType;
  @override
  final bool autofocus;
  @override
  final Either<FeedEditFailure, Unit> error;

  @override
  String toString() {
    return 'CreateFeedState.videoFeedEntry(title: $title, video: $video, feedType: $feedType, autofocus: $autofocus, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VideoFeedEntry &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.video, video) ||
                const DeepCollectionEquality().equals(other.video, video)) &&
            (identical(other.feedType, feedType) ||
                const DeepCollectionEquality()
                    .equals(other.feedType, feedType)) &&
            (identical(other.autofocus, autofocus) ||
                const DeepCollectionEquality()
                    .equals(other.autofocus, autofocus)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(video) ^
      const DeepCollectionEquality().hash(feedType) ^
      const DeepCollectionEquality().hash(autofocus) ^
      const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  _$VideoFeedEntryCopyWith<_VideoFeedEntry> get copyWith =>
      __$VideoFeedEntryCopyWithImpl<_VideoFeedEntry>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, String bodyText, FeedType feedType,
            bool autofocus, Either<FeedEditFailure, Unit> error)
        textFeedEntry,
    required TResult Function(String title, String url, FeedType feedType,
            bool autofocus, Either<FeedEditFailure, Unit> error)
        linkFeedEntry,
    required TResult Function(
            String title,
            List<ImageData> images,
            FeedType feedType,
            bool autofocus,
            Either<FeedEditFailure, Unit> error,
            Option<bool> dirty,
            Option<DeletedImageData> lastDeletedImage,
            int nextIndex)
        imageFeedEntry,
    required TResult Function(String title, File? video, FeedType feedType,
            bool autofocus, Either<FeedEditFailure, Unit> error)
        videoFeedEntry,
    required TResult Function(
            String title,
            String bodyText,
            List<String> options,
            int pollEndsDays,
            FeedType feedType,
            bool autofocus,
            Either<FeedEditFailure, Unit> error)
        pollFeedEntry,
  }) {
    return videoFeedEntry(title, video, feedType, autofocus, error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, String bodyText, FeedType feedType,
            bool autofocus, Either<FeedEditFailure, Unit> error)?
        textFeedEntry,
    TResult Function(String title, String url, FeedType feedType,
            bool autofocus, Either<FeedEditFailure, Unit> error)?
        linkFeedEntry,
    TResult Function(
            String title,
            List<ImageData> images,
            FeedType feedType,
            bool autofocus,
            Either<FeedEditFailure, Unit> error,
            Option<bool> dirty,
            Option<DeletedImageData> lastDeletedImage,
            int nextIndex)?
        imageFeedEntry,
    TResult Function(String title, File? video, FeedType feedType,
            bool autofocus, Either<FeedEditFailure, Unit> error)?
        videoFeedEntry,
    TResult Function(
            String title,
            String bodyText,
            List<String> options,
            int pollEndsDays,
            FeedType feedType,
            bool autofocus,
            Either<FeedEditFailure, Unit> error)?
        pollFeedEntry,
    required TResult orElse(),
  }) {
    if (videoFeedEntry != null) {
      return videoFeedEntry(title, video, feedType, autofocus, error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TextFeedEntry value) textFeedEntry,
    required TResult Function(_LinkFeedEntry value) linkFeedEntry,
    required TResult Function(_ImageFeedEntry value) imageFeedEntry,
    required TResult Function(_VideoFeedEntry value) videoFeedEntry,
    required TResult Function(_PollFeedEntry value) pollFeedEntry,
  }) {
    return videoFeedEntry(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TextFeedEntry value)? textFeedEntry,
    TResult Function(_LinkFeedEntry value)? linkFeedEntry,
    TResult Function(_ImageFeedEntry value)? imageFeedEntry,
    TResult Function(_VideoFeedEntry value)? videoFeedEntry,
    TResult Function(_PollFeedEntry value)? pollFeedEntry,
    required TResult orElse(),
  }) {
    if (videoFeedEntry != null) {
      return videoFeedEntry(this);
    }
    return orElse();
  }
}

abstract class _VideoFeedEntry implements CreateFeedState {
  const factory _VideoFeedEntry(
      {required String title,
      File? video,
      required FeedType feedType,
      required bool autofocus,
      required Either<FeedEditFailure, Unit> error}) = _$_VideoFeedEntry;

  @override
  String get title => throw _privateConstructorUsedError;
  File? get video => throw _privateConstructorUsedError;
  @override
  FeedType get feedType => throw _privateConstructorUsedError;
  @override
  bool get autofocus => throw _privateConstructorUsedError;
  @override
  Either<FeedEditFailure, Unit> get error => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$VideoFeedEntryCopyWith<_VideoFeedEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PollFeedEntryCopyWith<$Res>
    implements $CreateFeedStateCopyWith<$Res> {
  factory _$PollFeedEntryCopyWith(
          _PollFeedEntry value, $Res Function(_PollFeedEntry) then) =
      __$PollFeedEntryCopyWithImpl<$Res>;
  @override
  $Res call(
      {String title,
      String bodyText,
      List<String> options,
      int pollEndsDays,
      FeedType feedType,
      bool autofocus,
      Either<FeedEditFailure, Unit> error});
}

/// @nodoc
class __$PollFeedEntryCopyWithImpl<$Res>
    extends _$CreateFeedStateCopyWithImpl<$Res>
    implements _$PollFeedEntryCopyWith<$Res> {
  __$PollFeedEntryCopyWithImpl(
      _PollFeedEntry _value, $Res Function(_PollFeedEntry) _then)
      : super(_value, (v) => _then(v as _PollFeedEntry));

  @override
  _PollFeedEntry get _value => super._value as _PollFeedEntry;

  @override
  $Res call({
    Object? title = freezed,
    Object? bodyText = freezed,
    Object? options = freezed,
    Object? pollEndsDays = freezed,
    Object? feedType = freezed,
    Object? autofocus = freezed,
    Object? error = freezed,
  }) {
    return _then(_PollFeedEntry(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      bodyText: bodyText == freezed
          ? _value.bodyText
          : bodyText // ignore: cast_nullable_to_non_nullable
              as String,
      options: options == freezed
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as List<String>,
      pollEndsDays: pollEndsDays == freezed
          ? _value.pollEndsDays
          : pollEndsDays // ignore: cast_nullable_to_non_nullable
              as int,
      feedType: feedType == freezed
          ? _value.feedType
          : feedType // ignore: cast_nullable_to_non_nullable
              as FeedType,
      autofocus: autofocus == freezed
          ? _value.autofocus
          : autofocus // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Either<FeedEditFailure, Unit>,
    ));
  }
}

/// @nodoc

class _$_PollFeedEntry implements _PollFeedEntry {
  const _$_PollFeedEntry(
      {required this.title,
      required this.bodyText,
      required this.options,
      required this.pollEndsDays,
      required this.feedType,
      required this.autofocus,
      required this.error});

  @override
  final String title;
  @override
  final String bodyText;
  @override
  final List<String> options;
  @override
  final int pollEndsDays;
  @override
  final FeedType feedType;
  @override
  final bool autofocus;
  @override
  final Either<FeedEditFailure, Unit> error;

  @override
  String toString() {
    return 'CreateFeedState.pollFeedEntry(title: $title, bodyText: $bodyText, options: $options, pollEndsDays: $pollEndsDays, feedType: $feedType, autofocus: $autofocus, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PollFeedEntry &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.bodyText, bodyText) ||
                const DeepCollectionEquality()
                    .equals(other.bodyText, bodyText)) &&
            (identical(other.options, options) ||
                const DeepCollectionEquality()
                    .equals(other.options, options)) &&
            (identical(other.pollEndsDays, pollEndsDays) ||
                const DeepCollectionEquality()
                    .equals(other.pollEndsDays, pollEndsDays)) &&
            (identical(other.feedType, feedType) ||
                const DeepCollectionEquality()
                    .equals(other.feedType, feedType)) &&
            (identical(other.autofocus, autofocus) ||
                const DeepCollectionEquality()
                    .equals(other.autofocus, autofocus)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(bodyText) ^
      const DeepCollectionEquality().hash(options) ^
      const DeepCollectionEquality().hash(pollEndsDays) ^
      const DeepCollectionEquality().hash(feedType) ^
      const DeepCollectionEquality().hash(autofocus) ^
      const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  _$PollFeedEntryCopyWith<_PollFeedEntry> get copyWith =>
      __$PollFeedEntryCopyWithImpl<_PollFeedEntry>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, String bodyText, FeedType feedType,
            bool autofocus, Either<FeedEditFailure, Unit> error)
        textFeedEntry,
    required TResult Function(String title, String url, FeedType feedType,
            bool autofocus, Either<FeedEditFailure, Unit> error)
        linkFeedEntry,
    required TResult Function(
            String title,
            List<ImageData> images,
            FeedType feedType,
            bool autofocus,
            Either<FeedEditFailure, Unit> error,
            Option<bool> dirty,
            Option<DeletedImageData> lastDeletedImage,
            int nextIndex)
        imageFeedEntry,
    required TResult Function(String title, File? video, FeedType feedType,
            bool autofocus, Either<FeedEditFailure, Unit> error)
        videoFeedEntry,
    required TResult Function(
            String title,
            String bodyText,
            List<String> options,
            int pollEndsDays,
            FeedType feedType,
            bool autofocus,
            Either<FeedEditFailure, Unit> error)
        pollFeedEntry,
  }) {
    return pollFeedEntry(
        title, bodyText, options, pollEndsDays, feedType, autofocus, error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, String bodyText, FeedType feedType,
            bool autofocus, Either<FeedEditFailure, Unit> error)?
        textFeedEntry,
    TResult Function(String title, String url, FeedType feedType,
            bool autofocus, Either<FeedEditFailure, Unit> error)?
        linkFeedEntry,
    TResult Function(
            String title,
            List<ImageData> images,
            FeedType feedType,
            bool autofocus,
            Either<FeedEditFailure, Unit> error,
            Option<bool> dirty,
            Option<DeletedImageData> lastDeletedImage,
            int nextIndex)?
        imageFeedEntry,
    TResult Function(String title, File? video, FeedType feedType,
            bool autofocus, Either<FeedEditFailure, Unit> error)?
        videoFeedEntry,
    TResult Function(
            String title,
            String bodyText,
            List<String> options,
            int pollEndsDays,
            FeedType feedType,
            bool autofocus,
            Either<FeedEditFailure, Unit> error)?
        pollFeedEntry,
    required TResult orElse(),
  }) {
    if (pollFeedEntry != null) {
      return pollFeedEntry(
          title, bodyText, options, pollEndsDays, feedType, autofocus, error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TextFeedEntry value) textFeedEntry,
    required TResult Function(_LinkFeedEntry value) linkFeedEntry,
    required TResult Function(_ImageFeedEntry value) imageFeedEntry,
    required TResult Function(_VideoFeedEntry value) videoFeedEntry,
    required TResult Function(_PollFeedEntry value) pollFeedEntry,
  }) {
    return pollFeedEntry(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TextFeedEntry value)? textFeedEntry,
    TResult Function(_LinkFeedEntry value)? linkFeedEntry,
    TResult Function(_ImageFeedEntry value)? imageFeedEntry,
    TResult Function(_VideoFeedEntry value)? videoFeedEntry,
    TResult Function(_PollFeedEntry value)? pollFeedEntry,
    required TResult orElse(),
  }) {
    if (pollFeedEntry != null) {
      return pollFeedEntry(this);
    }
    return orElse();
  }
}

abstract class _PollFeedEntry implements CreateFeedState {
  const factory _PollFeedEntry(
      {required String title,
      required String bodyText,
      required List<String> options,
      required int pollEndsDays,
      required FeedType feedType,
      required bool autofocus,
      required Either<FeedEditFailure, Unit> error}) = _$_PollFeedEntry;

  @override
  String get title => throw _privateConstructorUsedError;
  String get bodyText => throw _privateConstructorUsedError;
  List<String> get options => throw _privateConstructorUsedError;
  int get pollEndsDays => throw _privateConstructorUsedError;
  @override
  FeedType get feedType => throw _privateConstructorUsedError;
  @override
  bool get autofocus => throw _privateConstructorUsedError;
  @override
  Either<FeedEditFailure, Unit> get error => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PollFeedEntryCopyWith<_PollFeedEntry> get copyWith =>
      throw _privateConstructorUsedError;
}
