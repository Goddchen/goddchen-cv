// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'youtube_videos_data_service.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$YoutubeVideosDataServiceVideo {
  String get id => throw _privateConstructorUsedError;
  Option<String> get imageAssetPath => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $YoutubeVideosDataServiceVideoCopyWith<YoutubeVideosDataServiceVideo>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $YoutubeVideosDataServiceVideoCopyWith<$Res> {
  factory $YoutubeVideosDataServiceVideoCopyWith(
          YoutubeVideosDataServiceVideo value,
          $Res Function(YoutubeVideosDataServiceVideo) then) =
      _$YoutubeVideosDataServiceVideoCopyWithImpl<$Res,
          YoutubeVideosDataServiceVideo>;
  @useResult
  $Res call({String id, Option<String> imageAssetPath, String title});
}

/// @nodoc
class _$YoutubeVideosDataServiceVideoCopyWithImpl<$Res,
        $Val extends YoutubeVideosDataServiceVideo>
    implements $YoutubeVideosDataServiceVideoCopyWith<$Res> {
  _$YoutubeVideosDataServiceVideoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? imageAssetPath = null,
    Object? title = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      imageAssetPath: null == imageAssetPath
          ? _value.imageAssetPath
          : imageAssetPath // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$YoutubeVideosDataServiceVideoImplCopyWith<$Res>
    implements $YoutubeVideosDataServiceVideoCopyWith<$Res> {
  factory _$$YoutubeVideosDataServiceVideoImplCopyWith(
          _$YoutubeVideosDataServiceVideoImpl value,
          $Res Function(_$YoutubeVideosDataServiceVideoImpl) then) =
      __$$YoutubeVideosDataServiceVideoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, Option<String> imageAssetPath, String title});
}

/// @nodoc
class __$$YoutubeVideosDataServiceVideoImplCopyWithImpl<$Res>
    extends _$YoutubeVideosDataServiceVideoCopyWithImpl<$Res,
        _$YoutubeVideosDataServiceVideoImpl>
    implements _$$YoutubeVideosDataServiceVideoImplCopyWith<$Res> {
  __$$YoutubeVideosDataServiceVideoImplCopyWithImpl(
      _$YoutubeVideosDataServiceVideoImpl _value,
      $Res Function(_$YoutubeVideosDataServiceVideoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? imageAssetPath = null,
    Object? title = null,
  }) {
    return _then(_$YoutubeVideosDataServiceVideoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      imageAssetPath: null == imageAssetPath
          ? _value.imageAssetPath
          : imageAssetPath // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$YoutubeVideosDataServiceVideoImpl
    implements _YoutubeVideosDataServiceVideo {
  const _$YoutubeVideosDataServiceVideoImpl(
      {required this.id, required this.imageAssetPath, required this.title});

  @override
  final String id;
  @override
  final Option<String> imageAssetPath;
  @override
  final String title;

  @override
  String toString() {
    return 'YoutubeVideosDataServiceVideo(id: $id, imageAssetPath: $imageAssetPath, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$YoutubeVideosDataServiceVideoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.imageAssetPath, imageAssetPath) ||
                other.imageAssetPath == imageAssetPath) &&
            (identical(other.title, title) || other.title == title));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, imageAssetPath, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$YoutubeVideosDataServiceVideoImplCopyWith<
          _$YoutubeVideosDataServiceVideoImpl>
      get copyWith => __$$YoutubeVideosDataServiceVideoImplCopyWithImpl<
          _$YoutubeVideosDataServiceVideoImpl>(this, _$identity);
}

abstract class _YoutubeVideosDataServiceVideo
    implements YoutubeVideosDataServiceVideo {
  const factory _YoutubeVideosDataServiceVideo(
      {required final String id,
      required final Option<String> imageAssetPath,
      required final String title}) = _$YoutubeVideosDataServiceVideoImpl;

  @override
  String get id;
  @override
  Option<String> get imageAssetPath;
  @override
  String get title;
  @override
  @JsonKey(ignore: true)
  _$$YoutubeVideosDataServiceVideoImplCopyWith<
          _$YoutubeVideosDataServiceVideoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
