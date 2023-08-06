// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'youtube_videos_youtube_service.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$YoutubeVideosYoutubeServiceVideo {
  String get id => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $YoutubeVideosYoutubeServiceVideoCopyWith<YoutubeVideosYoutubeServiceVideo>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $YoutubeVideosYoutubeServiceVideoCopyWith<$Res> {
  factory $YoutubeVideosYoutubeServiceVideoCopyWith(
          YoutubeVideosYoutubeServiceVideo value,
          $Res Function(YoutubeVideosYoutubeServiceVideo) then) =
      _$YoutubeVideosYoutubeServiceVideoCopyWithImpl<$Res,
          YoutubeVideosYoutubeServiceVideo>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class _$YoutubeVideosYoutubeServiceVideoCopyWithImpl<$Res,
        $Val extends YoutubeVideosYoutubeServiceVideo>
    implements $YoutubeVideosYoutubeServiceVideoCopyWith<$Res> {
  _$YoutubeVideosYoutubeServiceVideoCopyWithImpl(this._value, this._then);

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
abstract class _$$_YoutubeVideosYoutubeServiceVideoCopyWith<$Res>
    implements $YoutubeVideosYoutubeServiceVideoCopyWith<$Res> {
  factory _$$_YoutubeVideosYoutubeServiceVideoCopyWith(
          _$_YoutubeVideosYoutubeServiceVideo value,
          $Res Function(_$_YoutubeVideosYoutubeServiceVideo) then) =
      __$$_YoutubeVideosYoutubeServiceVideoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$_YoutubeVideosYoutubeServiceVideoCopyWithImpl<$Res>
    extends _$YoutubeVideosYoutubeServiceVideoCopyWithImpl<$Res,
        _$_YoutubeVideosYoutubeServiceVideo>
    implements _$$_YoutubeVideosYoutubeServiceVideoCopyWith<$Res> {
  __$$_YoutubeVideosYoutubeServiceVideoCopyWithImpl(
      _$_YoutubeVideosYoutubeServiceVideo _value,
      $Res Function(_$_YoutubeVideosYoutubeServiceVideo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_YoutubeVideosYoutubeServiceVideo(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_YoutubeVideosYoutubeServiceVideo
    implements _YoutubeVideosYoutubeServiceVideo {
  const _$_YoutubeVideosYoutubeServiceVideo({required this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'YoutubeVideosYoutubeServiceVideo(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_YoutubeVideosYoutubeServiceVideo &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_YoutubeVideosYoutubeServiceVideoCopyWith<
          _$_YoutubeVideosYoutubeServiceVideo>
      get copyWith => __$$_YoutubeVideosYoutubeServiceVideoCopyWithImpl<
          _$_YoutubeVideosYoutubeServiceVideo>(this, _$identity);
}

abstract class _YoutubeVideosYoutubeServiceVideo
    implements YoutubeVideosYoutubeServiceVideo {
  const factory _YoutubeVideosYoutubeServiceVideo({required final String id}) =
      _$_YoutubeVideosYoutubeServiceVideo;

  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$_YoutubeVideosYoutubeServiceVideoCopyWith<
          _$_YoutubeVideosYoutubeServiceVideo>
      get copyWith => throw _privateConstructorUsedError;
}
