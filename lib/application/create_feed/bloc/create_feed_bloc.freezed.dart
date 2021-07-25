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

  _FeedTypeChanged feedTypeChanged(int index, bool autofocus) {
    return _FeedTypeChanged(
      index,
      autofocus,
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

  _PollEndsChanged pollEndsChanged(int day) {
    return _PollEndsChanged(
      day,
    );
  }

  _PollOptionAdded pollOptionAdded(String option) {
    return _PollOptionAdded(
      option,
    );
  }
}

/// @nodoc
const $CreateFeedEvent = _$CreateFeedEventTearOff();

/// @nodoc
mixin _$CreateFeedEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index, bool autofocus) feedTypeChanged,
    required TResult Function(String title) titleChanged,
    required TResult Function(String bodyText) bodyTextChanged,
    required TResult Function(String url) urlChanged,
    required TResult Function(int day) pollEndsChanged,
    required TResult Function(String option) pollOptionAdded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index, bool autofocus)? feedTypeChanged,
    TResult Function(String title)? titleChanged,
    TResult Function(String bodyText)? bodyTextChanged,
    TResult Function(String url)? urlChanged,
    TResult Function(int day)? pollEndsChanged,
    TResult Function(String option)? pollOptionAdded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FeedTypeChanged value) feedTypeChanged,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_BodyTextChanged value) bodyTextChanged,
    required TResult Function(_UrlChanged value) urlChanged,
    required TResult Function(_PollEndsChanged value) pollEndsChanged,
    required TResult Function(_PollOptionAdded value) pollOptionAdded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FeedTypeChanged value)? feedTypeChanged,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_BodyTextChanged value)? bodyTextChanged,
    TResult Function(_UrlChanged value)? urlChanged,
    TResult Function(_PollEndsChanged value)? pollEndsChanged,
    TResult Function(_PollOptionAdded value)? pollOptionAdded,
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
  $Res call({int index, bool autofocus});
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
  }) {
    return _then(_FeedTypeChanged(
      index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      autofocus == freezed
          ? _value.autofocus
          : autofocus // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_FeedTypeChanged implements _FeedTypeChanged {
  const _$_FeedTypeChanged(this.index, this.autofocus);

  @override
  final int index;
  @override
  final bool autofocus;

  @override
  String toString() {
    return 'CreateFeedEvent.feedTypeChanged(index: $index, autofocus: $autofocus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FeedTypeChanged &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)) &&
            (identical(other.autofocus, autofocus) ||
                const DeepCollectionEquality()
                    .equals(other.autofocus, autofocus)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(index) ^
      const DeepCollectionEquality().hash(autofocus);

  @JsonKey(ignore: true)
  @override
  _$FeedTypeChangedCopyWith<_FeedTypeChanged> get copyWith =>
      __$FeedTypeChangedCopyWithImpl<_FeedTypeChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index, bool autofocus) feedTypeChanged,
    required TResult Function(String title) titleChanged,
    required TResult Function(String bodyText) bodyTextChanged,
    required TResult Function(String url) urlChanged,
    required TResult Function(int day) pollEndsChanged,
    required TResult Function(String option) pollOptionAdded,
  }) {
    return feedTypeChanged(index, autofocus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index, bool autofocus)? feedTypeChanged,
    TResult Function(String title)? titleChanged,
    TResult Function(String bodyText)? bodyTextChanged,
    TResult Function(String url)? urlChanged,
    TResult Function(int day)? pollEndsChanged,
    TResult Function(String option)? pollOptionAdded,
    required TResult orElse(),
  }) {
    if (feedTypeChanged != null) {
      return feedTypeChanged(index, autofocus);
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
    required TResult Function(_PollEndsChanged value) pollEndsChanged,
    required TResult Function(_PollOptionAdded value) pollOptionAdded,
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
    TResult Function(_PollEndsChanged value)? pollEndsChanged,
    TResult Function(_PollOptionAdded value)? pollOptionAdded,
    required TResult orElse(),
  }) {
    if (feedTypeChanged != null) {
      return feedTypeChanged(this);
    }
    return orElse();
  }
}

