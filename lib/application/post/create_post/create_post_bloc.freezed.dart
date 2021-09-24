// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'create_post_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CreatePostEventTearOff {
  const _$CreatePostEventTearOff();

  PostTypeChanged feedTypeChanged(
      {required int index,
      required bool autofocus,
      required Future<bool?> Function() showDialog}) {
    return PostTypeChanged(
      index: index,
      autofocus: autofocus,
      showDialog: showDialog,
    );
  }

  TitleChanged titleChanged(String title) {
    return TitleChanged(
      title,
    );
  }

  BodyTextChanged bodyTextChanged(String bodyText) {
    return BodyTextChanged(
      bodyText,
    );
  }

  UrlChanged urlChanged(String url) {
    return UrlChanged(
      url,
    );
  }

  PollEndsPressed pollEndsPressed(
      {required Future<int?> Function(Days) showDays}) {
    return PollEndsPressed(
      showDays: showDays,
    );
  }

  PollOptionAdded pollOptionAdded(String option) {
    return PollOptionAdded(
      option,
    );
  }

  PollOptionEdited pollOptionEdited(int index, String option) {
    return PollOptionEdited(
      index,
      option,
    );
  }

  PollOptionDeleted pollOptionDeleted(int index) {
    return PollOptionDeleted(
      index,
    );
  }

  AddImageClicked addImageClicked() {
    return const AddImageClicked();
  }

  ImageDeleted imageDeleted(String id) {
    return ImageDeleted(
      id,
    );
  }

  RecoverLastDeletedImage recoverLastDeletedImage() {
    return const RecoverLastDeletedImage();
  }

  PostPosted feedPosted() {
    return const PostPosted();
  }
}

/// @nodoc
const $CreatePostEvent = _$CreatePostEventTearOff();

