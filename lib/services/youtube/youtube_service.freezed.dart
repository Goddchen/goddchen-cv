// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'youtube_service.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

YoutubeRestApiVideos _$YoutubeRestApiVideosFromJson(Map<String, dynamic> json) {
  return _YoutubeRestApiVideos.fromJson(json);
}

/// @nodoc
mixin _$YoutubeRestApiVideos {
  List<YoutubeRestApiVideosVideo> get items =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $YoutubeRestApiVideosCopyWith<YoutubeRestApiVideos> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $YoutubeRestApiVideosCopyWith<$Res> {
  factory $YoutubeRestApiVideosCopyWith(YoutubeRestApiVideos value,
          $Res Function(YoutubeRestApiVideos) then) =
      _$YoutubeRestApiVideosCopyWithImpl<$Res, YoutubeRestApiVideos>;
  @useResult
  $Res call({List<YoutubeRestApiVideosVideo> items});
}

/// @nodoc
class _$YoutubeRestApiVideosCopyWithImpl<$Res,
        $Val extends YoutubeRestApiVideos>
    implements $YoutubeRestApiVideosCopyWith<$Res> {
  _$YoutubeRestApiVideosCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<YoutubeRestApiVideosVideo>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_YoutubeRestApiVideosCopyWith<$Res>
    implements $YoutubeRestApiVideosCopyWith<$Res> {
  factory _$$_YoutubeRestApiVideosCopyWith(_$_YoutubeRestApiVideos value,
          $Res Function(_$_YoutubeRestApiVideos) then) =
      __$$_YoutubeRestApiVideosCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<YoutubeRestApiVideosVideo> items});
}