abstract class _FeedTypeChanged implements CreateFeedEvent {
  const factory _FeedTypeChanged(int index, bool autofocus) =
      _$_FeedTypeChanged;

  int get index => throw _privateConstructorUsedError;
  bool get autofocus => throw _privateConstructorUsedError;
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
    required TResult Function(int index, bool autofocus) feedTypeChanged,
    required TResult Function(String title) titleChanged,
    required TResult Function(String bodyText) bodyTextChanged,
    required TResult Function(String url) urlChanged,
    required TResult Function(int day) pollEndsChanged,
    required TResult Function(String option) pollOptionAdded,
  }) {
    return titleChanged(title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index, bool autofocus)? feedTypeChanged,
    TResult Function(String title)? titleChanged,
    TResult Function(String bodyText)? bodyTextChanged,
    TResult Function(String url)? urlChanged,
    TResult Function(int day)? pollEndsChanged,
    TResult Function(String option)? pollOptionAdded,
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
    required TResult Function(_PollEndsChanged value) pollEndsChanged,
    required TResult Function(_PollOptionAdded value) pollOptionAdded,
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
    TResult Function(_PollEndsChanged value)? pollEndsChanged,
    TResult Function(_PollOptionAdded value)? pollOptionAdded,
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
    required TResult Function(int index, bool autofocus) feedTypeChanged,
    required TResult Function(String title) titleChanged,
    required TResult Function(String bodyText) bodyTextChanged,
    required TResult Function(String url) urlChanged,
    required TResult Function(int day) pollEndsChanged,
    required TResult Function(String option) pollOptionAdded,
  }) {
    return bodyTextChanged(bodyText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index, bool autofocus)? feedTypeChanged,
    TResult Function(String title)? titleChanged,
    TResult Function(String bodyText)? bodyTextChanged,
    TResult Function(String url)? urlChanged,
    TResult Function(int day)? pollEndsChanged,
    TResult Function(String option)? pollOptionAdded,
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
    required TResult Function(_PollEndsChanged value) pollEndsChanged,
    required TResult Function(_PollOptionAdded value) pollOptionAdded,
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
    TResult Function(_PollEndsChanged value)? pollEndsChanged,
    TResult Function(_PollOptionAdded value)? pollOptionAdded,
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
    required TResult Function(int index, bool autofocus) feedTypeChanged,
    required TResult Function(String title) titleChanged,
    required TResult Function(String bodyText) bodyTextChanged,
    required TResult Function(String url) urlChanged,
    required TResult Function(int day) pollEndsChanged,
    required TResult Function(String option) pollOptionAdded,
  }) {
    return urlChanged(url);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index, bool autofocus)? feedTypeChanged,
    TResult Function(String title)? titleChanged,
    TResult Function(String bodyText)? bodyTextChanged,
    TResult Function(String url)? urlChanged,
    TResult Function(int day)? pollEndsChanged,
    TResult Function(String option)? pollOptionAdded,
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
    required TResult Function(_PollEndsChanged value) pollEndsChanged,
    required TResult Function(_PollOptionAdded value) pollOptionAdded,
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
    TResult Function(_PollEndsChanged value)? pollEndsChanged,
    TResult Function(_PollOptionAdded value)? pollOptionAdded,
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
abstract class _$PollEndsChangedCopyWith<$Res> {
  factory _$PollEndsChangedCopyWith(
          _PollEndsChanged value, $Res Function(_PollEndsChanged) then) =
      __$PollEndsChangedCopyWithImpl<$Res>;
  $Res call({int day});
}