/// @nodoc
mixin _$CreatePostEvent {
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
    required TResult Function(PostTypeChanged value) feedTypeChanged,
    required TResult Function(TitleChanged value) titleChanged,
    required TResult Function(BodyTextChanged value) bodyTextChanged,
    required TResult Function(UrlChanged value) urlChanged,
    required TResult Function(PollEndsPressed value) pollEndsPressed,
    required TResult Function(PollOptionAdded value) pollOptionAdded,
    required TResult Function(PollOptionEdited value) pollOptionEdited,
    required TResult Function(PollOptionDeleted value) pollOptionDeleted,
    required TResult Function(AddImageClicked value) addImageClicked,
    required TResult Function(ImageDeleted value) imageDeleted,
    required TResult Function(RecoverLastDeletedImage value)
        recoverLastDeletedImage,
    required TResult Function(PostPosted value) feedPosted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PostTypeChanged value)? feedTypeChanged,
    TResult Function(TitleChanged value)? titleChanged,
    TResult Function(BodyTextChanged value)? bodyTextChanged,
    TResult Function(UrlChanged value)? urlChanged,
    TResult Function(PollEndsPressed value)? pollEndsPressed,
    TResult Function(PollOptionAdded value)? pollOptionAdded,
    TResult Function(PollOptionEdited value)? pollOptionEdited,
    TResult Function(PollOptionDeleted value)? pollOptionDeleted,
    TResult Function(AddImageClicked value)? addImageClicked,
    TResult Function(ImageDeleted value)? imageDeleted,
    TResult Function(RecoverLastDeletedImage value)? recoverLastDeletedImage,
    TResult Function(PostPosted value)? feedPosted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreatePostEventCopyWith<$Res> {
  factory $CreatePostEventCopyWith(
          CreatePostEvent value, $Res Function(CreatePostEvent) then) =
      _$CreatePostEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CreatePostEventCopyWithImpl<$Res>
    implements $CreatePostEventCopyWith<$Res> {
  _$CreatePostEventCopyWithImpl(this._value, this._then);

  final CreatePostEvent _value;
  // ignore: unused_field
  final $Res Function(CreatePostEvent) _then;
}

/// @nodoc
abstract class $PostTypeChangedCopyWith<$Res> {
  factory $PostTypeChangedCopyWith(
          PostTypeChanged value, $Res Function(PostTypeChanged) then) =
      _$PostTypeChangedCopyWithImpl<$Res>;
  $Res call({int index, bool autofocus, Future<bool?> Function() showDialog});
}

/// @nodoc
class _$PostTypeChangedCopyWithImpl<$Res>
    extends _$CreatePostEventCopyWithImpl<$Res>
    implements $PostTypeChangedCopyWith<$Res> {
  _$PostTypeChangedCopyWithImpl(
      PostTypeChanged _value, $Res Function(PostTypeChanged) _then)
      : super(_value, (v) => _then(v as PostTypeChanged));

  @override
  PostTypeChanged get _value => super._value as PostTypeChanged;

  @override
  $Res call({
    Object? index = freezed,
    Object? autofocus = freezed,
    Object? showDialog = freezed,
  }) {
    return _then(PostTypeChanged(
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

class _$PostTypeChanged implements PostTypeChanged {
  const _$PostTypeChanged(
      {required this.index, required this.autofocus, required this.showDialog});

  @override
  final int index;
  @override
  final bool autofocus;
  @override
  final Future<bool?> Function() showDialog;

  @override
  String toString() {
    return 'CreatePostEvent.feedTypeChanged(index: $index, autofocus: $autofocus, showDialog: $showDialog)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PostTypeChanged &&
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
  $PostTypeChangedCopyWith<PostTypeChanged> get copyWith =>
      _$PostTypeChangedCopyWithImpl<PostTypeChanged>(this, _$identity);

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
    required TResult Function(PostTypeChanged value) feedTypeChanged,
    required TResult Function(TitleChanged value) titleChanged,
    required TResult Function(BodyTextChanged value) bodyTextChanged,
    required TResult Function(UrlChanged value) urlChanged,
    required TResult Function(PollEndsPressed value) pollEndsPressed,
    required TResult Function(PollOptionAdded value) pollOptionAdded,
    required TResult Function(PollOptionEdited value) pollOptionEdited,
    required TResult Function(PollOptionDeleted value) pollOptionDeleted,
    required TResult Function(AddImageClicked value) addImageClicked,
    required TResult Function(ImageDeleted value) imageDeleted,
    required TResult Function(RecoverLastDeletedImage value)
        recoverLastDeletedImage,
    required TResult Function(PostPosted value) feedPosted,
  }) {
    return feedTypeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PostTypeChanged value)? feedTypeChanged,
    TResult Function(TitleChanged value)? titleChanged,
    TResult Function(BodyTextChanged value)? bodyTextChanged,
    TResult Function(UrlChanged value)? urlChanged,
    TResult Function(PollEndsPressed value)? pollEndsPressed,
    TResult Function(PollOptionAdded value)? pollOptionAdded,
    TResult Function(PollOptionEdited value)? pollOptionEdited,
    TResult Function(PollOptionDeleted value)? pollOptionDeleted,
    TResult Function(AddImageClicked value)? addImageClicked,
    TResult Function(ImageDeleted value)? imageDeleted,
    TResult Function(RecoverLastDeletedImage value)? recoverLastDeletedImage,
    TResult Function(PostPosted value)? feedPosted,
    required TResult orElse(),
  }) {
    if (feedTypeChanged != null) {
      return feedTypeChanged(this);
    }
    return orElse();
  }
}

abstract class PostTypeChanged implements CreatePostEvent {
  const factory PostTypeChanged(
      {required int index,
      required bool autofocus,
      required Future<bool?> Function() showDialog}) = _$PostTypeChanged;

  int get index => throw _privateConstructorUsedError;
  bool get autofocus => throw _privateConstructorUsedError;
  Future<bool?> Function() get showDialog => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostTypeChangedCopyWith<PostTypeChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TitleChangedCopyWith<$Res> {
  factory $TitleChangedCopyWith(
          TitleChanged value, $Res Function(TitleChanged) then) =
      _$TitleChangedCopyWithImpl<$Res>;
  $Res call({String title});
}

/// @nodoc
class _$TitleChangedCopyWithImpl<$Res>
    extends _$CreatePostEventCopyWithImpl<$Res>
    implements $TitleChangedCopyWith<$Res> {
  _$TitleChangedCopyWithImpl(
      TitleChanged _value, $Res Function(TitleChanged) _then)
      : super(_value, (v) => _then(v as TitleChanged));

  @override
  TitleChanged get _value => super._value as TitleChanged;

  @override
  $Res call({
    Object? title = freezed,
  }) {
    return _then(TitleChanged(
      title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TitleChanged implements TitleChanged {
  const _$TitleChanged(this.title);

  @override
  final String title;

  @override
  String toString() {
    return 'CreatePostEvent.titleChanged(title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TitleChanged &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(title);

  @JsonKey(ignore: true)
  @override
  $TitleChangedCopyWith<TitleChanged> get copyWith =>
      _$TitleChangedCopyWithImpl<TitleChanged>(this, _$identity);

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
    required TResult Function(PostTypeChanged value) feedTypeChanged,
    required TResult Function(TitleChanged value) titleChanged,
    required TResult Function(BodyTextChanged value) bodyTextChanged,
    required TResult Function(UrlChanged value) urlChanged,
    required TResult Function(PollEndsPressed value) pollEndsPressed,
    required TResult Function(PollOptionAdded value) pollOptionAdded,
    required TResult Function(PollOptionEdited value) pollOptionEdited,
    required TResult Function(PollOptionDeleted value) pollOptionDeleted,
    required TResult Function(AddImageClicked value) addImageClicked,
    required TResult Function(ImageDeleted value) imageDeleted,
    required TResult Function(RecoverLastDeletedImage value)
        recoverLastDeletedImage,
    required TResult Function(PostPosted value) feedPosted,
  }) {
    return titleChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PostTypeChanged value)? feedTypeChanged,
    TResult Function(TitleChanged value)? titleChanged,
    TResult Function(BodyTextChanged value)? bodyTextChanged,
    TResult Function(UrlChanged value)? urlChanged,
    TResult Function(PollEndsPressed value)? pollEndsPressed,
    TResult Function(PollOptionAdded value)? pollOptionAdded,
    TResult Function(PollOptionEdited value)? pollOptionEdited,
    TResult Function(PollOptionDeleted value)? pollOptionDeleted,
    TResult Function(AddImageClicked value)? addImageClicked,
    TResult Function(ImageDeleted value)? imageDeleted,
    TResult Function(RecoverLastDeletedImage value)? recoverLastDeletedImage,
    TResult Function(PostPosted value)? feedPosted,
    required TResult orElse(),
  }) {
    if (titleChanged != null) {
      return titleChanged(this);
    }
    return orElse();
  }
}

abstract class TitleChanged implements CreatePostEvent {
  const factory TitleChanged(String title) = _$TitleChanged;

  String get title => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TitleChangedCopyWith<TitleChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BodyTextChangedCopyWith<$Res> {
  factory $BodyTextChangedCopyWith(
          BodyTextChanged value, $Res Function(BodyTextChanged) then) =
      _$BodyTextChangedCopyWithImpl<$Res>;
  $Res call({String bodyText});
}

/// @nodoc
class _$BodyTextChangedCopyWithImpl<$Res>
    extends _$CreatePostEventCopyWithImpl<$Res>
    implements $BodyTextChangedCopyWith<$Res> {
  _$BodyTextChangedCopyWithImpl(
      BodyTextChanged _value, $Res Function(BodyTextChanged) _then)
      : super(_value, (v) => _then(v as BodyTextChanged));

  @override
  BodyTextChanged get _value => super._value as BodyTextChanged;

  @override
  $Res call({
    Object? bodyText = freezed,
  }) {
    return _then(BodyTextChanged(
      bodyText == freezed
          ? _value.bodyText
          : bodyText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BodyTextChanged implements BodyTextChanged {
  const _$BodyTextChanged(this.bodyText);

  @override
  final String bodyText;

  @override
  String toString() {
    return 'CreatePostEvent.bodyTextChanged(bodyText: $bodyText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BodyTextChanged &&
            (identical(other.bodyText, bodyText) ||
                const DeepCollectionEquality()
                    .equals(other.bodyText, bodyText)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(bodyText);

  @JsonKey(ignore: true)
  @override
  $BodyTextChangedCopyWith<BodyTextChanged> get copyWith =>
      _$BodyTextChangedCopyWithImpl<BodyTextChanged>(this, _$identity);

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
    required TResult Function(PostTypeChanged value) feedTypeChanged,
    required TResult Function(TitleChanged value) titleChanged,
    required TResult Function(BodyTextChanged value) bodyTextChanged,
    required TResult Function(UrlChanged value) urlChanged,
    required TResult Function(PollEndsPressed value) pollEndsPressed,
    required TResult Function(PollOptionAdded value) pollOptionAdded,
    required TResult Function(PollOptionEdited value) pollOptionEdited,
    required TResult Function(PollOptionDeleted value) pollOptionDeleted,
    required TResult Function(AddImageClicked value) addImageClicked,
    required TResult Function(ImageDeleted value) imageDeleted,
    required TResult Function(RecoverLastDeletedImage value)
        recoverLastDeletedImage,
    required TResult Function(PostPosted value) feedPosted,
  }) {
    return bodyTextChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PostTypeChanged value)? feedTypeChanged,
    TResult Function(TitleChanged value)? titleChanged,
    TResult Function(BodyTextChanged value)? bodyTextChanged,
    TResult Function(UrlChanged value)? urlChanged,
    TResult Function(PollEndsPressed value)? pollEndsPressed,
    TResult Function(PollOptionAdded value)? pollOptionAdded,
    TResult Function(PollOptionEdited value)? pollOptionEdited,
    TResult Function(PollOptionDeleted value)? pollOptionDeleted,
    TResult Function(AddImageClicked value)? addImageClicked,
    TResult Function(ImageDeleted value)? imageDeleted,
    TResult Function(RecoverLastDeletedImage value)? recoverLastDeletedImage,
    TResult Function(PostPosted value)? feedPosted,
    required TResult orElse(),
  }) {
    if (bodyTextChanged != null) {
      return bodyTextChanged(this);
    }
    return orElse();
  }
}

abstract class BodyTextChanged implements CreatePostEvent {
  const factory BodyTextChanged(String bodyText) = _$BodyTextChanged;

  String get bodyText => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BodyTextChangedCopyWith<BodyTextChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UrlChangedCopyWith<$Res> {
  factory $UrlChangedCopyWith(
          UrlChanged value, $Res Function(UrlChanged) then) =
      _$UrlChangedCopyWithImpl<$Res>;
  $Res call({String url});
}

/// @nodoc
class _$UrlChangedCopyWithImpl<$Res> extends _$CreatePostEventCopyWithImpl<$Res>
    implements $UrlChangedCopyWith<$Res> {
  _$UrlChangedCopyWithImpl(UrlChanged _value, $Res Function(UrlChanged) _then)
      : super(_value, (v) => _then(v as UrlChanged));

  @override
  UrlChanged get _value => super._value as UrlChanged;

  @override
  $Res call({
    Object? url = freezed,
  }) {
    return _then(UrlChanged(
      url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UrlChanged implements UrlChanged {
  const _$UrlChanged(this.url);

  @override
  final String url;

  @override
  String toString() {
    return 'CreatePostEvent.urlChanged(url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UrlChanged &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(url);

  @JsonKey(ignore: true)
  @override
  $UrlChangedCopyWith<UrlChanged> get copyWith =>
      _$UrlChangedCopyWithImpl<UrlChanged>(this, _$identity);

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
    required TResult Function(PostTypeChanged value) feedTypeChanged,
    required TResult Function(TitleChanged value) titleChanged,
    required TResult Function(BodyTextChanged value) bodyTextChanged,
    required TResult Function(UrlChanged value) urlChanged,
    required TResult Function(PollEndsPressed value) pollEndsPressed,
    required TResult Function(PollOptionAdded value) pollOptionAdded,
    required TResult Function(PollOptionEdited value) pollOptionEdited,
    required TResult Function(PollOptionDeleted value) pollOptionDeleted,
    required TResult Function(AddImageClicked value) addImageClicked,
    required TResult Function(ImageDeleted value) imageDeleted,
    required TResult Function(RecoverLastDeletedImage value)
        recoverLastDeletedImage,
    required TResult Function(PostPosted value) feedPosted,
  }) {
    return urlChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PostTypeChanged value)? feedTypeChanged,
    TResult Function(TitleChanged value)? titleChanged,
    TResult Function(BodyTextChanged value)? bodyTextChanged,
    TResult Function(UrlChanged value)? urlChanged,
    TResult Function(PollEndsPressed value)? pollEndsPressed,
    TResult Function(PollOptionAdded value)? pollOptionAdded,
    TResult Function(PollOptionEdited value)? pollOptionEdited,
    TResult Function(PollOptionDeleted value)? pollOptionDeleted,
    TResult Function(AddImageClicked value)? addImageClicked,
    TResult Function(ImageDeleted value)? imageDeleted,
    TResult Function(RecoverLastDeletedImage value)? recoverLastDeletedImage,
    TResult Function(PostPosted value)? feedPosted,
    required TResult orElse(),
  }) {
    if (urlChanged != null) {
      return urlChanged(this);
    }
    return orElse();
  }
}

abstract class UrlChanged implements CreatePostEvent {
  const factory UrlChanged(String url) = _$UrlChanged;

  String get url => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UrlChangedCopyWith<UrlChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PollEndsPressedCopyWith<$Res> {
  factory $PollEndsPressedCopyWith(
          PollEndsPressed value, $Res Function(PollEndsPressed) then) =
      _$PollEndsPressedCopyWithImpl<$Res>;
  $Res call({Future<int?> Function(Days) showDays});
}

/// @nodoc
class _$PollEndsPressedCopyWithImpl<$Res>
    extends _$CreatePostEventCopyWithImpl<$Res>
    implements $PollEndsPressedCopyWith<$Res> {
  _$PollEndsPressedCopyWithImpl(
      PollEndsPressed _value, $Res Function(PollEndsPressed) _then)
      : super(_value, (v) => _then(v as PollEndsPressed));

  @override
  PollEndsPressed get _value => super._value as PollEndsPressed;

  @override
  $Res call({
    Object? showDays = freezed,
  }) {
    return _then(PollEndsPressed(
      showDays: showDays == freezed
          ? _value.showDays
          : showDays // ignore: cast_nullable_to_non_nullable
              as Future<int?> Function(Days),
    ));
  }
}

/// @nodoc

class _$PollEndsPressed implements PollEndsPressed {
  const _$PollEndsPressed({required this.showDays});

  @override
  final Future<int?> Function(Days) showDays;

  @override
  String toString() {
    return 'CreatePostEvent.pollEndsPressed(showDays: $showDays)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PollEndsPressed &&
            (identical(other.showDays, showDays) ||
                const DeepCollectionEquality()
                    .equals(other.showDays, showDays)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(showDays);

  @JsonKey(ignore: true)
  @override
  $PollEndsPressedCopyWith<PollEndsPressed> get copyWith =>
      _$PollEndsPressedCopyWithImpl<PollEndsPressed>(this, _$identity);

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
    required TResult Function(PostTypeChanged value) feedTypeChanged,
    required TResult Function(TitleChanged value) titleChanged,
    required TResult Function(BodyTextChanged value) bodyTextChanged,
    required TResult Function(UrlChanged value) urlChanged,
    required TResult Function(PollEndsPressed value) pollEndsPressed,
    required TResult Function(PollOptionAdded value) pollOptionAdded,
    required TResult Function(PollOptionEdited value) pollOptionEdited,
    required TResult Function(PollOptionDeleted value) pollOptionDeleted,
    required TResult Function(AddImageClicked value) addImageClicked,
    required TResult Function(ImageDeleted value) imageDeleted,
    required TResult Function(RecoverLastDeletedImage value)
        recoverLastDeletedImage,
    required TResult Function(PostPosted value) feedPosted,
  }) {
    return pollEndsPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PostTypeChanged value)? feedTypeChanged,
    TResult Function(TitleChanged value)? titleChanged,
    TResult Function(BodyTextChanged value)? bodyTextChanged,
    TResult Function(UrlChanged value)? urlChanged,
    TResult Function(PollEndsPressed value)? pollEndsPressed,
    TResult Function(PollOptionAdded value)? pollOptionAdded,
    TResult Function(PollOptionEdited value)? pollOptionEdited,
    TResult Function(PollOptionDeleted value)? pollOptionDeleted,
    TResult Function(AddImageClicked value)? addImageClicked,
    TResult Function(ImageDeleted value)? imageDeleted,
    TResult Function(RecoverLastDeletedImage value)? recoverLastDeletedImage,
    TResult Function(PostPosted value)? feedPosted,
    required TResult orElse(),
  }) {
    if (pollEndsPressed != null) {
      return pollEndsPressed(this);
    }
    return orElse();
  }
}

abstract class PollEndsPressed implements CreatePostEvent {
  const factory PollEndsPressed(
      {required Future<int?> Function(Days) showDays}) = _$PollEndsPressed;

  Future<int?> Function(Days) get showDays =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PollEndsPressedCopyWith<PollEndsPressed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PollOptionAddedCopyWith<$Res> {
  factory $PollOptionAddedCopyWith(
          PollOptionAdded value, $Res Function(PollOptionAdded) then) =
      _$PollOptionAddedCopyWithImpl<$Res>;
  $Res call({String option});
}

/// @nodoc
class _$PollOptionAddedCopyWithImpl<$Res>
    extends _$CreatePostEventCopyWithImpl<$Res>
    implements $PollOptionAddedCopyWith<$Res> {
  _$PollOptionAddedCopyWithImpl(
      PollOptionAdded _value, $Res Function(PollOptionAdded) _then)
      : super(_value, (v) => _then(v as PollOptionAdded));

  @override
  PollOptionAdded get _value => super._value as PollOptionAdded;

  @override
  $Res call({
    Object? option = freezed,
  }) {
    return _then(PollOptionAdded(
      option == freezed
          ? _value.option
          : option // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PollOptionAdded implements PollOptionAdded {
  const _$PollOptionAdded(this.option);

  @override
  final String option;

  @override
  String toString() {
    return 'CreatePostEvent.pollOptionAdded(option: $option)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PollOptionAdded &&
            (identical(other.option, option) ||
                const DeepCollectionEquality().equals(other.option, option)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(option);

  @JsonKey(ignore: true)
  @override
  $PollOptionAddedCopyWith<PollOptionAdded> get copyWith =>
      _$PollOptionAddedCopyWithImpl<PollOptionAdded>(this, _$identity);

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
    required TResult Function(PostTypeChanged value) feedTypeChanged,
    required TResult Function(TitleChanged value) titleChanged,
    required TResult Function(BodyTextChanged value) bodyTextChanged,
    required TResult Function(UrlChanged value) urlChanged,
    required TResult Function(PollEndsPressed value) pollEndsPressed,
    required TResult Function(PollOptionAdded value) pollOptionAdded,
    required TResult Function(PollOptionEdited value) pollOptionEdited,
    required TResult Function(PollOptionDeleted value) pollOptionDeleted,
    required TResult Function(AddImageClicked value) addImageClicked,
    required TResult Function(ImageDeleted value) imageDeleted,
    required TResult Function(RecoverLastDeletedImage value)
        recoverLastDeletedImage,
    required TResult Function(PostPosted value) feedPosted,
  }) {
    return pollOptionAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PostTypeChanged value)? feedTypeChanged,
    TResult Function(TitleChanged value)? titleChanged,
    TResult Function(BodyTextChanged value)? bodyTextChanged,
    TResult Function(UrlChanged value)? urlChanged,
    TResult Function(PollEndsPressed value)? pollEndsPressed,
    TResult Function(PollOptionAdded value)? pollOptionAdded,
    TResult Function(PollOptionEdited value)? pollOptionEdited,
    TResult Function(PollOptionDeleted value)? pollOptionDeleted,
    TResult Function(AddImageClicked value)? addImageClicked,
    TResult Function(ImageDeleted value)? imageDeleted,
    TResult Function(RecoverLastDeletedImage value)? recoverLastDeletedImage,
    TResult Function(PostPosted value)? feedPosted,
    required TResult orElse(),
  }) {
    if (pollOptionAdded != null) {
      return pollOptionAdded(this);
    }
    return orElse();
  }
}

abstract class PollOptionAdded implements CreatePostEvent {
  const factory PollOptionAdded(String option) = _$PollOptionAdded;

  String get option => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PollOptionAddedCopyWith<PollOptionAdded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PollOptionEditedCopyWith<$Res> {
  factory $PollOptionEditedCopyWith(
          PollOptionEdited value, $Res Function(PollOptionEdited) then) =
      _$PollOptionEditedCopyWithImpl<$Res>;
  $Res call({int index, String option});
}

/// @nodoc
class _$PollOptionEditedCopyWithImpl<$Res>
    extends _$CreatePostEventCopyWithImpl<$Res>
    implements $PollOptionEditedCopyWith<$Res> {
  _$PollOptionEditedCopyWithImpl(
      PollOptionEdited _value, $Res Function(PollOptionEdited) _then)
      : super(_value, (v) => _then(v as PollOptionEdited));

  @override
  PollOptionEdited get _value => super._value as PollOptionEdited;

  @override
  $Res call({
    Object? index = freezed,
    Object? option = freezed,
  }) {
    return _then(PollOptionEdited(
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

class _$PollOptionEdited implements PollOptionEdited {
  const _$PollOptionEdited(this.index, this.option);

  @override
  final int index;
  @override
  final String option;

  @override
  String toString() {
    return 'CreatePostEvent.pollOptionEdited(index: $index, option: $option)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PollOptionEdited &&
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
  $PollOptionEditedCopyWith<PollOptionEdited> get copyWith =>
      _$PollOptionEditedCopyWithImpl<PollOptionEdited>(this, _$identity);

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
    required TResult Function(PostTypeChanged value) feedTypeChanged,
    required TResult Function(TitleChanged value) titleChanged,
    required TResult Function(BodyTextChanged value) bodyTextChanged,
    required TResult Function(UrlChanged value) urlChanged,
    required TResult Function(PollEndsPressed value) pollEndsPressed,
    required TResult Function(PollOptionAdded value) pollOptionAdded,
    required TResult Function(PollOptionEdited value) pollOptionEdited,
    required TResult Function(PollOptionDeleted value) pollOptionDeleted,
    required TResult Function(AddImageClicked value) addImageClicked,
    required TResult Function(ImageDeleted value) imageDeleted,
    required TResult Function(RecoverLastDeletedImage value)
        recoverLastDeletedImage,
    required TResult Function(PostPosted value) feedPosted,
  }) {
    return pollOptionEdited(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PostTypeChanged value)? feedTypeChanged,
    TResult Function(TitleChanged value)? titleChanged,
    TResult Function(BodyTextChanged value)? bodyTextChanged,
    TResult Function(UrlChanged value)? urlChanged,
    TResult Function(PollEndsPressed value)? pollEndsPressed,
    TResult Function(PollOptionAdded value)? pollOptionAdded,
    TResult Function(PollOptionEdited value)? pollOptionEdited,
    TResult Function(PollOptionDeleted value)? pollOptionDeleted,
    TResult Function(AddImageClicked value)? addImageClicked,
    TResult Function(ImageDeleted value)? imageDeleted,
    TResult Function(RecoverLastDeletedImage value)? recoverLastDeletedImage,
    TResult Function(PostPosted value)? feedPosted,
    required TResult orElse(),
  }) {
    if (pollOptionEdited != null) {
      return pollOptionEdited(this);
    }
    return orElse();
  }
}

abstract class PollOptionEdited implements CreatePostEvent {
  const factory PollOptionEdited(int index, String option) = _$PollOptionEdited;

  int get index => throw _privateConstructorUsedError;
  String get option => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PollOptionEditedCopyWith<PollOptionEdited> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PollOptionDeletedCopyWith<$Res> {
  factory $PollOptionDeletedCopyWith(
          PollOptionDeleted value, $Res Function(PollOptionDeleted) then) =
      _$PollOptionDeletedCopyWithImpl<$Res>;
  $Res call({int index});
}

/// @nodoc
class _$PollOptionDeletedCopyWithImpl<$Res>
    extends _$CreatePostEventCopyWithImpl<$Res>
    implements $PollOptionDeletedCopyWith<$Res> {
  _$PollOptionDeletedCopyWithImpl(
      PollOptionDeleted _value, $Res Function(PollOptionDeleted) _then)
      : super(_value, (v) => _then(v as PollOptionDeleted));

  @override
  PollOptionDeleted get _value => super._value as PollOptionDeleted;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(PollOptionDeleted(
      index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$PollOptionDeleted implements PollOptionDeleted {
  const _$PollOptionDeleted(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'CreatePostEvent.pollOptionDeleted(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PollOptionDeleted &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(index);

  @JsonKey(ignore: true)
  @override
  $PollOptionDeletedCopyWith<PollOptionDeleted> get copyWith =>
      _$PollOptionDeletedCopyWithImpl<PollOptionDeleted>(this, _$identity);

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
    required TResult Function(PostTypeChanged value) feedTypeChanged,
    required TResult Function(TitleChanged value) titleChanged,
    required TResult Function(BodyTextChanged value) bodyTextChanged,
    required TResult Function(UrlChanged value) urlChanged,
    required TResult Function(PollEndsPressed value) pollEndsPressed,
    required TResult Function(PollOptionAdded value) pollOptionAdded,
    required TResult Function(PollOptionEdited value) pollOptionEdited,
    required TResult Function(PollOptionDeleted value) pollOptionDeleted,
    required TResult Function(AddImageClicked value) addImageClicked,
    required TResult Function(ImageDeleted value) imageDeleted,
    required TResult Function(RecoverLastDeletedImage value)
        recoverLastDeletedImage,
    required TResult Function(PostPosted value) feedPosted,
  }) {
    return pollOptionDeleted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PostTypeChanged value)? feedTypeChanged,
    TResult Function(TitleChanged value)? titleChanged,
    TResult Function(BodyTextChanged value)? bodyTextChanged,
    TResult Function(UrlChanged value)? urlChanged,
    TResult Function(PollEndsPressed value)? pollEndsPressed,
    TResult Function(PollOptionAdded value)? pollOptionAdded,
    TResult Function(PollOptionEdited value)? pollOptionEdited,
    TResult Function(PollOptionDeleted value)? pollOptionDeleted,
    TResult Function(AddImageClicked value)? addImageClicked,
    TResult Function(ImageDeleted value)? imageDeleted,
    TResult Function(RecoverLastDeletedImage value)? recoverLastDeletedImage,
    TResult Function(PostPosted value)? feedPosted,
    required TResult orElse(),
  }) {
    if (pollOptionDeleted != null) {
      return pollOptionDeleted(this);
    }
    return orElse();
  }
}

abstract class PollOptionDeleted implements CreatePostEvent {
  const factory PollOptionDeleted(int index) = _$PollOptionDeleted;

  int get index => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PollOptionDeletedCopyWith<PollOptionDeleted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddImageClickedCopyWith<$Res> {
  factory $AddImageClickedCopyWith(
          AddImageClicked value, $Res Function(AddImageClicked) then) =
      _$AddImageClickedCopyWithImpl<$Res>;
}

/// @nodoc
class _$AddImageClickedCopyWithImpl<$Res>
    extends _$CreatePostEventCopyWithImpl<$Res>
    implements $AddImageClickedCopyWith<$Res> {
  _$AddImageClickedCopyWithImpl(
      AddImageClicked _value, $Res Function(AddImageClicked) _then)
      : super(_value, (v) => _then(v as AddImageClicked));

  @override
  AddImageClicked get _value => super._value as AddImageClicked;
}

/// @nodoc

class _$AddImageClicked implements AddImageClicked {
  const _$AddImageClicked();

  @override
  String toString() {
    return 'CreatePostEvent.addImageClicked()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AddImageClicked);
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
    required TResult Function(PostTypeChanged value) feedTypeChanged,
    required TResult Function(TitleChanged value) titleChanged,
    required TResult Function(BodyTextChanged value) bodyTextChanged,
    required TResult Function(UrlChanged value) urlChanged,
    required TResult Function(PollEndsPressed value) pollEndsPressed,
    required TResult Function(PollOptionAdded value) pollOptionAdded,
    required TResult Function(PollOptionEdited value) pollOptionEdited,
    required TResult Function(PollOptionDeleted value) pollOptionDeleted,
    required TResult Function(AddImageClicked value) addImageClicked,
    required TResult Function(ImageDeleted value) imageDeleted,
    required TResult Function(RecoverLastDeletedImage value)
        recoverLastDeletedImage,
    required TResult Function(PostPosted value) feedPosted,
  }) {
    return addImageClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PostTypeChanged value)? feedTypeChanged,
    TResult Function(TitleChanged value)? titleChanged,
    TResult Function(BodyTextChanged value)? bodyTextChanged,
    TResult Function(UrlChanged value)? urlChanged,
    TResult Function(PollEndsPressed value)? pollEndsPressed,
    TResult Function(PollOptionAdded value)? pollOptionAdded,
    TResult Function(PollOptionEdited value)? pollOptionEdited,
    TResult Function(PollOptionDeleted value)? pollOptionDeleted,
    TResult Function(AddImageClicked value)? addImageClicked,
    TResult Function(ImageDeleted value)? imageDeleted,
    TResult Function(RecoverLastDeletedImage value)? recoverLastDeletedImage,
    TResult Function(PostPosted value)? feedPosted,
    required TResult orElse(),
  }) {
    if (addImageClicked != null) {
      return addImageClicked(this);
    }
    return orElse();
  }
}

abstract class AddImageClicked implements CreatePostEvent {
  const factory AddImageClicked() = _$AddImageClicked;
}

/// @nodoc
abstract class $ImageDeletedCopyWith<$Res> {
  factory $ImageDeletedCopyWith(
          ImageDeleted value, $Res Function(ImageDeleted) then) =
      _$ImageDeletedCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class _$ImageDeletedCopyWithImpl<$Res>
    extends _$CreatePostEventCopyWithImpl<$Res>
    implements $ImageDeletedCopyWith<$Res> {
  _$ImageDeletedCopyWithImpl(
      ImageDeleted _value, $Res Function(ImageDeleted) _then)
      : super(_value, (v) => _then(v as ImageDeleted));

  @override
  ImageDeleted get _value => super._value as ImageDeleted;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(ImageDeleted(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ImageDeleted implements ImageDeleted {
  const _$ImageDeleted(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'CreatePostEvent.imageDeleted(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ImageDeleted &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  $ImageDeletedCopyWith<ImageDeleted> get copyWith =>
      _$ImageDeletedCopyWithImpl<ImageDeleted>(this, _$identity);

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
    required TResult Function(PostTypeChanged value) feedTypeChanged,
    required TResult Function(TitleChanged value) titleChanged,
    required TResult Function(BodyTextChanged value) bodyTextChanged,
    required TResult Function(UrlChanged value) urlChanged,
    required TResult Function(PollEndsPressed value) pollEndsPressed,
    required TResult Function(PollOptionAdded value) pollOptionAdded,
    required TResult Function(PollOptionEdited value) pollOptionEdited,
    required TResult Function(PollOptionDeleted value) pollOptionDeleted,
    required TResult Function(AddImageClicked value) addImageClicked,
    required TResult Function(ImageDeleted value) imageDeleted,
    required TResult Function(RecoverLastDeletedImage value)
        recoverLastDeletedImage,
    required TResult Function(PostPosted value) feedPosted,
  }) {
    return imageDeleted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PostTypeChanged value)? feedTypeChanged,
    TResult Function(TitleChanged value)? titleChanged,
    TResult Function(BodyTextChanged value)? bodyTextChanged,
    TResult Function(UrlChanged value)? urlChanged,
    TResult Function(PollEndsPressed value)? pollEndsPressed,
    TResult Function(PollOptionAdded value)? pollOptionAdded,
    TResult Function(PollOptionEdited value)? pollOptionEdited,
    TResult Function(PollOptionDeleted value)? pollOptionDeleted,
    TResult Function(AddImageClicked value)? addImageClicked,
    TResult Function(ImageDeleted value)? imageDeleted,
    TResult Function(RecoverLastDeletedImage value)? recoverLastDeletedImage,
    TResult Function(PostPosted value)? feedPosted,
    required TResult orElse(),
  }) {
    if (imageDeleted != null) {
      return imageDeleted(this);
    }
    return orElse();
  }
}

abstract class ImageDeleted implements CreatePostEvent {
  const factory ImageDeleted(String id) = _$ImageDeleted;

  String get id => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageDeletedCopyWith<ImageDeleted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecoverLastDeletedImageCopyWith<$Res> {
  factory $RecoverLastDeletedImageCopyWith(RecoverLastDeletedImage value,
          $Res Function(RecoverLastDeletedImage) then) =
      _$RecoverLastDeletedImageCopyWithImpl<$Res>;
}

/// @nodoc
class _$RecoverLastDeletedImageCopyWithImpl<$Res>
    extends _$CreatePostEventCopyWithImpl<$Res>
    implements $RecoverLastDeletedImageCopyWith<$Res> {
  _$RecoverLastDeletedImageCopyWithImpl(RecoverLastDeletedImage _value,
      $Res Function(RecoverLastDeletedImage) _then)
      : super(_value, (v) => _then(v as RecoverLastDeletedImage));

  @override
  RecoverLastDeletedImage get _value => super._value as RecoverLastDeletedImage;
}

/// @nodoc

class _$RecoverLastDeletedImage implements RecoverLastDeletedImage {
  const _$RecoverLastDeletedImage();

  @override
  String toString() {
    return 'CreatePostEvent.recoverLastDeletedImage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is RecoverLastDeletedImage);
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
    required TResult Function(PostTypeChanged value) feedTypeChanged,
    required TResult Function(TitleChanged value) titleChanged,
    required TResult Function(BodyTextChanged value) bodyTextChanged,
    required TResult Function(UrlChanged value) urlChanged,
    required TResult Function(PollEndsPressed value) pollEndsPressed,
    required TResult Function(PollOptionAdded value) pollOptionAdded,
    required TResult Function(PollOptionEdited value) pollOptionEdited,
    required TResult Function(PollOptionDeleted value) pollOptionDeleted,
    required TResult Function(AddImageClicked value) addImageClicked,
    required TResult Function(ImageDeleted value) imageDeleted,
    required TResult Function(RecoverLastDeletedImage value)
        recoverLastDeletedImage,
    required TResult Function(PostPosted value) feedPosted,
  }) {
    return recoverLastDeletedImage(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PostTypeChanged value)? feedTypeChanged,
    TResult Function(TitleChanged value)? titleChanged,
    TResult Function(BodyTextChanged value)? bodyTextChanged,
    TResult Function(UrlChanged value)? urlChanged,
    TResult Function(PollEndsPressed value)? pollEndsPressed,
    TResult Function(PollOptionAdded value)? pollOptionAdded,
    TResult Function(PollOptionEdited value)? pollOptionEdited,
    TResult Function(PollOptionDeleted value)? pollOptionDeleted,
    TResult Function(AddImageClicked value)? addImageClicked,
    TResult Function(ImageDeleted value)? imageDeleted,
    TResult Function(RecoverLastDeletedImage value)? recoverLastDeletedImage,
    TResult Function(PostPosted value)? feedPosted,
    required TResult orElse(),
  }) {
    if (recoverLastDeletedImage != null) {
      return recoverLastDeletedImage(this);
    }
    return orElse();
  }
}

abstract class RecoverLastDeletedImage implements CreatePostEvent {
  const factory RecoverLastDeletedImage() = _$RecoverLastDeletedImage;
}

/// @nodoc
abstract class $PostPostedCopyWith<$Res> {
  factory $PostPostedCopyWith(
          PostPosted value, $Res Function(PostPosted) then) =
      _$PostPostedCopyWithImpl<$Res>;
}

/// @nodoc
class _$PostPostedCopyWithImpl<$Res> extends _$CreatePostEventCopyWithImpl<$Res>
    implements $PostPostedCopyWith<$Res> {
  _$PostPostedCopyWithImpl(PostPosted _value, $Res Function(PostPosted) _then)
      : super(_value, (v) => _then(v as PostPosted));

  @override
  PostPosted get _value => super._value as PostPosted;
}

/// @nodoc

class _$PostPosted implements PostPosted {
  const _$PostPosted();

  @override
  String toString() {
    return 'CreatePostEvent.feedPosted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is PostPosted);
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
    required TResult Function(PostTypeChanged value) feedTypeChanged,
    required TResult Function(TitleChanged value) titleChanged,
    required TResult Function(BodyTextChanged value) bodyTextChanged,
    required TResult Function(UrlChanged value) urlChanged,
    required TResult Function(PollEndsPressed value) pollEndsPressed,
    required TResult Function(PollOptionAdded value) pollOptionAdded,
    required TResult Function(PollOptionEdited value) pollOptionEdited,
    required TResult Function(PollOptionDeleted value) pollOptionDeleted,
    required TResult Function(AddImageClicked value) addImageClicked,
    required TResult Function(ImageDeleted value) imageDeleted,
    required TResult Function(RecoverLastDeletedImage value)
        recoverLastDeletedImage,
    required TResult Function(PostPosted value) feedPosted,
  }) {
    return feedPosted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PostTypeChanged value)? feedTypeChanged,
    TResult Function(TitleChanged value)? titleChanged,
    TResult Function(BodyTextChanged value)? bodyTextChanged,
    TResult Function(UrlChanged value)? urlChanged,
    TResult Function(PollEndsPressed value)? pollEndsPressed,
    TResult Function(PollOptionAdded value)? pollOptionAdded,
    TResult Function(PollOptionEdited value)? pollOptionEdited,
    TResult Function(PollOptionDeleted value)? pollOptionDeleted,
    TResult Function(AddImageClicked value)? addImageClicked,
    TResult Function(ImageDeleted value)? imageDeleted,
    TResult Function(RecoverLastDeletedImage value)? recoverLastDeletedImage,
    TResult Function(PostPosted value)? feedPosted,
    required TResult orElse(),
  }) {
    if (feedPosted != null) {
      return feedPosted(this);
    }
    return orElse();
  }
}

abstract class PostPosted implements CreatePostEvent {
  const factory PostPosted() = _$PostPosted;
}

/// @nodoc
class _$CreatePostStateTearOff {
  const _$CreatePostStateTearOff();

  _TextPostEntry textPostEntry(
      {required String title,
      required String bodyText,
      required PostType feedType,
      required bool autofocus,
      required Either<PostEditFailure, Unit> error}) {
    return _TextPostEntry(
      title: title,
      bodyText: bodyText,
      feedType: feedType,
      autofocus: autofocus,
      error: error,
    );
  }

  _LinkPostEntry linkPostEntry(
      {required String title,
      required String url,
      required PostType feedType,
      required bool autofocus,
      required Either<PostEditFailure, Unit> error}) {
    return _LinkPostEntry(
      title: title,
      url: url,
      feedType: feedType,
      autofocus: autofocus,
      error: error,
    );
  }

  _ImagePostEntry imagePostEntry(
      {required String title,
      required List<ImageData> images,
      required PostType feedType,
      required bool autofocus,
      required Either<PostEditFailure, Unit> error,
      required Option<bool> dirty,
      required Option<DeletedImageData> lastDeletedImage,
      required int nextIndex}) {
    return _ImagePostEntry(
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

  _VideoPostEntry videoPostEntry(
      {required String title,
      File? video,
      required PostType feedType,
      required bool autofocus,
      required Either<PostEditFailure, Unit> error}) {
    return _VideoPostEntry(
      title: title,
      video: video,
      feedType: feedType,
      autofocus: autofocus,
      error: error,
    );
  }

  _PollPostEntry pollPostEntry(
      {required String title,
      required String bodyText,
      required List<String> options,
      required int pollEndsDays,
      required PostType feedType,
      required bool autofocus,
      required Either<PostEditFailure, Unit> error}) {
    return _PollPostEntry(
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
const $CreatePostState = _$CreatePostStateTearOff();

/// @nodoc
mixin _$CreatePostState {
  String get title => throw _privateConstructorUsedError;
  PostType get feedType => throw _privateConstructorUsedError;
  bool get autofocus => throw _privateConstructorUsedError;
  Either<PostEditFailure, Unit> get error => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, String bodyText, PostType feedType,
            bool autofocus, Either<PostEditFailure, Unit> error)
        textPostEntry,
    required TResult Function(String title, String url, PostType feedType,
            bool autofocus, Either<PostEditFailure, Unit> error)
        linkPostEntry,
    required TResult Function(
            String title,
            List<ImageData> images,
            PostType feedType,
            bool autofocus,
            Either<PostEditFailure, Unit> error,
            Option<bool> dirty,
            Option<DeletedImageData> lastDeletedImage,
            int nextIndex)
        imagePostEntry,
    required TResult Function(String title, File? video, PostType feedType,
            bool autofocus, Either<PostEditFailure, Unit> error)
        videoPostEntry,
    required TResult Function(
            String title,
            String bodyText,
            List<String> options,
            int pollEndsDays,
            PostType feedType,
            bool autofocus,
            Either<PostEditFailure, Unit> error)
        pollPostEntry,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, String bodyText, PostType feedType,
            bool autofocus, Either<PostEditFailure, Unit> error)?
        textPostEntry,
    TResult Function(String title, String url, PostType feedType,
            bool autofocus, Either<PostEditFailure, Unit> error)?
        linkPostEntry,
    TResult Function(
            String title,
            List<ImageData> images,
            PostType feedType,
            bool autofocus,
            Either<PostEditFailure, Unit> error,
            Option<bool> dirty,
            Option<DeletedImageData> lastDeletedImage,
            int nextIndex)?
        imagePostEntry,
    TResult Function(String title, File? video, PostType feedType,
            bool autofocus, Either<PostEditFailure, Unit> error)?
        videoPostEntry,
    TResult Function(
            String title,
            String bodyText,
            List<String> options,
            int pollEndsDays,
            PostType feedType,
            bool autofocus,
            Either<PostEditFailure, Unit> error)?
        pollPostEntry,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TextPostEntry value) textPostEntry,
    required TResult Function(_LinkPostEntry value) linkPostEntry,
    required TResult Function(_ImagePostEntry value) imagePostEntry,
    required TResult Function(_VideoPostEntry value) videoPostEntry,
    required TResult Function(_PollPostEntry value) pollPostEntry,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TextPostEntry value)? textPostEntry,
    TResult Function(_LinkPostEntry value)? linkPostEntry,
    TResult Function(_ImagePostEntry value)? imagePostEntry,
    TResult Function(_VideoPostEntry value)? videoPostEntry,
    TResult Function(_PollPostEntry value)? pollPostEntry,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreatePostStateCopyWith<CreatePostState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreatePostStateCopyWith<$Res> {
  factory $CreatePostStateCopyWith(
          CreatePostState value, $Res Function(CreatePostState) then) =
      _$CreatePostStateCopyWithImpl<$Res>;
  $Res call(
      {String title,
      PostType feedType,
      bool autofocus,
      Either<PostEditFailure, Unit> error});
}

/// @nodoc
class _$CreatePostStateCopyWithImpl<$Res>
    implements $CreatePostStateCopyWith<$Res> {
  _$CreatePostStateCopyWithImpl(this._value, this._then);

  final CreatePostState _value;
  // ignore: unused_field
  final $Res Function(CreatePostState) _then;

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
              as PostType,
      autofocus: autofocus == freezed
          ? _value.autofocus
          : autofocus // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Either<PostEditFailure, Unit>,
    ));
  }
}

/// @nodoc
abstract class _$TextPostEntryCopyWith<$Res>
    implements $CreatePostStateCopyWith<$Res> {
  factory _$TextPostEntryCopyWith(
          _TextPostEntry value, $Res Function(_TextPostEntry) then) =
      __$TextPostEntryCopyWithImpl<$Res>;
  @override
  $Res call(
      {String title,
      String bodyText,
      PostType feedType,
      bool autofocus,
      Either<PostEditFailure, Unit> error});
}

/// @nodoc
class __$TextPostEntryCopyWithImpl<$Res>
    extends _$CreatePostStateCopyWithImpl<$Res>
    implements _$TextPostEntryCopyWith<$Res> {
  __$TextPostEntryCopyWithImpl(
      _TextPostEntry _value, $Res Function(_TextPostEntry) _then)
      : super(_value, (v) => _then(v as _TextPostEntry));

  @override
  _TextPostEntry get _value => super._value as _TextPostEntry;

  @override
  $Res call({
    Object? title = freezed,
    Object? bodyText = freezed,
    Object? feedType = freezed,
    Object? autofocus = freezed,
    Object? error = freezed,
  }) {
    return _then(_TextPostEntry(
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
              as PostType,
      autofocus: autofocus == freezed
          ? _value.autofocus
          : autofocus // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Either<PostEditFailure, Unit>,
    ));
  }
}

/// @nodoc

class _$_TextPostEntry implements _TextPostEntry {
  const _$_TextPostEntry(
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
  final PostType feedType;
  @override
  final bool autofocus;
  @override
  final Either<PostEditFailure, Unit> error;

  @override
  String toString() {
    return 'CreatePostState.textPostEntry(title: $title, bodyText: $bodyText, feedType: $feedType, autofocus: $autofocus, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TextPostEntry &&
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
  _$TextPostEntryCopyWith<_TextPostEntry> get copyWith =>
      __$TextPostEntryCopyWithImpl<_TextPostEntry>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, String bodyText, PostType feedType,
            bool autofocus, Either<PostEditFailure, Unit> error)
        textPostEntry,
    required TResult Function(String title, String url, PostType feedType,
            bool autofocus, Either<PostEditFailure, Unit> error)
        linkPostEntry,
    required TResult Function(
            String title,
            List<ImageData> images,
            PostType feedType,
            bool autofocus,
            Either<PostEditFailure, Unit> error,
            Option<bool> dirty,
            Option<DeletedImageData> lastDeletedImage,
            int nextIndex)
        imagePostEntry,
    required TResult Function(String title, File? video, PostType feedType,
            bool autofocus, Either<PostEditFailure, Unit> error)
        videoPostEntry,
    required TResult Function(
            String title,
            String bodyText,
            List<String> options,
            int pollEndsDays,
            PostType feedType,
            bool autofocus,
            Either<PostEditFailure, Unit> error)
        pollPostEntry,
  }) {
    return textPostEntry(title, bodyText, feedType, autofocus, error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, String bodyText, PostType feedType,
            bool autofocus, Either<PostEditFailure, Unit> error)?
        textPostEntry,
    TResult Function(String title, String url, PostType feedType,
            bool autofocus, Either<PostEditFailure, Unit> error)?
        linkPostEntry,
    TResult Function(
            String title,
            List<ImageData> images,
            PostType feedType,
            bool autofocus,
            Either<PostEditFailure, Unit> error,
            Option<bool> dirty,
            Option<DeletedImageData> lastDeletedImage,
            int nextIndex)?
        imagePostEntry,
    TResult Function(String title, File? video, PostType feedType,
            bool autofocus, Either<PostEditFailure, Unit> error)?
        videoPostEntry,
    TResult Function(
            String title,
            String bodyText,
            List<String> options,
            int pollEndsDays,
            PostType feedType,
            bool autofocus,
            Either<PostEditFailure, Unit> error)?
        pollPostEntry,
    required TResult orElse(),
  }) {
    if (textPostEntry != null) {
      return textPostEntry(title, bodyText, feedType, autofocus, error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TextPostEntry value) textPostEntry,
    required TResult Function(_LinkPostEntry value) linkPostEntry,
    required TResult Function(_ImagePostEntry value) imagePostEntry,
    required TResult Function(_VideoPostEntry value) videoPostEntry,
    required TResult Function(_PollPostEntry value) pollPostEntry,
  }) {
    return textPostEntry(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TextPostEntry value)? textPostEntry,
    TResult Function(_LinkPostEntry value)? linkPostEntry,
    TResult Function(_ImagePostEntry value)? imagePostEntry,
    TResult Function(_VideoPostEntry value)? videoPostEntry,
    TResult Function(_PollPostEntry value)? pollPostEntry,
    required TResult orElse(),
  }) {
    if (textPostEntry != null) {
      return textPostEntry(this);
    }
    return orElse();
  }
}

abstract class _TextPostEntry implements CreatePostState {
  const factory _TextPostEntry(
      {required String title,
      required String bodyText,
      required PostType feedType,
      required bool autofocus,
      required Either<PostEditFailure, Unit> error}) = _$_TextPostEntry;

  @override
  String get title => throw _privateConstructorUsedError;
  String get bodyText => throw _privateConstructorUsedError;
  @override
  PostType get feedType => throw _privateConstructorUsedError;
  @override
  bool get autofocus => throw _privateConstructorUsedError;
  @override
  Either<PostEditFailure, Unit> get error => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TextPostEntryCopyWith<_TextPostEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LinkPostEntryCopyWith<$Res>
    implements $CreatePostStateCopyWith<$Res> {
  factory _$LinkPostEntryCopyWith(
          _LinkPostEntry value, $Res Function(_LinkPostEntry) then) =
      __$LinkPostEntryCopyWithImpl<$Res>;
  @override
  $Res call(
      {String title,
      String url,
      PostType feedType,
      bool autofocus,
      Either<PostEditFailure, Unit> error});
}

/// @nodoc
class __$LinkPostEntryCopyWithImpl<$Res>
    extends _$CreatePostStateCopyWithImpl<$Res>
    implements _$LinkPostEntryCopyWith<$Res> {
  __$LinkPostEntryCopyWithImpl(
      _LinkPostEntry _value, $Res Function(_LinkPostEntry) _then)
      : super(_value, (v) => _then(v as _LinkPostEntry));

  @override
  _LinkPostEntry get _value => super._value as _LinkPostEntry;

  @override
  $Res call({
    Object? title = freezed,
    Object? url = freezed,
    Object? feedType = freezed,
    Object? autofocus = freezed,
    Object? error = freezed,
  }) {
    return _then(_LinkPostEntry(
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
              as PostType,
      autofocus: autofocus == freezed
          ? _value.autofocus
          : autofocus // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Either<PostEditFailure, Unit>,
    ));
  }
}

/// @nodoc

class _$_LinkPostEntry implements _LinkPostEntry {
  const _$_LinkPostEntry(
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
  final PostType feedType;
  @override
  final bool autofocus;
  @override
  final Either<PostEditFailure, Unit> error;

  @override
  String toString() {
    return 'CreatePostState.linkPostEntry(title: $title, url: $url, feedType: $feedType, autofocus: $autofocus, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LinkPostEntry &&
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
  _$LinkPostEntryCopyWith<_LinkPostEntry> get copyWith =>
      __$LinkPostEntryCopyWithImpl<_LinkPostEntry>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, String bodyText, PostType feedType,
            bool autofocus, Either<PostEditFailure, Unit> error)
        textPostEntry,
    required TResult Function(String title, String url, PostType feedType,
            bool autofocus, Either<PostEditFailure, Unit> error)
        linkPostEntry,
    required TResult Function(
            String title,
            List<ImageData> images,
            PostType feedType,
            bool autofocus,
            Either<PostEditFailure, Unit> error,
            Option<bool> dirty,
            Option<DeletedImageData> lastDeletedImage,
            int nextIndex)
        imagePostEntry,
    required TResult Function(String title, File? video, PostType feedType,
            bool autofocus, Either<PostEditFailure, Unit> error)
        videoPostEntry,
    required TResult Function(
            String title,
            String bodyText,
            List<String> options,
            int pollEndsDays,
            PostType feedType,
            bool autofocus,
            Either<PostEditFailure, Unit> error)
        pollPostEntry,
  }) {
    return linkPostEntry(title, url, feedType, autofocus, error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, String bodyText, PostType feedType,
            bool autofocus, Either<PostEditFailure, Unit> error)?
        textPostEntry,
    TResult Function(String title, String url, PostType feedType,
            bool autofocus, Either<PostEditFailure, Unit> error)?
        linkPostEntry,
    TResult Function(
            String title,
            List<ImageData> images,
            PostType feedType,
            bool autofocus,
            Either<PostEditFailure, Unit> error,
            Option<bool> dirty,
            Option<DeletedImageData> lastDeletedImage,
            int nextIndex)?
        imagePostEntry,
    TResult Function(String title, File? video, PostType feedType,
            bool autofocus, Either<PostEditFailure, Unit> error)?
        videoPostEntry,
    TResult Function(
            String title,
            String bodyText,
            List<String> options,
            int pollEndsDays,
            PostType feedType,
            bool autofocus,
            Either<PostEditFailure, Unit> error)?
        pollPostEntry,
    required TResult orElse(),
  }) {
    if (linkPostEntry != null) {
      return linkPostEntry(title, url, feedType, autofocus, error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TextPostEntry value) textPostEntry,
    required TResult Function(_LinkPostEntry value) linkPostEntry,
    required TResult Function(_ImagePostEntry value) imagePostEntry,
    required TResult Function(_VideoPostEntry value) videoPostEntry,
    required TResult Function(_PollPostEntry value) pollPostEntry,
  }) {
    return linkPostEntry(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TextPostEntry value)? textPostEntry,
    TResult Function(_LinkPostEntry value)? linkPostEntry,
    TResult Function(_ImagePostEntry value)? imagePostEntry,
    TResult Function(_VideoPostEntry value)? videoPostEntry,
    TResult Function(_PollPostEntry value)? pollPostEntry,
    required TResult orElse(),
  }) {
    if (linkPostEntry != null) {
      return linkPostEntry(this);
    }
    return orElse();
  }
}

abstract class _LinkPostEntry implements CreatePostState {
  const factory _LinkPostEntry(
      {required String title,
      required String url,
      required PostType feedType,
      required bool autofocus,
      required Either<PostEditFailure, Unit> error}) = _$_LinkPostEntry;

  @override
  String get title => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  @override
  PostType get feedType => throw _privateConstructorUsedError;
  @override
  bool get autofocus => throw _privateConstructorUsedError;
  @override
  Either<PostEditFailure, Unit> get error => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LinkPostEntryCopyWith<_LinkPostEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ImagePostEntryCopyWith<$Res>
    implements $CreatePostStateCopyWith<$Res> {
  factory _$ImagePostEntryCopyWith(
          _ImagePostEntry value, $Res Function(_ImagePostEntry) then) =
      __$ImagePostEntryCopyWithImpl<$Res>;
  @override
  $Res call(
      {String title,
      List<ImageData> images,
      PostType feedType,
      bool autofocus,
      Either<PostEditFailure, Unit> error,
      Option<bool> dirty,
      Option<DeletedImageData> lastDeletedImage,
      int nextIndex});
}

/// @nodoc
class __$ImagePostEntryCopyWithImpl<$Res>
    extends _$CreatePostStateCopyWithImpl<$Res>
    implements _$ImagePostEntryCopyWith<$Res> {
  __$ImagePostEntryCopyWithImpl(
      _ImagePostEntry _value, $Res Function(_ImagePostEntry) _then)
      : super(_value, (v) => _then(v as _ImagePostEntry));

  @override
  _ImagePostEntry get _value => super._value as _ImagePostEntry;

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
    return _then(_ImagePostEntry(
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
              as PostType,
      autofocus: autofocus == freezed
          ? _value.autofocus
          : autofocus // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Either<PostEditFailure, Unit>,
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

class _$_ImagePostEntry implements _ImagePostEntry {
  const _$_ImagePostEntry(
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
  final PostType feedType;
  @override
  final bool autofocus;
  @override
  final Either<PostEditFailure, Unit> error;
  @override
  final Option<bool> dirty;
  @override
  final Option<DeletedImageData> lastDeletedImage;
  @override
  final int nextIndex;

  @override
  String toString() {
    return 'CreatePostState.imagePostEntry(title: $title, images: $images, feedType: $feedType, autofocus: $autofocus, error: $error, dirty: $dirty, lastDeletedImage: $lastDeletedImage, nextIndex: $nextIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ImagePostEntry &&
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
  _$ImagePostEntryCopyWith<_ImagePostEntry> get copyWith =>
      __$ImagePostEntryCopyWithImpl<_ImagePostEntry>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, String bodyText, PostType feedType,
            bool autofocus, Either<PostEditFailure, Unit> error)
        textPostEntry,
    required TResult Function(String title, String url, PostType feedType,
            bool autofocus, Either<PostEditFailure, Unit> error)
        linkPostEntry,
    required TResult Function(
            String title,
            List<ImageData> images,
            PostType feedType,
            bool autofocus,
            Either<PostEditFailure, Unit> error,
            Option<bool> dirty,
            Option<DeletedImageData> lastDeletedImage,
            int nextIndex)
        imagePostEntry,
    required TResult Function(String title, File? video, PostType feedType,
            bool autofocus, Either<PostEditFailure, Unit> error)
        videoPostEntry,
    required TResult Function(
            String title,
            String bodyText,
            List<String> options,
            int pollEndsDays,
            PostType feedType,
            bool autofocus,
            Either<PostEditFailure, Unit> error)
        pollPostEntry,
  }) {
    return imagePostEntry(title, images, feedType, autofocus, error, dirty,
        lastDeletedImage, nextIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, String bodyText, PostType feedType,
            bool autofocus, Either<PostEditFailure, Unit> error)?
        textPostEntry,
    TResult Function(String title, String url, PostType feedType,
            bool autofocus, Either<PostEditFailure, Unit> error)?
        linkPostEntry,
    TResult Function(
            String title,
            List<ImageData> images,
            PostType feedType,
            bool autofocus,
            Either<PostEditFailure, Unit> error,
            Option<bool> dirty,
            Option<DeletedImageData> lastDeletedImage,
            int nextIndex)?
        imagePostEntry,
    TResult Function(String title, File? video, PostType feedType,
            bool autofocus, Either<PostEditFailure, Unit> error)?
        videoPostEntry,
    TResult Function(
            String title,
            String bodyText,
            List<String> options,
            int pollEndsDays,
            PostType feedType,
            bool autofocus,
            Either<PostEditFailure, Unit> error)?
        pollPostEntry,
    required TResult orElse(),
  }) {
    if (imagePostEntry != null) {
      return imagePostEntry(title, images, feedType, autofocus, error, dirty,
          lastDeletedImage, nextIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TextPostEntry value) textPostEntry,
    required TResult Function(_LinkPostEntry value) linkPostEntry,
    required TResult Function(_ImagePostEntry value) imagePostEntry,
    required TResult Function(_VideoPostEntry value) videoPostEntry,
    required TResult Function(_PollPostEntry value) pollPostEntry,
  }) {
    return imagePostEntry(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TextPostEntry value)? textPostEntry,
    TResult Function(_LinkPostEntry value)? linkPostEntry,
    TResult Function(_ImagePostEntry value)? imagePostEntry,
    TResult Function(_VideoPostEntry value)? videoPostEntry,
    TResult Function(_PollPostEntry value)? pollPostEntry,
    required TResult orElse(),
  }) {
    if (imagePostEntry != null) {
      return imagePostEntry(this);
    }
    return orElse();
  }
}

abstract class _ImagePostEntry implements CreatePostState {
  const factory _ImagePostEntry(
      {required String title,
      required List<ImageData> images,
      required PostType feedType,
      required bool autofocus,
      required Either<PostEditFailure, Unit> error,
      required Option<bool> dirty,
      required Option<DeletedImageData> lastDeletedImage,
      required int nextIndex}) = _$_ImagePostEntry;

  @override
  String get title => throw _privateConstructorUsedError;
  List<ImageData> get images => throw _privateConstructorUsedError;
  @override
  PostType get feedType => throw _privateConstructorUsedError;
  @override
  bool get autofocus => throw _privateConstructorUsedError;
  @override
  Either<PostEditFailure, Unit> get error => throw _privateConstructorUsedError;
  Option<bool> get dirty => throw _privateConstructorUsedError;
  Option<DeletedImageData> get lastDeletedImage =>
      throw _privateConstructorUsedError;
  int get nextIndex => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ImagePostEntryCopyWith<_ImagePostEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$VideoPostEntryCopyWith<$Res>
    implements $CreatePostStateCopyWith<$Res> {
  factory _$VideoPostEntryCopyWith(
          _VideoPostEntry value, $Res Function(_VideoPostEntry) then) =
      __$VideoPostEntryCopyWithImpl<$Res>;
  @override
  $Res call(
      {String title,
      File? video,
      PostType feedType,
      bool autofocus,
      Either<PostEditFailure, Unit> error});
}

/// @nodoc
class __$VideoPostEntryCopyWithImpl<$Res>
    extends _$CreatePostStateCopyWithImpl<$Res>
    implements _$VideoPostEntryCopyWith<$Res> {
  __$VideoPostEntryCopyWithImpl(
      _VideoPostEntry _value, $Res Function(_VideoPostEntry) _then)
      : super(_value, (v) => _then(v as _VideoPostEntry));

  @override
  _VideoPostEntry get _value => super._value as _VideoPostEntry;

  @override
  $Res call({
    Object? title = freezed,
    Object? video = freezed,
    Object? feedType = freezed,
    Object? autofocus = freezed,
    Object? error = freezed,
  }) {
    return _then(_VideoPostEntry(
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
              as PostType,
      autofocus: autofocus == freezed
          ? _value.autofocus
          : autofocus // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Either<PostEditFailure, Unit>,
    ));
  }
}

/// @nodoc

class _$_VideoPostEntry implements _VideoPostEntry {
  const _$_VideoPostEntry(
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
  final PostType feedType;
  @override
  final bool autofocus;
  @override
  final Either<PostEditFailure, Unit> error;

  @override
  String toString() {
    return 'CreatePostState.videoPostEntry(title: $title, video: $video, feedType: $feedType, autofocus: $autofocus, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VideoPostEntry &&
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
  _$VideoPostEntryCopyWith<_VideoPostEntry> get copyWith =>
      __$VideoPostEntryCopyWithImpl<_VideoPostEntry>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, String bodyText, PostType feedType,
            bool autofocus, Either<PostEditFailure, Unit> error)
        textPostEntry,
    required TResult Function(String title, String url, PostType feedType,
            bool autofocus, Either<PostEditFailure, Unit> error)
        linkPostEntry,
    required TResult Function(
            String title,
            List<ImageData> images,
            PostType feedType,
            bool autofocus,
            Either<PostEditFailure, Unit> error,
            Option<bool> dirty,
            Option<DeletedImageData> lastDeletedImage,
            int nextIndex)
        imagePostEntry,
    required TResult Function(String title, File? video, PostType feedType,
            bool autofocus, Either<PostEditFailure, Unit> error)
        videoPostEntry,
    required TResult Function(
            String title,
            String bodyText,
            List<String> options,
            int pollEndsDays,
            PostType feedType,
            bool autofocus,
            Either<PostEditFailure, Unit> error)
        pollPostEntry,
  }) {
    return videoPostEntry(title, video, feedType, autofocus, error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, String bodyText, PostType feedType,
            bool autofocus, Either<PostEditFailure, Unit> error)?
        textPostEntry,
    TResult Function(String title, String url, PostType feedType,
            bool autofocus, Either<PostEditFailure, Unit> error)?
        linkPostEntry,
    TResult Function(
            String title,
            List<ImageData> images,
            PostType feedType,
            bool autofocus,
            Either<PostEditFailure, Unit> error,
            Option<bool> dirty,
            Option<DeletedImageData> lastDeletedImage,
            int nextIndex)?
        imagePostEntry,
    TResult Function(String title, File? video, PostType feedType,
            bool autofocus, Either<PostEditFailure, Unit> error)?
        videoPostEntry,
    TResult Function(
            String title,
            String bodyText,
            List<String> options,
            int pollEndsDays,
            PostType feedType,
            bool autofocus,
            Either<PostEditFailure, Unit> error)?
        pollPostEntry,
    required TResult orElse(),
  }) {
    if (videoPostEntry != null) {
      return videoPostEntry(title, video, feedType, autofocus, error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TextPostEntry value) textPostEntry,
    required TResult Function(_LinkPostEntry value) linkPostEntry,
    required TResult Function(_ImagePostEntry value) imagePostEntry,
    required TResult Function(_VideoPostEntry value) videoPostEntry,
    required TResult Function(_PollPostEntry value) pollPostEntry,
  }) {
    return videoPostEntry(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TextPostEntry value)? textPostEntry,
    TResult Function(_LinkPostEntry value)? linkPostEntry,
    TResult Function(_ImagePostEntry value)? imagePostEntry,
    TResult Function(_VideoPostEntry value)? videoPostEntry,
    TResult Function(_PollPostEntry value)? pollPostEntry,
    required TResult orElse(),
  }) {
    if (videoPostEntry != null) {
      return videoPostEntry(this);
    }
    return orElse();
  }
}

abstract class _VideoPostEntry implements CreatePostState {
  const factory _VideoPostEntry(
      {required String title,
      File? video,
      required PostType feedType,
      required bool autofocus,
      required Either<PostEditFailure, Unit> error}) = _$_VideoPostEntry;

  @override
  String get title => throw _privateConstructorUsedError;
  File? get video => throw _privateConstructorUsedError;
  @override
  PostType get feedType => throw _privateConstructorUsedError;
  @override
  bool get autofocus => throw _privateConstructorUsedError;
  @override
  Either<PostEditFailure, Unit> get error => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$VideoPostEntryCopyWith<_VideoPostEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PollPostEntryCopyWith<$Res>
    implements $CreatePostStateCopyWith<$Res> {
  factory _$PollPostEntryCopyWith(
          _PollPostEntry value, $Res Function(_PollPostEntry) then) =
      __$PollPostEntryCopyWithImpl<$Res>;
  @override
  $Res call(
      {String title,
      String bodyText,
      List<String> options,
      int pollEndsDays,
      PostType feedType,
      bool autofocus,
      Either<PostEditFailure, Unit> error});
}

/// @nodoc
class __$PollPostEntryCopyWithImpl<$Res>
    extends _$CreatePostStateCopyWithImpl<$Res>
    implements _$PollPostEntryCopyWith<$Res> {
  __$PollPostEntryCopyWithImpl(
      _PollPostEntry _value, $Res Function(_PollPostEntry) _then)
      : super(_value, (v) => _then(v as _PollPostEntry));

  @override
  _PollPostEntry get _value => super._value as _PollPostEntry;

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
    return _then(_PollPostEntry(
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
              as PostType,
      autofocus: autofocus == freezed
          ? _value.autofocus
          : autofocus // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Either<PostEditFailure, Unit>,
    ));
  }
}

/// @nodoc

class _$_PollPostEntry implements _PollPostEntry {
  const _$_PollPostEntry(
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
  final PostType feedType;
  @override
  final bool autofocus;
  @override
  final Either<PostEditFailure, Unit> error;

  @override
  String toString() {
    return 'CreatePostState.pollPostEntry(title: $title, bodyText: $bodyText, options: $options, pollEndsDays: $pollEndsDays, feedType: $feedType, autofocus: $autofocus, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PollPostEntry &&
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
  _$PollPostEntryCopyWith<_PollPostEntry> get copyWith =>
      __$PollPostEntryCopyWithImpl<_PollPostEntry>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, String bodyText, PostType feedType,
            bool autofocus, Either<PostEditFailure, Unit> error)
        textPostEntry,
    required TResult Function(String title, String url, PostType feedType,
            bool autofocus, Either<PostEditFailure, Unit> error)
        linkPostEntry,
    required TResult Function(
            String title,
            List<ImageData> images,
            PostType feedType,
            bool autofocus,
            Either<PostEditFailure, Unit> error,
            Option<bool> dirty,
            Option<DeletedImageData> lastDeletedImage,
            int nextIndex)
        imagePostEntry,
    required TResult Function(String title, File? video, PostType feedType,
            bool autofocus, Either<PostEditFailure, Unit> error)
        videoPostEntry,
    required TResult Function(
            String title,
            String bodyText,
            List<String> options,
            int pollEndsDays,
            PostType feedType,
            bool autofocus,
            Either<PostEditFailure, Unit> error)
        pollPostEntry,
  }) {
    return pollPostEntry(
        title, bodyText, options, pollEndsDays, feedType, autofocus, error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, String bodyText, PostType feedType,
            bool autofocus, Either<PostEditFailure, Unit> error)?
        textPostEntry,
    TResult Function(String title, String url, PostType feedType,
            bool autofocus, Either<PostEditFailure, Unit> error)?
        linkPostEntry,
    TResult Function(
            String title,
            List<ImageData> images,
            PostType feedType,
            bool autofocus,
            Either<PostEditFailure, Unit> error,
            Option<bool> dirty,
            Option<DeletedImageData> lastDeletedImage,
            int nextIndex)?
        imagePostEntry,
    TResult Function(String title, File? video, PostType feedType,
            bool autofocus, Either<PostEditFailure, Unit> error)?
        videoPostEntry,
    TResult Function(
            String title,
            String bodyText,
            List<String> options,
            int pollEndsDays,
            PostType feedType,
            bool autofocus,
            Either<PostEditFailure, Unit> error)?
        pollPostEntry,
    required TResult orElse(),
  }) {
    if (pollPostEntry != null) {
      return pollPostEntry(
          title, bodyText, options, pollEndsDays, feedType, autofocus, error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TextPostEntry value) textPostEntry,
    required TResult Function(_LinkPostEntry value) linkPostEntry,
    required TResult Function(_ImagePostEntry value) imagePostEntry,
    required TResult Function(_VideoPostEntry value) videoPostEntry,
    required TResult Function(_PollPostEntry value) pollPostEntry,
  }) {
    return pollPostEntry(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TextPostEntry value)? textPostEntry,
    TResult Function(_LinkPostEntry value)? linkPostEntry,
    TResult Function(_ImagePostEntry value)? imagePostEntry,
    TResult Function(_VideoPostEntry value)? videoPostEntry,
    TResult Function(_PollPostEntry value)? pollPostEntry,
    required TResult orElse(),
  }) {
    if (pollPostEntry != null) {
      return pollPostEntry(this);
    }
    return orElse();
  }
}

abstract class _PollPostEntry implements CreatePostState {
  const factory _PollPostEntry(
      {required String title,
      required String bodyText,
      required List<String> options,
      required int pollEndsDays,
      required PostType feedType,
      required bool autofocus,
      required Either<PostEditFailure, Unit> error}) = _$_PollPostEntry;

  @override
  String get title => throw _privateConstructorUsedError;
  String get bodyText => throw _privateConstructorUsedError;
  List<String> get options => throw _privateConstructorUsedError;
  int get pollEndsDays => throw _privateConstructorUsedError;
  @override
  PostType get feedType => throw _privateConstructorUsedError;
  @override
  bool get autofocus => throw _privateConstructorUsedError;
  @override
  Either<PostEditFailure, Unit> get error => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PollPostEntryCopyWith<_PollPostEntry> get copyWith =>
      throw _privateConstructorUsedError;
}