/// @nodoc
class __$$_YoutubeRestApiVideosCopyWithImpl<$Res>
    extends _$YoutubeRestApiVideosCopyWithImpl<$Res, _$_YoutubeRestApiVideos>
    implements _$$_YoutubeRestApiVideosCopyWith<$Res> {
  __$$_YoutubeRestApiVideosCopyWithImpl(_$_YoutubeRestApiVideos _value,
      $Res Function(_$_YoutubeRestApiVideos) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_$_YoutubeRestApiVideos(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<YoutubeRestApiVideosVideo>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_YoutubeRestApiVideos implements _YoutubeRestApiVideos {
  const _$_YoutubeRestApiVideos(
      {required final List<YoutubeRestApiVideosVideo> items})
      : _items = items;

  factory _$_YoutubeRestApiVideos.fromJson(Map<String, dynamic> json) =>
      _$$_YoutubeRestApiVideosFromJson(json);

  final List<YoutubeRestApiVideosVideo> _items;
  @override
  List<YoutubeRestApiVideosVideo> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'YoutubeRestApiVideos(items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_YoutubeRestApiVideos &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_YoutubeRestApiVideosCopyWith<_$_YoutubeRestApiVideos> get copyWith =>
      __$$_YoutubeRestApiVideosCopyWithImpl<_$_YoutubeRestApiVideos>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_YoutubeRestApiVideosToJson(
      this,
    );
  }
}

abstract class _YoutubeRestApiVideos implements YoutubeRestApiVideos {
  const factory _YoutubeRestApiVideos(
          {required final List<YoutubeRestApiVideosVideo> items}) =
      _$_YoutubeRestApiVideos;

  factory _YoutubeRestApiVideos.fromJson(Map<String, dynamic> json) =
      _$_YoutubeRestApiVideos.fromJson;

  @override
  List<YoutubeRestApiVideosVideo> get items;
  @override
  @JsonKey(ignore: true)
  _$$_YoutubeRestApiVideosCopyWith<_$_YoutubeRestApiVideos> get copyWith =>
      throw _privateConstructorUsedError;
}

YoutubeRestApiVideosVideo _$YoutubeRestApiVideosVideoFromJson(
    Map<String, dynamic> json) {
  return _YoutubeRestApiVideosVideo.fromJson(json);
}

/// @nodoc
mixin _$YoutubeRestApiVideosVideo {
  YoutubeRestApiVideosVideoSnippet get snippet =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $YoutubeRestApiVideosVideoCopyWith<YoutubeRestApiVideosVideo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $YoutubeRestApiVideosVideoCopyWith<$Res> {
  factory $YoutubeRestApiVideosVideoCopyWith(YoutubeRestApiVideosVideo value,
          $Res Function(YoutubeRestApiVideosVideo) then) =
      _$YoutubeRestApiVideosVideoCopyWithImpl<$Res, YoutubeRestApiVideosVideo>;
  @useResult
  $Res call({YoutubeRestApiVideosVideoSnippet snippet});

  $YoutubeRestApiVideosVideoSnippetCopyWith<$Res> get snippet;
}

/// @nodoc
class _$YoutubeRestApiVideosVideoCopyWithImpl<$Res,
        $Val extends YoutubeRestApiVideosVideo>
    implements $YoutubeRestApiVideosVideoCopyWith<$Res> {
  _$YoutubeRestApiVideosVideoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? snippet = null,
  }) {
    return _then(_value.copyWith(
      snippet: null == snippet
          ? _value.snippet
          : snippet // ignore: cast_nullable_to_non_nullable
              as YoutubeRestApiVideosVideoSnippet,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $YoutubeRestApiVideosVideoSnippetCopyWith<$Res> get snippet {
    return $YoutubeRestApiVideosVideoSnippetCopyWith<$Res>(_value.snippet,
        (value) {
      return _then(_value.copyWith(snippet: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_YoutubeRestApiVideosVideoCopyWith<$Res>
    implements $YoutubeRestApiVideosVideoCopyWith<$Res> {
  factory _$$_YoutubeRestApiVideosVideoCopyWith(
          _$_YoutubeRestApiVideosVideo value,
          $Res Function(_$_YoutubeRestApiVideosVideo) then) =
      __$$_YoutubeRestApiVideosVideoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({YoutubeRestApiVideosVideoSnippet snippet});

  @override
  $YoutubeRestApiVideosVideoSnippetCopyWith<$Res> get snippet;
}

/// @nodoc
class __$$_YoutubeRestApiVideosVideoCopyWithImpl<$Res>
    extends _$YoutubeRestApiVideosVideoCopyWithImpl<$Res,
        _$_YoutubeRestApiVideosVideo>
    implements _$$_YoutubeRestApiVideosVideoCopyWith<$Res> {
  __$$_YoutubeRestApiVideosVideoCopyWithImpl(
      _$_YoutubeRestApiVideosVideo _value,
      $Res Function(_$_YoutubeRestApiVideosVideo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? snippet = null,
  }) {
    return _then(_$_YoutubeRestApiVideosVideo(
      snippet: null == snippet
          ? _value.snippet
          : snippet // ignore: cast_nullable_to_non_nullable
              as YoutubeRestApiVideosVideoSnippet,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_YoutubeRestApiVideosVideo implements _YoutubeRestApiVideosVideo {
  const _$_YoutubeRestApiVideosVideo({required this.snippet});

  factory _$_YoutubeRestApiVideosVideo.fromJson(Map<String, dynamic> json) =>
      _$$_YoutubeRestApiVideosVideoFromJson(json);

  @override
  final YoutubeRestApiVideosVideoSnippet snippet;

  @override
  String toString() {
    return 'YoutubeRestApiVideosVideo(snippet: $snippet)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_YoutubeRestApiVideosVideo &&
            (identical(other.snippet, snippet) || other.snippet == snippet));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, snippet);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_YoutubeRestApiVideosVideoCopyWith<_$_YoutubeRestApiVideosVideo>
      get copyWith => __$$_YoutubeRestApiVideosVideoCopyWithImpl<
          _$_YoutubeRestApiVideosVideo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_YoutubeRestApiVideosVideoToJson(
      this,
    );
  }
}

abstract class _YoutubeRestApiVideosVideo implements YoutubeRestApiVideosVideo {
  const factory _YoutubeRestApiVideosVideo(
          {required final YoutubeRestApiVideosVideoSnippet snippet}) =
      _$_YoutubeRestApiVideosVideo;

  factory _YoutubeRestApiVideosVideo.fromJson(Map<String, dynamic> json) =
      _$_YoutubeRestApiVideosVideo.fromJson;

  @override
  YoutubeRestApiVideosVideoSnippet get snippet;
  @override
  @JsonKey(ignore: true)
  _$$_YoutubeRestApiVideosVideoCopyWith<_$_YoutubeRestApiVideosVideo>
      get copyWith => throw _privateConstructorUsedError;
}

YoutubeRestApiVideosVideoSnippet _$YoutubeRestApiVideosVideoSnippetFromJson(
    Map<String, dynamic> json) {
  return _YoutubeRestApiVideosVideoSnippet.fromJson(json);
}

/// @nodoc
mixin _$YoutubeRestApiVideosVideoSnippet {
  YoutubeRestApiVideosVideoSnippetThumbnails get thumbnails =>
      throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $YoutubeRestApiVideosVideoSnippetCopyWith<YoutubeRestApiVideosVideoSnippet>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $YoutubeRestApiVideosVideoSnippetCopyWith<$Res> {
  factory $YoutubeRestApiVideosVideoSnippetCopyWith(
          YoutubeRestApiVideosVideoSnippet value,
          $Res Function(YoutubeRestApiVideosVideoSnippet) then) =
      _$YoutubeRestApiVideosVideoSnippetCopyWithImpl<$Res,
          YoutubeRestApiVideosVideoSnippet>;
  @useResult
  $Res call(
      {YoutubeRestApiVideosVideoSnippetThumbnails thumbnails, String title});

  $YoutubeRestApiVideosVideoSnippetThumbnailsCopyWith<$Res> get thumbnails;
}

/// @nodoc
class _$YoutubeRestApiVideosVideoSnippetCopyWithImpl<$Res,
        $Val extends YoutubeRestApiVideosVideoSnippet>
    implements $YoutubeRestApiVideosVideoSnippetCopyWith<$Res> {
  _$YoutubeRestApiVideosVideoSnippetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? thumbnails = null,
    Object? title = null,
  }) {
    return _then(_value.copyWith(
      thumbnails: null == thumbnails
          ? _value.thumbnails
          : thumbnails // ignore: cast_nullable_to_non_nullable
              as YoutubeRestApiVideosVideoSnippetThumbnails,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $YoutubeRestApiVideosVideoSnippetThumbnailsCopyWith<$Res> get thumbnails {
    return $YoutubeRestApiVideosVideoSnippetThumbnailsCopyWith<$Res>(
        _value.thumbnails, (value) {
      return _then(_value.copyWith(thumbnails: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_YoutubeRestApiVideosVideoSnippetCopyWith<$Res>
    implements $YoutubeRestApiVideosVideoSnippetCopyWith<$Res> {
  factory _$$_YoutubeRestApiVideosVideoSnippetCopyWith(
          _$_YoutubeRestApiVideosVideoSnippet value,
          $Res Function(_$_YoutubeRestApiVideosVideoSnippet) then) =
      __$$_YoutubeRestApiVideosVideoSnippetCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {YoutubeRestApiVideosVideoSnippetThumbnails thumbnails, String title});

  @override
  $YoutubeRestApiVideosVideoSnippetThumbnailsCopyWith<$Res> get thumbnails;
}

/// @nodoc
class __$$_YoutubeRestApiVideosVideoSnippetCopyWithImpl<$Res>
    extends _$YoutubeRestApiVideosVideoSnippetCopyWithImpl<$Res,
        _$_YoutubeRestApiVideosVideoSnippet>
    implements _$$_YoutubeRestApiVideosVideoSnippetCopyWith<$Res> {
  __$$_YoutubeRestApiVideosVideoSnippetCopyWithImpl(
      _$_YoutubeRestApiVideosVideoSnippet _value,
      $Res Function(_$_YoutubeRestApiVideosVideoSnippet) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? thumbnails = null,
    Object? title = null,
  }) {
    return _then(_$_YoutubeRestApiVideosVideoSnippet(
      thumbnails: null == thumbnails
          ? _value.thumbnails
          : thumbnails // ignore: cast_nullable_to_non_nullable
              as YoutubeRestApiVideosVideoSnippetThumbnails,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_YoutubeRestApiVideosVideoSnippet
    implements _YoutubeRestApiVideosVideoSnippet {
  const _$_YoutubeRestApiVideosVideoSnippet(
      {required this.thumbnails, required this.title});

  factory _$_YoutubeRestApiVideosVideoSnippet.fromJson(
          Map<String, dynamic> json) =>
      _$$_YoutubeRestApiVideosVideoSnippetFromJson(json);

  @override
  final YoutubeRestApiVideosVideoSnippetThumbnails thumbnails;
  @override
  final String title;

  @override
  String toString() {
    return 'YoutubeRestApiVideosVideoSnippet(thumbnails: $thumbnails, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_YoutubeRestApiVideosVideoSnippet &&
            (identical(other.thumbnails, thumbnails) ||
                other.thumbnails == thumbnails) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, thumbnails, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_YoutubeRestApiVideosVideoSnippetCopyWith<
          _$_YoutubeRestApiVideosVideoSnippet>
      get copyWith => __$$_YoutubeRestApiVideosVideoSnippetCopyWithImpl<
          _$_YoutubeRestApiVideosVideoSnippet>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_YoutubeRestApiVideosVideoSnippetToJson(
      this,
    );
  }
}

abstract class _YoutubeRestApiVideosVideoSnippet
    implements YoutubeRestApiVideosVideoSnippet {
  const factory _YoutubeRestApiVideosVideoSnippet(
      {required final YoutubeRestApiVideosVideoSnippetThumbnails thumbnails,
      required final String title}) = _$_YoutubeRestApiVideosVideoSnippet;

  factory _YoutubeRestApiVideosVideoSnippet.fromJson(
      Map<String, dynamic> json) = _$_YoutubeRestApiVideosVideoSnippet.fromJson;

  @override
  YoutubeRestApiVideosVideoSnippetThumbnails get thumbnails;
  @override
  String get title;
  @override
  @JsonKey(ignore: true)
  _$$_YoutubeRestApiVideosVideoSnippetCopyWith<
          _$_YoutubeRestApiVideosVideoSnippet>
      get copyWith => throw _privateConstructorUsedError;
}

YoutubeRestApiVideosVideoSnippetThumbnail
    _$YoutubeRestApiVideosVideoSnippetThumbnailFromJson(
        Map<String, dynamic> json) {
  return _YoutubeRestApiVideosVideoSnippetThumbnail.fromJson(json);
}

/// @nodoc
mixin _$YoutubeRestApiVideosVideoSnippetThumbnail {
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $YoutubeRestApiVideosVideoSnippetThumbnailCopyWith<
          YoutubeRestApiVideosVideoSnippetThumbnail>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $YoutubeRestApiVideosVideoSnippetThumbnailCopyWith<$Res> {
  factory $YoutubeRestApiVideosVideoSnippetThumbnailCopyWith(
          YoutubeRestApiVideosVideoSnippetThumbnail value,
          $Res Function(YoutubeRestApiVideosVideoSnippetThumbnail) then) =
      _$YoutubeRestApiVideosVideoSnippetThumbnailCopyWithImpl<$Res,
          YoutubeRestApiVideosVideoSnippetThumbnail>;
  @useResult
  $Res call({String url});
}

/// @nodoc
class _$YoutubeRestApiVideosVideoSnippetThumbnailCopyWithImpl<$Res,
        $Val extends YoutubeRestApiVideosVideoSnippetThumbnail>
    implements $YoutubeRestApiVideosVideoSnippetThumbnailCopyWith<$Res> {
  _$YoutubeRestApiVideosVideoSnippetThumbnailCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_YoutubeRestApiVideosVideoSnippetThumbnailCopyWith<$Res>
    implements $YoutubeRestApiVideosVideoSnippetThumbnailCopyWith<$Res> {
  factory _$$_YoutubeRestApiVideosVideoSnippetThumbnailCopyWith(
          _$_YoutubeRestApiVideosVideoSnippetThumbnail value,
          $Res Function(_$_YoutubeRestApiVideosVideoSnippetThumbnail) then) =
      __$$_YoutubeRestApiVideosVideoSnippetThumbnailCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String url});
}

/// @nodoc
class __$$_YoutubeRestApiVideosVideoSnippetThumbnailCopyWithImpl<$Res>
    extends _$YoutubeRestApiVideosVideoSnippetThumbnailCopyWithImpl<$Res,
        _$_YoutubeRestApiVideosVideoSnippetThumbnail>
    implements _$$_YoutubeRestApiVideosVideoSnippetThumbnailCopyWith<$Res> {
  __$$_YoutubeRestApiVideosVideoSnippetThumbnailCopyWithImpl(
      _$_YoutubeRestApiVideosVideoSnippetThumbnail _value,
      $Res Function(_$_YoutubeRestApiVideosVideoSnippetThumbnail) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
  }) {
    return _then(_$_YoutubeRestApiVideosVideoSnippetThumbnail(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_YoutubeRestApiVideosVideoSnippetThumbnail
    implements _YoutubeRestApiVideosVideoSnippetThumbnail {
  const _$_YoutubeRestApiVideosVideoSnippetThumbnail({required this.url});

  factory _$_YoutubeRestApiVideosVideoSnippetThumbnail.fromJson(
          Map<String, dynamic> json) =>
      _$$_YoutubeRestApiVideosVideoSnippetThumbnailFromJson(json);

  @override
  final String url;

  @override
  String toString() {
    return 'YoutubeRestApiVideosVideoSnippetThumbnail(url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_YoutubeRestApiVideosVideoSnippetThumbnail &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_YoutubeRestApiVideosVideoSnippetThumbnailCopyWith<
          _$_YoutubeRestApiVideosVideoSnippetThumbnail>
      get copyWith =>
          __$$_YoutubeRestApiVideosVideoSnippetThumbnailCopyWithImpl<
              _$_YoutubeRestApiVideosVideoSnippetThumbnail>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_YoutubeRestApiVideosVideoSnippetThumbnailToJson(
      this,
    );
  }
}

abstract class _YoutubeRestApiVideosVideoSnippetThumbnail
    implements YoutubeRestApiVideosVideoSnippetThumbnail {
  const factory _YoutubeRestApiVideosVideoSnippetThumbnail(
          {required final String url}) =
      _$_YoutubeRestApiVideosVideoSnippetThumbnail;

  factory _YoutubeRestApiVideosVideoSnippetThumbnail.fromJson(
          Map<String, dynamic> json) =
      _$_YoutubeRestApiVideosVideoSnippetThumbnail.fromJson;

  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$_YoutubeRestApiVideosVideoSnippetThumbnailCopyWith<
          _$_YoutubeRestApiVideosVideoSnippetThumbnail>
      get copyWith => throw _privateConstructorUsedError;
}

YoutubeRestApiVideosVideoSnippetThumbnails
    _$YoutubeRestApiVideosVideoSnippetThumbnailsFromJson(
        Map<String, dynamic> json) {
  return _YoutubeRestApiVideosVideoSnippetThumbnails.fromJson(json);
}

/// @nodoc
mixin _$YoutubeRestApiVideosVideoSnippetThumbnails {
  YoutubeRestApiVideosVideoSnippetThumbnail get standard =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $YoutubeRestApiVideosVideoSnippetThumbnailsCopyWith<
          YoutubeRestApiVideosVideoSnippetThumbnails>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $YoutubeRestApiVideosVideoSnippetThumbnailsCopyWith<$Res> {
  factory $YoutubeRestApiVideosVideoSnippetThumbnailsCopyWith(
          YoutubeRestApiVideosVideoSnippetThumbnails value,
          $Res Function(YoutubeRestApiVideosVideoSnippetThumbnails) then) =
      _$YoutubeRestApiVideosVideoSnippetThumbnailsCopyWithImpl<$Res,
          YoutubeRestApiVideosVideoSnippetThumbnails>;
  @useResult
  $Res call({YoutubeRestApiVideosVideoSnippetThumbnail standard});

  $YoutubeRestApiVideosVideoSnippetThumbnailCopyWith<$Res> get standard;
}

/// @nodoc
class _$YoutubeRestApiVideosVideoSnippetThumbnailsCopyWithImpl<$Res,
        $Val extends YoutubeRestApiVideosVideoSnippetThumbnails>
    implements $YoutubeRestApiVideosVideoSnippetThumbnailsCopyWith<$Res> {
  _$YoutubeRestApiVideosVideoSnippetThumbnailsCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? standard = null,
  }) {
    return _then(_value.copyWith(
      standard: null == standard
          ? _value.standard
          : standard // ignore: cast_nullable_to_non_nullable
              as YoutubeRestApiVideosVideoSnippetThumbnail,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $YoutubeRestApiVideosVideoSnippetThumbnailCopyWith<$Res> get standard {
    return $YoutubeRestApiVideosVideoSnippetThumbnailCopyWith<$Res>(
        _value.standard, (value) {
      return _then(_value.copyWith(standard: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_YoutubeRestApiVideosVideoSnippetThumbnailsCopyWith<$Res>
    implements $YoutubeRestApiVideosVideoSnippetThumbnailsCopyWith<$Res> {
  factory _$$_YoutubeRestApiVideosVideoSnippetThumbnailsCopyWith(
          _$_YoutubeRestApiVideosVideoSnippetThumbnails value,
          $Res Function(_$_YoutubeRestApiVideosVideoSnippetThumbnails) then) =
      __$$_YoutubeRestApiVideosVideoSnippetThumbnailsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({YoutubeRestApiVideosVideoSnippetThumbnail standard});

  @override
  $YoutubeRestApiVideosVideoSnippetThumbnailCopyWith<$Res> get standard;
}

/// @nodoc
class __$$_YoutubeRestApiVideosVideoSnippetThumbnailsCopyWithImpl<$Res>
    extends _$YoutubeRestApiVideosVideoSnippetThumbnailsCopyWithImpl<$Res,
        _$_YoutubeRestApiVideosVideoSnippetThumbnails>
    implements _$$_YoutubeRestApiVideosVideoSnippetThumbnailsCopyWith<$Res> {
  __$$_YoutubeRestApiVideosVideoSnippetThumbnailsCopyWithImpl(
      _$_YoutubeRestApiVideosVideoSnippetThumbnails _value,
      $Res Function(_$_YoutubeRestApiVideosVideoSnippetThumbnails) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? standard = null,
  }) {
    return _then(_$_YoutubeRestApiVideosVideoSnippetThumbnails(
      standard: null == standard
          ? _value.standard
          : standard // ignore: cast_nullable_to_non_nullable
              as YoutubeRestApiVideosVideoSnippetThumbnail,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_YoutubeRestApiVideosVideoSnippetThumbnails
    implements _YoutubeRestApiVideosVideoSnippetThumbnails {
  const _$_YoutubeRestApiVideosVideoSnippetThumbnails({required this.standard});

  factory _$_YoutubeRestApiVideosVideoSnippetThumbnails.fromJson(
          Map<String, dynamic> json) =>
      _$$_YoutubeRestApiVideosVideoSnippetThumbnailsFromJson(json);

  @override
  final YoutubeRestApiVideosVideoSnippetThumbnail standard;

  @override
  String toString() {
    return 'YoutubeRestApiVideosVideoSnippetThumbnails(standard: $standard)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_YoutubeRestApiVideosVideoSnippetThumbnails &&
            (identical(other.standard, standard) ||
                other.standard == standard));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, standard);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_YoutubeRestApiVideosVideoSnippetThumbnailsCopyWith<
          _$_YoutubeRestApiVideosVideoSnippetThumbnails>
      get copyWith =>
          __$$_YoutubeRestApiVideosVideoSnippetThumbnailsCopyWithImpl<
              _$_YoutubeRestApiVideosVideoSnippetThumbnails>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_YoutubeRestApiVideosVideoSnippetThumbnailsToJson(
      this,
    );
  }
}

abstract class _YoutubeRestApiVideosVideoSnippetThumbnails
    implements YoutubeRestApiVideosVideoSnippetThumbnails {
  const factory _YoutubeRestApiVideosVideoSnippetThumbnails(
          {required final YoutubeRestApiVideosVideoSnippetThumbnail standard}) =
      _$_YoutubeRestApiVideosVideoSnippetThumbnails;

  factory _YoutubeRestApiVideosVideoSnippetThumbnails.fromJson(
          Map<String, dynamic> json) =
      _$_YoutubeRestApiVideosVideoSnippetThumbnails.fromJson;

  @override
  YoutubeRestApiVideosVideoSnippetThumbnail get standard;
  @override
  @JsonKey(ignore: true)
  _$$_YoutubeRestApiVideosVideoSnippetThumbnailsCopyWith<
          _$_YoutubeRestApiVideosVideoSnippetThumbnails>
      get copyWith => throw _privateConstructorUsedError;
}

YoutubeServiceVideoConfig _$YoutubeServiceVideoConfigFromJson(
    Map<String, dynamic> json) {
  return _YoutubeServiceVideoConfig.fromJson(json);
}

/// @nodoc
mixin _$YoutubeServiceVideoConfig {
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $YoutubeServiceVideoConfigCopyWith<YoutubeServiceVideoConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $YoutubeServiceVideoConfigCopyWith<$Res> {
  factory $YoutubeServiceVideoConfigCopyWith(YoutubeServiceVideoConfig value,
          $Res Function(YoutubeServiceVideoConfig) then) =
      _$YoutubeServiceVideoConfigCopyWithImpl<$Res, YoutubeServiceVideoConfig>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class _$YoutubeServiceVideoConfigCopyWithImpl<$Res,
        $Val extends YoutubeServiceVideoConfig>
    implements $YoutubeServiceVideoConfigCopyWith<$Res> {
  _$YoutubeServiceVideoConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_YoutubeServiceVideoConfigCopyWith<$Res>
    implements $YoutubeServiceVideoConfigCopyWith<$Res> {
  factory _$$_YoutubeServiceVideoConfigCopyWith(
          _$_YoutubeServiceVideoConfig value,
          $Res Function(_$_YoutubeServiceVideoConfig) then) =
      __$$_YoutubeServiceVideoConfigCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$_YoutubeServiceVideoConfigCopyWithImpl<$Res>
    extends _$YoutubeServiceVideoConfigCopyWithImpl<$Res,
        _$_YoutubeServiceVideoConfig>
    implements _$$_YoutubeServiceVideoConfigCopyWith<$Res> {
  __$$_YoutubeServiceVideoConfigCopyWithImpl(
      _$_YoutubeServiceVideoConfig _value,
      $Res Function(_$_YoutubeServiceVideoConfig) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_YoutubeServiceVideoConfig(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_YoutubeServiceVideoConfig implements _YoutubeServiceVideoConfig {
  const _$_YoutubeServiceVideoConfig({required this.id});

  factory _$_YoutubeServiceVideoConfig.fromJson(Map<String, dynamic> json) =>
      _$$_YoutubeServiceVideoConfigFromJson(json);

  @override
  final String id;

  @override
  String toString() {
    return 'YoutubeServiceVideoConfig(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_YoutubeServiceVideoConfig &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_YoutubeServiceVideoConfigCopyWith<_$_YoutubeServiceVideoConfig>
      get copyWith => __$$_YoutubeServiceVideoConfigCopyWithImpl<
          _$_YoutubeServiceVideoConfig>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_YoutubeServiceVideoConfigToJson(
      this,
    );
  }
}

abstract class _YoutubeServiceVideoConfig implements YoutubeServiceVideoConfig {
  const factory _YoutubeServiceVideoConfig({required final String id}) =
      _$_YoutubeServiceVideoConfig;

  factory _YoutubeServiceVideoConfig.fromJson(Map<String, dynamic> json) =
      _$_YoutubeServiceVideoConfig.fromJson;

  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$_YoutubeServiceVideoConfigCopyWith<_$_YoutubeServiceVideoConfig>
      get copyWith => throw _privateConstructorUsedError;
}