/// @nodoc
class __$PollEndsChangedCopyWithImpl<$Res>
    extends _$CreateFeedEventCopyWithImpl<$Res>
    implements _$PollEndsChangedCopyWith<$Res> {
  __$PollEndsChangedCopyWithImpl(
      _PollEndsChanged _value, $Res Function(_PollEndsChanged) _then)
      : super(_value, (v) => _then(v as _PollEndsChanged));

  @override
  _PollEndsChanged get _value => super._value as _PollEndsChanged;

  @override
  $Res call({
    Object? day = freezed,
  }) {
    return _then(_PollEndsChanged(
      day == freezed
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_PollEndsChanged implements _PollEndsChanged {
  const _$_PollEndsChanged(this.day);

  @override
  final int day;

  @override
  String toString() {
    return 'CreateFeedEvent.pollEndsChanged(day: $day)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PollEndsChanged &&
            (identical(other.day, day) ||
                const DeepCollectionEquality().equals(other.day, day)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(day);

  @JsonKey(ignore: true)
  @override
  _$PollEndsChangedCopyWith<_PollEndsChanged> get copyWith =>
      __$PollEndsChangedCopyWithImpl<_PollEndsChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index, bool autofocus) feedTypeChanged,
    required TResult Function(String title) titleChanged,
    required TResult Function(String bodyText) bodyTextChanged,
    required TResult Function(String url) urlChanged,
    required TResult Function(int day) pollEndsChanged,
    required TResult Function(String option) pollOptionAdded,
  }) {
    return pollEndsChanged(day);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index, bool autofocus)? feedTypeChanged,
    TResult Function(String title)? titleChanged,
    TResult Function(String bodyText)? bodyTextChanged,
    TResult Function(String url)? urlChanged,
    TResult Function(int day)? pollEndsChanged,
    TResult Function(String option)? pollOptionAdded,
    required TResult orElse(),
  }) {
    if (pollEndsChanged != null) {
      return pollEndsChanged(day);
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
    required TResult Function(_PollEndsChanged value) pollEndsChanged,
    required TResult Function(_PollOptionAdded value) pollOptionAdded,
  }) {
    return pollEndsChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FeedTypeChanged value)? feedTypeChanged,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_BodyTextChanged value)? bodyTextChanged,
    TResult Function(_UrlChanged value)? urlChanged,
    TResult Function(_PollEndsChanged value)? pollEndsChanged,
    TResult Function(_PollOptionAdded value)? pollOptionAdded,
    required TResult orElse(),
  }) {
    if (pollEndsChanged != null) {
      return pollEndsChanged(this);
    }
    return orElse();
  }
}

abstract class _PollEndsChanged implements CreateFeedEvent {
  const factory _PollEndsChanged(int day) = _$_PollEndsChanged;

  int get day => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$PollEndsChangedCopyWith<_PollEndsChanged> get copyWith =>
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
    required TResult Function(int index, bool autofocus) feedTypeChanged,
    required TResult Function(String title) titleChanged,
    required TResult Function(String bodyText) bodyTextChanged,
    required TResult Function(String url) urlChanged,
    required TResult Function(int day) pollEndsChanged,
    required TResult Function(String option) pollOptionAdded,
  }) {
    return pollOptionAdded(option);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index, bool autofocus)? feedTypeChanged,
    TResult Function(String title)? titleChanged,
    TResult Function(String bodyText)? bodyTextChanged,
    TResult Function(String url)? urlChanged,
    TResult Function(int day)? pollEndsChanged,
    TResult Function(String option)? pollOptionAdded,
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
    required TResult Function(_PollEndsChanged value) pollEndsChanged,
    required TResult Function(_PollOptionAdded value) pollOptionAdded,
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
    TResult Function(_PollEndsChanged value)? pollEndsChanged,
    TResult Function(_PollOptionAdded value)? pollOptionAdded,
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
class _$CreateFeedStateTearOff {
  const _$CreateFeedStateTearOff();

  _TextFeedEntry textFeedEntry(
      {required String title,
      required String bodyText,
      required FeedType feedType,
      required bool autofocus}) {
    return _TextFeedEntry(
      title: title,
      bodyText: bodyText,
      feedType: feedType,
      autofocus: autofocus,
    );
  }

  _LinkFeedEntry linkFeedEntry(
      {required String title,
      required String url,
      required FeedType feedType,
      required bool autofocus}) {
    return _LinkFeedEntry(
      title: title,
      url: url,
      feedType: feedType,
      autofocus: autofocus,
    );
  }

