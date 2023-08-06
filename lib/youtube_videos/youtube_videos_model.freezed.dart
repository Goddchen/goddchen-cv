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
mixin _$YoutubeVideosModelVideo {
  String get id => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $YoutubeVideosModelVideoCopyWith<YoutubeVideosModelVideo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $YoutubeVideosModelVideoCopyWith<$Res> {
  factory $YoutubeVideosModelVideoCopyWith(YoutubeVideosModelVideo value,
          $Res Function(YoutubeVideosModelVideo) then) =
      _$YoutubeVideosModelVideoCopyWithImpl<$Res, YoutubeVideosModelVideo>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class _$YoutubeVideosModelVideoCopyWithImpl<$Res,
        $Val extends YoutubeVideosModelVideo>
    implements $YoutubeVideosModelVideoCopyWith<$Res> {
  _$YoutubeVideosModelVideoCopyWithImpl(this._value, this._then);

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
abstract class _$$_YoutubeVideosModelVideoCopyWith<$Res>
    implements $YoutubeVideosModelVideoCopyWith<$Res> {
  factory _$$_YoutubeVideosModelVideoCopyWith(_$_YoutubeVideosModelVideo value,
          $Res Function(_$_YoutubeVideosModelVideo) then) =
      __$$_YoutubeVideosModelVideoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$_YoutubeVideosModelVideoCopyWithImpl<$Res>
    extends _$YoutubeVideosModelVideoCopyWithImpl<$Res,
        _$_YoutubeVideosModelVideo>
    implements _$$_YoutubeVideosModelVideoCopyWith<$Res> {
  __$$_YoutubeVideosModelVideoCopyWithImpl(_$_YoutubeVideosModelVideo _value,
      $Res Function(_$_YoutubeVideosModelVideo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_YoutubeVideosModelVideo(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_YoutubeVideosModelVideo implements _YoutubeVideosModelVideo {
  const _$_YoutubeVideosModelVideo({required this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'YoutubeVideosModelVideo(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_YoutubeVideosModelVideo &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_YoutubeVideosModelVideoCopyWith<_$_YoutubeVideosModelVideo>
      get copyWith =>
          __$$_YoutubeVideosModelVideoCopyWithImpl<_$_YoutubeVideosModelVideo>(
              this, _$identity);
}

abstract class _YoutubeVideosModelVideo implements YoutubeVideosModelVideo {
  const factory _YoutubeVideosModelVideo({required final String id}) =
      _$_YoutubeVideosModelVideo;

  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$_YoutubeVideosModelVideoCopyWith<_$_YoutubeVideosModelVideo>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$YoutubeVideosModel {
  Either<Object, Option<List<YoutubeVideosModelVideo>>> get videos =>
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
  $Res call({Either<Object, Option<List<YoutubeVideosModelVideo>>> videos});
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
              as Either<Object, Option<List<YoutubeVideosModelVideo>>>,
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
  $Res call({Either<Object, Option<List<YoutubeVideosModelVideo>>> videos});
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
              as Either<Object, Option<List<YoutubeVideosModelVideo>>>,
    ));
  }
}

/// @nodoc

class _$_YoutubeVideosModel implements _YoutubeVideosModel {
  const _$_YoutubeVideosModel({required this.videos});

  @override
  final Either<Object, Option<List<YoutubeVideosModelVideo>>> videos;

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
      {required final Either<Object, Option<List<YoutubeVideosModelVideo>>>
          videos}) = _$_YoutubeVideosModel;

  @override
  Either<Object, Option<List<YoutubeVideosModelVideo>>> get videos;
  @override
  @JsonKey(ignore: true)
  _$$_YoutubeVideosModelCopyWith<_$_YoutubeVideosModel> get copyWith =>
      throw _privateConstructorUsedError;
}
