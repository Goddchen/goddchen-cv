// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'youtube_videos_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$YoutubeVideoModelVideo {
  String get id => throw _privateConstructorUsedError;

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
  $Res call({String id});
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
abstract class _$$_YoutubeVideoModelVideoCopyWith<$Res>
    implements $YoutubeVideoModelVideoCopyWith<$Res> {
  factory _$$_YoutubeVideoModelVideoCopyWith(_$_YoutubeVideoModelVideo value,
          $Res Function(_$_YoutubeVideoModelVideo) then) =
      __$$_YoutubeVideoModelVideoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id});
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
    Object? id = null,
  }) {
    return _then(_$_YoutubeVideoModelVideo(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_YoutubeVideoModelVideo implements _YoutubeVideoModelVideo {
  const _$_YoutubeVideoModelVideo({required this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'YoutubeVideoModelVideo(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_YoutubeVideoModelVideo &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_YoutubeVideoModelVideoCopyWith<_$_YoutubeVideoModelVideo> get copyWith =>
      __$$_YoutubeVideoModelVideoCopyWithImpl<_$_YoutubeVideoModelVideo>(
          this, _$identity);
}

abstract class _YoutubeVideoModelVideo implements YoutubeVideoModelVideo {
  const factory _YoutubeVideoModelVideo({required final String id}) =
      _$_YoutubeVideoModelVideo;

  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$_YoutubeVideoModelVideoCopyWith<_$_YoutubeVideoModelVideo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$YoutubeVideosModel {
  Either<Object, Option<List<YoutubeVideoModelVideo>>> get videos =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $YoutubeVideosModelCopyWith<YoutubeVideosModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $YoutubeVideosModelCopyWith<$Res> {
  factory $YoutubeVideosModelCopyWith(
          YoutubeVideosModel value, $Res Function(YoutubeVideosModel) then) =
      _$YoutubeVideosModelCopyWithImpl<$Res, YoutubeVideosModel>;
  @useResult
  $Res call({Either<Object, Option<List<YoutubeVideoModelVideo>>> videos});
}

/// @nodoc
class _$YoutubeVideosModelCopyWithImpl<$Res, $Val extends YoutubeVideosModel>
    implements $YoutubeVideosModelCopyWith<$Res> {
  _$YoutubeVideosModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? videos = null,
  }) {
    return _then(_value.copyWith(
      videos: null == videos
          ? _value.videos
          : videos // ignore: cast_nullable_to_non_nullable
              as Either<Object, Option<List<YoutubeVideoModelVideo>>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_YoutubeVideosModelCopyWith<$Res>
    implements $YoutubeVideosModelCopyWith<$Res> {
  factory _$$_YoutubeVideosModelCopyWith(_$_YoutubeVideosModel value,
          $Res Function(_$_YoutubeVideosModel) then) =
      __$$_YoutubeVideosModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Either<Object, Option<List<YoutubeVideoModelVideo>>> videos});
}

/// @nodoc
class __$$_YoutubeVideosModelCopyWithImpl<$Res>
    extends _$YoutubeVideosModelCopyWithImpl<$Res, _$_YoutubeVideosModel>
    implements _$$_YoutubeVideosModelCopyWith<$Res> {
  __$$_YoutubeVideosModelCopyWithImpl(
      _$_YoutubeVideosModel _value, $Res Function(_$_YoutubeVideosModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? videos = null,
  }) {
    return _then(_$_YoutubeVideosModel(
      videos: null == videos
          ? _value.videos
          : videos // ignore: cast_nullable_to_non_nullable
              as Either<Object, Option<List<YoutubeVideoModelVideo>>>,
    ));
  }
}

/// @nodoc

class _$_YoutubeVideosModel implements _YoutubeVideosModel {
  const _$_YoutubeVideosModel({required this.videos});

  @override
  final Either<Object, Option<List<YoutubeVideoModelVideo>>> videos;

  @override
  String toString() {
    return 'YoutubeVideosModel(videos: $videos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_YoutubeVideosModel &&
            (identical(other.videos, videos) || other.videos == videos));
  }

  @override
  int get hashCode => Object.hash(runtimeType, videos);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_YoutubeVideosModelCopyWith<_$_YoutubeVideosModel> get copyWith =>
      __$$_YoutubeVideosModelCopyWithImpl<_$_YoutubeVideosModel>(
          this, _$identity);
}

abstract class _YoutubeVideosModel implements YoutubeVideosModel {
  const factory _YoutubeVideosModel(
      {required final Either<Object, Option<List<YoutubeVideoModelVideo>>>
          videos}) = _$_YoutubeVideosModel;

  @override
  Either<Object, Option<List<YoutubeVideoModelVideo>>> get videos;
  @override
  @JsonKey(ignore: true)
  _$$_YoutubeVideosModelCopyWith<_$_YoutubeVideosModel> get copyWith =>
      throw _privateConstructorUsedError;
}