  _ImageFeedEntry imageFeedEntry(
      {required String title,
      File? image,
      required FeedType feedType,
      required bool autofocus}) {
    return _ImageFeedEntry(
      title: title,
      image: image,
      feedType: feedType,
      autofocus: autofocus,
    );
  }

  _VideoFeedEntry videoFeedEntry(
      {required String title,
      File? video,
      required FeedType feedType,
      required bool autofocus}) {
    return _VideoFeedEntry(
      title: title,
      video: video,
      feedType: feedType,
      autofocus: autofocus,
    );
  }

  _PollFeedEntry pollFeedEntry(
      {required String title,
      required String bodyText,
      required List<String> options,
      required int pollEndsDays,
      required FeedType feedType,
      required bool autofocus}) {
    return _PollFeedEntry(
      title: title,
      bodyText: bodyText,
      options: options,
      pollEndsDays: pollEndsDays,
      feedType: feedType,
      autofocus: autofocus,
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

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String title, String bodyText, FeedType feedType, bool autofocus)
        textFeedEntry,
    required TResult Function(
            String title, String url, FeedType feedType, bool autofocus)
        linkFeedEntry,
    required TResult Function(
            String title, File? image, FeedType feedType, bool autofocus)
        imageFeedEntry,
    required TResult Function(
            String title, File? video, FeedType feedType, bool autofocus)
        videoFeedEntry,
    required TResult Function(
            String title,
            String bodyText,
            List<String> options,
            int pollEndsDays,
            FeedType feedType,
            bool autofocus)
        pollFeedEntry,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String title, String bodyText, FeedType feedType, bool autofocus)?
        textFeedEntry,
    TResult Function(
            String title, String url, FeedType feedType, bool autofocus)?
        linkFeedEntry,
    TResult Function(
            String title, File? image, FeedType feedType, bool autofocus)?
        imageFeedEntry,
    TResult Function(
            String title, File? video, FeedType feedType, bool autofocus)?
        videoFeedEntry,
    TResult Function(String title, String bodyText, List<String> options,
            int pollEndsDays, FeedType feedType, bool autofocus)?
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
  $Res call({String title, FeedType feedType, bool autofocus});
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
  $Res call({String title, String bodyText, FeedType feedType, bool autofocus});
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
    ));
  }
}

/// @nodoc

class _$_TextFeedEntry implements _TextFeedEntry {
  const _$_TextFeedEntry(
      {required this.title,
      required this.bodyText,
      required this.feedType,
      required this.autofocus});

  @override
  final String title;
  @override
  final String bodyText;
  @override
  final FeedType feedType;
  @override
  final bool autofocus;

  @override
  String toString() {
    return 'CreateFeedState.textFeedEntry(title: $title, bodyText: $bodyText, feedType: $feedType, autofocus: $autofocus)';
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
                    .equals(other.autofocus, autofocus)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(bodyText) ^
      const DeepCollectionEquality().hash(feedType) ^
      const DeepCollectionEquality().hash(autofocus);

  @JsonKey(ignore: true)
  @override
  _$TextFeedEntryCopyWith<_TextFeedEntry> get copyWith =>
      __$TextFeedEntryCopyWithImpl<_TextFeedEntry>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String title, String bodyText, FeedType feedType, bool autofocus)
        textFeedEntry,
    required TResult Function(
            String title, String url, FeedType feedType, bool autofocus)
        linkFeedEntry,
    required TResult Function(
            String title, File? image, FeedType feedType, bool autofocus)
        imageFeedEntry,
    required TResult Function(
            String title, File? video, FeedType feedType, bool autofocus)
        videoFeedEntry,
    required TResult Function(
            String title,
            String bodyText,
            List<String> options,
            int pollEndsDays,
            FeedType feedType,
            bool autofocus)
        pollFeedEntry,
  }) {
    return textFeedEntry(title, bodyText, feedType, autofocus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String title, String bodyText, FeedType feedType, bool autofocus)?
        textFeedEntry,
    TResult Function(
            String title, String url, FeedType feedType, bool autofocus)?
        linkFeedEntry,
    TResult Function(
            String title, File? image, FeedType feedType, bool autofocus)?
        imageFeedEntry,
    TResult Function(
            String title, File? video, FeedType feedType, bool autofocus)?
        videoFeedEntry,
    TResult Function(String title, String bodyText, List<String> options,
            int pollEndsDays, FeedType feedType, bool autofocus)?
        pollFeedEntry,
    required TResult orElse(),
  }) {
    if (textFeedEntry != null) {
      return textFeedEntry(title, bodyText, feedType, autofocus);
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
      required bool autofocus}) = _$_TextFeedEntry;

  @override
  String get title => throw _privateConstructorUsedError;
  String get bodyText => throw _privateConstructorUsedError;
  @override
  FeedType get feedType => throw _privateConstructorUsedError;
  @override
  bool get autofocus => throw _privateConstructorUsedError;
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
  $Res call({String title, String url, FeedType feedType, bool autofocus});
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
    ));
  }
}

