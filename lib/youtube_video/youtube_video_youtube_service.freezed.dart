// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'youtube_video_youtube_service.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$YoutubeVideoYoutubeServiceVideo {
  Uri get thumbnail => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $YoutubeVideoYoutubeServiceVideoCopyWith<YoutubeVideoYoutubeServiceVideo>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $YoutubeVideoYoutubeServiceVideoCopyWith<$Res> {
  factory $YoutubeVideoYoutubeServiceVideoCopyWith(
          YoutubeVideoYoutubeServiceVideo value,
          $Res Function(YoutubeVideoYoutubeServiceVideo) then) =
      _$YoutubeVideoYoutubeServiceVideoCopyWithImpl<$Res,
          YoutubeVideoYoutubeServiceVideo>;
  @useResult
  $Res call({Uri thumbnail, String title});
}

/// @nodoc
class _$YoutubeVideoYoutubeServiceVideoCopyWithImpl<$Res,
        $Val extends YoutubeVideoYoutubeServiceVideo>
    implements $YoutubeVideoYoutubeServiceVideoCopyWith<$Res> {
  _$YoutubeVideoYoutubeServiceVideoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? thumbnail = null,
    Object? title = null,
  }) {
    return _then(_value.copyWith(
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
abstract class _$$_YoutubeVideoYoutubeServiceVideoCopyWith<$Res>
    implements $YoutubeVideoYoutubeServiceVideoCopyWith<$Res> {
  factory _$$_YoutubeVideoYoutubeServiceVideoCopyWith(
          _$_YoutubeVideoYoutubeServiceVideo value,
          $Res Function(_$_YoutubeVideoYoutubeServiceVideo) then) =
      __$$_YoutubeVideoYoutubeServiceVideoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Uri thumbnail, String title});
}

/// @nodoc
class __$$_YoutubeVideoYoutubeServiceVideoCopyWithImpl<$Res>
    extends _$YoutubeVideoYoutubeServiceVideoCopyWithImpl<$Res,
        _$_YoutubeVideoYoutubeServiceVideo>
    implements _$$_YoutubeVideoYoutubeServiceVideoCopyWith<$Res> {
  __$$_YoutubeVideoYoutubeServiceVideoCopyWithImpl(
      _$_YoutubeVideoYoutubeServiceVideo _value,
      $Res Function(_$_YoutubeVideoYoutubeServiceVideo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? thumbnail = null,
    Object? title = null,
  }) {
    return _then(_$_YoutubeVideoYoutubeServiceVideo(
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

class _$_YoutubeVideoYoutubeServiceVideo
    implements _YoutubeVideoYoutubeServiceVideo {
  const _$_YoutubeVideoYoutubeServiceVideo(
      {required this.thumbnail, required this.title});

  @override
  final Uri thumbnail;
  @override
  final String title;

  @override
  String toString() {
    return 'YoutubeVideoYoutubeServiceVideo(thumbnail: $thumbnail, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_YoutubeVideoYoutubeServiceVideo &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            (identical(other.title, title) || other.title == title));
  }

  @override
  int get hashCode => Object.hash(runtimeType, thumbnail, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_YoutubeVideoYoutubeServiceVideoCopyWith<
          _$_YoutubeVideoYoutubeServiceVideo>
      get copyWith => __$$_YoutubeVideoYoutubeServiceVideoCopyWithImpl<
          _$_YoutubeVideoYoutubeServiceVideo>(this, _$identity);
}

abstract class _YoutubeVideoYoutubeServiceVideo
    implements YoutubeVideoYoutubeServiceVideo {
  const factory _YoutubeVideoYoutubeServiceVideo(
      {required final Uri thumbnail,
      required final String title}) = _$_YoutubeVideoYoutubeServiceVideo;

  @override
  Uri get thumbnail;
  @override
  String get title;
  @override
  @JsonKey(ignore: true)
  _$$_YoutubeVideoYoutubeServiceVideoCopyWith<
          _$_YoutubeVideoYoutubeServiceVideo>
      get copyWith => throw _privateConstructorUsedError;
}
