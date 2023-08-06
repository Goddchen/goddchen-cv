// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'youtube_video_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$YoutubeVideoModel {
  Either<Object, Option<YoutubeVideoModelVideo>> get video =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $YoutubeVideoModelCopyWith<YoutubeVideoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $YoutubeVideoModelCopyWith<$Res> {
  factory $YoutubeVideoModelCopyWith(
          YoutubeVideoModel value, $Res Function(YoutubeVideoModel) then) =
      _$YoutubeVideoModelCopyWithImpl<$Res, YoutubeVideoModel>;
  @useResult
  $Res call({Either<Object, Option<YoutubeVideoModelVideo>> video});
}

/// @nodoc
class _$YoutubeVideoModelCopyWithImpl<$Res, $Val extends YoutubeVideoModel>
    implements $YoutubeVideoModelCopyWith<$Res> {
  _$YoutubeVideoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? video = null,
  }) {
    return _then(_value.copyWith(
      video: null == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as Either<Object, Option<YoutubeVideoModelVideo>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_YoutubeVideoModelCopyWith<$Res>
    implements $YoutubeVideoModelCopyWith<$Res> {
  factory _$$_YoutubeVideoModelCopyWith(_$_YoutubeVideoModel value,
          $Res Function(_$_YoutubeVideoModel) then) =
      __$$_YoutubeVideoModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Either<Object, Option<YoutubeVideoModelVideo>> video});
}

/// @nodoc
class __$$_YoutubeVideoModelCopyWithImpl<$Res>
    extends _$YoutubeVideoModelCopyWithImpl<$Res, _$_YoutubeVideoModel>
    implements _$$_YoutubeVideoModelCopyWith<$Res> {
  __$$_YoutubeVideoModelCopyWithImpl(
      _$_YoutubeVideoModel _value, $Res Function(_$_YoutubeVideoModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? video = null,
  }) {
    return _then(_$_YoutubeVideoModel(
      video: null == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as Either<Object, Option<YoutubeVideoModelVideo>>,
    ));
  }
}

/// @nodoc

class _$_YoutubeVideoModel implements _YoutubeVideoModel {
  const _$_YoutubeVideoModel({required this.video});

  @override
  final Either<Object, Option<YoutubeVideoModelVideo>> video;

  @override
  String toString() {
    return 'YoutubeVideoModel(video: $video)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_YoutubeVideoModel &&
            (identical(other.video, video) || other.video == video));
  }

  @override
  int get hashCode => Object.hash(runtimeType, video);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_YoutubeVideoModelCopyWith<_$_YoutubeVideoModel> get copyWith =>
      __$$_YoutubeVideoModelCopyWithImpl<_$_YoutubeVideoModel>(
          this, _$identity);
}

abstract class _YoutubeVideoModel implements YoutubeVideoModel {
  const factory _YoutubeVideoModel(
      {required final Either<Object, Option<YoutubeVideoModelVideo>>
          video}) = _$_YoutubeVideoModel;

  @override
  Either<Object, Option<YoutubeVideoModelVideo>> get video;
  @override
  @JsonKey(ignore: true)
  _$$_YoutubeVideoModelCopyWith<_$_YoutubeVideoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$YoutubeVideoModelVideo {
  Uri get link => throw _privateConstructorUsedError;
  Uri get thumbnail => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $YoutubeVideoModelVideoCopyWith<YoutubeVideoModelVideo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $YoutubeVideoModelVideoCopyWith<$Res> {
  factory $YoutubeVideoModelVideoCopyWith(YoutubeVideoModelVideo value,
          $Res Function(YoutubeVideoModelVideo) then) =
      _$YoutubeVideoModelVideoCopyWithImpl<$Res, YoutubeVideoModelVideo>;
  @useResult
  $Res call({Uri link, Uri thumbnail, String title});
}

/// @nodoc
class _$YoutubeVideoModelVideoCopyWithImpl<$Res,
        $Val extends YoutubeVideoModelVideo>
    implements $YoutubeVideoModelVideoCopyWith<$Res> {
  _$YoutubeVideoModelVideoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? link = null,
    Object? thumbnail = null,
    Object? title = null,
  }) {
    return _then(_value.copyWith(
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as Uri,
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as Uri,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_YoutubeVideoModelVideoCopyWith<$Res>
    implements $YoutubeVideoModelVideoCopyWith<$Res> {
  factory _$$_YoutubeVideoModelVideoCopyWith(_$_YoutubeVideoModelVideo value,
          $Res Function(_$_YoutubeVideoModelVideo) then) =
      __$$_YoutubeVideoModelVideoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Uri link, Uri thumbnail, String title});
}

/// @nodoc
class __$$_YoutubeVideoModelVideoCopyWithImpl<$Res>
    extends _$YoutubeVideoModelVideoCopyWithImpl<$Res,
        _$_YoutubeVideoModelVideo>
    implements _$$_YoutubeVideoModelVideoCopyWith<$Res> {
  __$$_YoutubeVideoModelVideoCopyWithImpl(_$_YoutubeVideoModelVideo _value,
      $Res Function(_$_YoutubeVideoModelVideo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? link = null,
    Object? thumbnail = null,
    Object? title = null,
  }) {
    return _then(_$_YoutubeVideoModelVideo(
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as Uri,
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as Uri,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_YoutubeVideoModelVideo implements _YoutubeVideoModelVideo {
  const _$_YoutubeVideoModelVideo(
      {required this.link, required this.thumbnail, required this.title});

  @override
  final Uri link;
  @override
  final Uri thumbnail;
  @override
  final String title;

  @override
  String toString() {
    return 'YoutubeVideoModelVideo(link: $link, thumbnail: $thumbnail, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_YoutubeVideoModelVideo &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            (identical(other.title, title) || other.title == title));
  }

  @override
  int get hashCode => Object.hash(runtimeType, link, thumbnail, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_YoutubeVideoModelVideoCopyWith<_$_YoutubeVideoModelVideo> get copyWith =>
      __$$_YoutubeVideoModelVideoCopyWithImpl<_$_YoutubeVideoModelVideo>(
          this, _$identity);
}

abstract class _YoutubeVideoModelVideo implements YoutubeVideoModelVideo {
  const factory _YoutubeVideoModelVideo(
      {required final Uri link,
      required final Uri thumbnail,
      required final String title}) = _$_YoutubeVideoModelVideo;

  @override
  Uri get link;
  @override
  Uri get thumbnail;
  @override
  String get title;
  @override
  @JsonKey(ignore: true)
  _$$_YoutubeVideoModelVideoCopyWith<_$_YoutubeVideoModelVideo> get copyWith =>
      throw _privateConstructorUsedError;
}