/// @nodoc

class _$_LinkFeedEntry implements _LinkFeedEntry {
  const _$_LinkFeedEntry(
      {required this.title,
      required this.url,
      required this.feedType,
      required this.autofocus});

  @override
  final String title;
  @override
  final String url;
  @override
  final FeedType feedType;
  @override
  final bool autofocus;

  @override
  String toString() {
    return 'CreateFeedState.linkFeedEntry(title: $title, url: $url, feedType: $feedType, autofocus: $autofocus)';
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
                    .equals(other.autofocus, autofocus)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(feedType) ^
      const DeepCollectionEquality().hash(autofocus);

  @JsonKey(ignore: true)
  @override
  _$LinkFeedEntryCopyWith<_LinkFeedEntry> get copyWith =>
      __$LinkFeedEntryCopyWithImpl<_LinkFeedEntry>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String title, String bodyText, FeedType feedType, bool autofocus)
        textFeedEntry,
    required TResult Function(
            String title, String url, FeedType feedType, bool autofocus)
        linkFeedEntry,
    required TResult Function(
            String title, File? image, FeedType feedType, bool autofocus)
        imageFeedEntry,
    required TResult Function(
            String title, File? video, FeedType feedType, bool autofocus)
        videoFeedEntry,
    required TResult Function(
            String title,
            String bodyText,
            List<String> options,
            int pollEndsDays,
            FeedType feedType,
            bool autofocus)
        pollFeedEntry,
  }) {
    return linkFeedEntry(title, url, feedType, autofocus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String title, String bodyText, FeedType feedType, bool autofocus)?
        textFeedEntry,
    TResult Function(
            String title, String url, FeedType feedType, bool autofocus)?
        linkFeedEntry,
    TResult Function(
            String title, File? image, FeedType feedType, bool autofocus)?
        imageFeedEntry,
    TResult Function(
            String title, File? video, FeedType feedType, bool autofocus)?
        videoFeedEntry,
    TResult Function(String title, String bodyText, List<String> options,
            int pollEndsDays, FeedType feedType, bool autofocus)?
        pollFeedEntry,
    required TResult orElse(),
  }) {
    if (linkFeedEntry != null) {
      return linkFeedEntry(title, url, feedType, autofocus);
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
      required bool autofocus}) = _$_LinkFeedEntry;

  @override
  String get title => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  @override
  FeedType get feedType => throw _privateConstructorUsedError;
  @override
  bool get autofocus => throw _privateConstructorUsedError;
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
  $Res call({String title, File? image, FeedType feedType, bool autofocus});
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
    Object? image = freezed,
    Object? feedType = freezed,
    Object? autofocus = freezed,
  }) {
    return _then(_ImageFeedEntry(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as File?,
      feedType: feedType == freezed
          ? _value.feedType
          : feedType // ignore: cast_nullable_to_non_nullable
              as FeedType,
      autofocus: autofocus == freezed
          ? _value.autofocus
          : autofocus // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ImageFeedEntry implements _ImageFeedEntry {
  const _$_ImageFeedEntry(
      {required this.title,
      this.image,
      required this.feedType,
      required this.autofocus});

  @override
  final String title;
  @override
  final File? image;
  @override
  final FeedType feedType;
  @override
  final bool autofocus;

  @override
  String toString() {
    return 'CreateFeedState.imageFeedEntry(title: $title, image: $image, feedType: $feedType, autofocus: $autofocus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ImageFeedEntry &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.feedType, feedType) ||
                const DeepCollectionEquality()
                    .equals(other.feedType, feedType)) &&
            (identical(other.autofocus, autofocus) ||
                const DeepCollectionEquality()
                    .equals(other.autofocus, autofocus)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(feedType) ^
      const DeepCollectionEquality().hash(autofocus);

  @JsonKey(ignore: true)
  @override
  _$ImageFeedEntryCopyWith<_ImageFeedEntry> get copyWith =>
      __$ImageFeedEntryCopyWithImpl<_ImageFeedEntry>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String title, String bodyText, FeedType feedType, bool autofocus)
        textFeedEntry,
    required TResult Function(
            String title, String url, FeedType feedType, bool autofocus)
        linkFeedEntry,
    required TResult Function(
            String title, File? image, FeedType feedType, bool autofocus)
        imageFeedEntry,
    required TResult Function(
            String title, File? video, FeedType feedType, bool autofocus)
        videoFeedEntry,
    required TResult Function(
            String title,
            String bodyText,
            List<String> options,
            int pollEndsDays,
            FeedType feedType,
            bool autofocus)
        pollFeedEntry,
  }) {
    return imageFeedEntry(title, image, feedType, autofocus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String title, String bodyText, FeedType feedType, bool autofocus)?
        textFeedEntry,
    TResult Function(
            String title, String url, FeedType feedType, bool autofocus)?
        linkFeedEntry,
    TResult Function(
            String title, File? image, FeedType feedType, bool autofocus)?
        imageFeedEntry,
    TResult Function(
            String title, File? video, FeedType feedType, bool autofocus)?
        videoFeedEntry,
    TResult Function(String title, String bodyText, List<String> options,
            int pollEndsDays, FeedType feedType, bool autofocus)?
        pollFeedEntry,
    required TResult orElse(),
  }) {
    if (imageFeedEntry != null) {
      return imageFeedEntry(title, image, feedType, autofocus);
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
      File? image,
      required FeedType feedType,
      required bool autofocus}) = _$_ImageFeedEntry;

  @override
  String get title => throw _privateConstructorUsedError;
  File? get image => throw _privateConstructorUsedError;
  @override
  FeedType get feedType => throw _privateConstructorUsedError;
  @override
  bool get autofocus => throw _privateConstructorUsedError;
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
  $Res call({String title, File? video, FeedType feedType, bool autofocus});
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
    ));
  }
}

/// @nodoc

class _$_VideoFeedEntry implements _VideoFeedEntry {
  const _$_VideoFeedEntry(
      {required this.title,
      this.video,
      required this.feedType,
      required this.autofocus});

  @override
  final String title;
  @override
  final File? video;
  @override
  final FeedType feedType;
  @override
  final bool autofocus;

  @override
  String toString() {
    return 'CreateFeedState.videoFeedEntry(title: $title, video: $video, feedType: $feedType, autofocus: $autofocus)';
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
                    .equals(other.autofocus, autofocus)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(video) ^
      const DeepCollectionEquality().hash(feedType) ^
      const DeepCollectionEquality().hash(autofocus);

  @JsonKey(ignore: true)
  @override
  _$VideoFeedEntryCopyWith<_VideoFeedEntry> get copyWith =>
      __$VideoFeedEntryCopyWithImpl<_VideoFeedEntry>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String title, String bodyText, FeedType feedType, bool autofocus)
        textFeedEntry,
    required TResult Function(
            String title, String url, FeedType feedType, bool autofocus)
        linkFeedEntry,
    required TResult Function(
            String title, File? image, FeedType feedType, bool autofocus)
        imageFeedEntry,
    required TResult Function(
            String title, File? video, FeedType feedType, bool autofocus)
        videoFeedEntry,
    required TResult Function(
            String title,
            String bodyText,
            List<String> options,
            int pollEndsDays,
            FeedType feedType,
            bool autofocus)
        pollFeedEntry,
  }) {
    return videoFeedEntry(title, video, feedType, autofocus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String title, String bodyText, FeedType feedType, bool autofocus)?
        textFeedEntry,
    TResult Function(
            String title, String url, FeedType feedType, bool autofocus)?
        linkFeedEntry,
    TResult Function(
            String title, File? image, FeedType feedType, bool autofocus)?
        imageFeedEntry,
    TResult Function(
            String title, File? video, FeedType feedType, bool autofocus)?
        videoFeedEntry,
    TResult Function(String title, String bodyText, List<String> options,
            int pollEndsDays, FeedType feedType, bool autofocus)?
        pollFeedEntry,
    required TResult orElse(),
  }) {
    if (videoFeedEntry != null) {
      return videoFeedEntry(title, video, feedType, autofocus);
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
      required bool autofocus}) = _$_VideoFeedEntry;

  @override
  String get title => throw _privateConstructorUsedError;
  File? get video => throw _privateConstructorUsedError;
  @override
  FeedType get feedType => throw _privateConstructorUsedError;
  @override
  bool get autofocus => throw _privateConstructorUsedError;
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
      bool autofocus});
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
      required this.autofocus});

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
  String toString() {
    return 'CreateFeedState.pollFeedEntry(title: $title, bodyText: $bodyText, options: $options, pollEndsDays: $pollEndsDays, feedType: $feedType, autofocus: $autofocus)';
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
                    .equals(other.autofocus, autofocus)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(bodyText) ^
      const DeepCollectionEquality().hash(options) ^
      const DeepCollectionEquality().hash(pollEndsDays) ^
      const DeepCollectionEquality().hash(feedType) ^
      const DeepCollectionEquality().hash(autofocus);

  @JsonKey(ignore: true)
  @override
  _$PollFeedEntryCopyWith<_PollFeedEntry> get copyWith =>
      __$PollFeedEntryCopyWithImpl<_PollFeedEntry>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String title, String bodyText, FeedType feedType, bool autofocus)
        textFeedEntry,
    required TResult Function(
            String title, String url, FeedType feedType, bool autofocus)
        linkFeedEntry,
    required TResult Function(
            String title, File? image, FeedType feedType, bool autofocus)
        imageFeedEntry,
    required TResult Function(
            String title, File? video, FeedType feedType, bool autofocus)
        videoFeedEntry,
    required TResult Function(
            String title,
            String bodyText,
            List<String> options,
            int pollEndsDays,
            FeedType feedType,
            bool autofocus)
        pollFeedEntry,
  }) {
    return pollFeedEntry(
        title, bodyText, options, pollEndsDays, feedType, autofocus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String title, String bodyText, FeedType feedType, bool autofocus)?
        textFeedEntry,
    TResult Function(
            String title, String url, FeedType feedType, bool autofocus)?
        linkFeedEntry,
    TResult Function(
            String title, File? image, FeedType feedType, bool autofocus)?
        imageFeedEntry,
    TResult Function(
            String title, File? video, FeedType feedType, bool autofocus)?
        videoFeedEntry,
    TResult Function(String title, String bodyText, List<String> options,
            int pollEndsDays, FeedType feedType, bool autofocus)?
        pollFeedEntry,
    required TResult orElse(),
  }) {
    if (pollFeedEntry != null) {
      return pollFeedEntry(
          title, bodyText, options, pollEndsDays, feedType, autofocus);
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
      required bool autofocus}) = _$_PollFeedEntry;

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
  @JsonKey(ignore: true)
  _$PollFeedEntryCopyWith<_PollFeedEntry> get copyWith =>
      throw _privateConstructorUsedError;
}
