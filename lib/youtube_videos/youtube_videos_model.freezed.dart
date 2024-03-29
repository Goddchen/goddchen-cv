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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$YoutubeVideosModel {
  Either<Object, Option<List<YoutubeVideosModelVideo>>> get items =>
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
  $Res call({Either<Object, Option<List<YoutubeVideosModelVideo>>> items});
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
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as Either<Object, Option<List<YoutubeVideosModelVideo>>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$YoutubeVideosModelImplCopyWith<$Res>
    implements $YoutubeVideosModelCopyWith<$Res> {
  factory _$$YoutubeVideosModelImplCopyWith(_$YoutubeVideosModelImpl value,
          $Res Function(_$YoutubeVideosModelImpl) then) =
      __$$YoutubeVideosModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Either<Object, Option<List<YoutubeVideosModelVideo>>> items});
}

/// @nodoc
class __$$YoutubeVideosModelImplCopyWithImpl<$Res>
    extends _$YoutubeVideosModelCopyWithImpl<$Res, _$YoutubeVideosModelImpl>
    implements _$$YoutubeVideosModelImplCopyWith<$Res> {
  __$$YoutubeVideosModelImplCopyWithImpl(_$YoutubeVideosModelImpl _value,
      $Res Function(_$YoutubeVideosModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_$YoutubeVideosModelImpl(
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as Either<Object, Option<List<YoutubeVideosModelVideo>>>,
    ));
  }
}

/// @nodoc

class _$YoutubeVideosModelImpl implements _YoutubeVideosModel {
  const _$YoutubeVideosModelImpl({required this.items});

  @override
  final Either<Object, Option<List<YoutubeVideosModelVideo>>> items;

  @override
  String toString() {
    return 'YoutubeVideosModel(items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$YoutubeVideosModelImpl &&
            (identical(other.items, items) || other.items == items));
  }

  @override
  int get hashCode => Object.hash(runtimeType, items);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$YoutubeVideosModelImplCopyWith<_$YoutubeVideosModelImpl> get copyWith =>
      __$$YoutubeVideosModelImplCopyWithImpl<_$YoutubeVideosModelImpl>(
          this, _$identity);
}

abstract class _YoutubeVideosModel implements YoutubeVideosModel {
  const factory _YoutubeVideosModel(
      {required final Either<Object, Option<List<YoutubeVideosModelVideo>>>
          items}) = _$YoutubeVideosModelImpl;

  @override
  Either<Object, Option<List<YoutubeVideosModelVideo>>> get items;
  @override
  @JsonKey(ignore: true)
  _$$YoutubeVideosModelImplCopyWith<_$YoutubeVideosModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$YoutubeVideosModelVideo {
  Option<GridModelItemAction> get action => throw _privateConstructorUsedError;
  Option<String> get description => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  Option<String> get imageAssetPath => throw _privateConstructorUsedError;
  BoxFit get imageFit => throw _privateConstructorUsedError;
  EdgeInsets get imagePadding => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

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
  $Res call(
      {Option<GridModelItemAction> action,
      Option<String> description,
      String id,
      Option<String> imageAssetPath,
      BoxFit imageFit,
      EdgeInsets imagePadding,
      String title});
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
    Object? action = null,
    Object? description = null,
    Object? id = null,
    Object? imageAssetPath = null,
    Object? imageFit = null,
    Object? imagePadding = null,
    Object? title = null,
  }) {
    return _then(_value.copyWith(
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as Option<GridModelItemAction>,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      imageAssetPath: null == imageAssetPath
          ? _value.imageAssetPath
          : imageAssetPath // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      imageFit: null == imageFit
          ? _value.imageFit
          : imageFit // ignore: cast_nullable_to_non_nullable
              as BoxFit,
      imagePadding: null == imagePadding
          ? _value.imagePadding
          : imagePadding // ignore: cast_nullable_to_non_nullable
              as EdgeInsets,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$YoutubeVideosModelVideoImplCopyWith<$Res>
    implements $YoutubeVideosModelVideoCopyWith<$Res> {
  factory _$$YoutubeVideosModelVideoImplCopyWith(
          _$YoutubeVideosModelVideoImpl value,
          $Res Function(_$YoutubeVideosModelVideoImpl) then) =
      __$$YoutubeVideosModelVideoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Option<GridModelItemAction> action,
      Option<String> description,
      String id,
      Option<String> imageAssetPath,
      BoxFit imageFit,
      EdgeInsets imagePadding,
      String title});
}

/// @nodoc
class __$$YoutubeVideosModelVideoImplCopyWithImpl<$Res>
    extends _$YoutubeVideosModelVideoCopyWithImpl<$Res,
        _$YoutubeVideosModelVideoImpl>
    implements _$$YoutubeVideosModelVideoImplCopyWith<$Res> {
  __$$YoutubeVideosModelVideoImplCopyWithImpl(
      _$YoutubeVideosModelVideoImpl _value,
      $Res Function(_$YoutubeVideosModelVideoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? action = null,
    Object? description = null,
    Object? id = null,
    Object? imageAssetPath = null,
    Object? imageFit = null,
    Object? imagePadding = null,
    Object? title = null,
  }) {
    return _then(_$YoutubeVideosModelVideoImpl(
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as Option<GridModelItemAction>,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      imageAssetPath: null == imageAssetPath
          ? _value.imageAssetPath
          : imageAssetPath // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      imageFit: null == imageFit
          ? _value.imageFit
          : imageFit // ignore: cast_nullable_to_non_nullable
              as BoxFit,
      imagePadding: null == imagePadding
          ? _value.imagePadding
          : imagePadding // ignore: cast_nullable_to_non_nullable
              as EdgeInsets,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$YoutubeVideosModelVideoImpl implements _YoutubeVideosModelVideo {
  const _$YoutubeVideosModelVideoImpl(
      {required this.action,
      this.description = const None(),
      required this.id,
      required this.imageAssetPath,
      this.imageFit = BoxFit.cover,
      this.imagePadding = const EdgeInsets.all(0),
      required this.title});

  @override
  final Option<GridModelItemAction> action;
  @override
  @JsonKey()
  final Option<String> description;
  @override
  final String id;
  @override
  final Option<String> imageAssetPath;
  @override
  @JsonKey()
  final BoxFit imageFit;
  @override
  @JsonKey()
  final EdgeInsets imagePadding;
  @override
  final String title;

  @override
  String toString() {
    return 'YoutubeVideosModelVideo(action: $action, description: $description, id: $id, imageAssetPath: $imageAssetPath, imageFit: $imageFit, imagePadding: $imagePadding, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$YoutubeVideosModelVideoImpl &&
            (identical(other.action, action) || other.action == action) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.imageAssetPath, imageAssetPath) ||
                other.imageAssetPath == imageAssetPath) &&
            (identical(other.imageFit, imageFit) ||
                other.imageFit == imageFit) &&
            (identical(other.imagePadding, imagePadding) ||
                other.imagePadding == imagePadding) &&
            (identical(other.title, title) || other.title == title));
  }

  @override
  int get hashCode => Object.hash(runtimeType, action, description, id,
      imageAssetPath, imageFit, imagePadding, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$YoutubeVideosModelVideoImplCopyWith<_$YoutubeVideosModelVideoImpl>
      get copyWith => __$$YoutubeVideosModelVideoImplCopyWithImpl<
          _$YoutubeVideosModelVideoImpl>(this, _$identity);
}

abstract class _YoutubeVideosModelVideo implements YoutubeVideosModelVideo {
  const factory _YoutubeVideosModelVideo(
      {required final Option<GridModelItemAction> action,
      final Option<String> description,
      required final String id,
      required final Option<String> imageAssetPath,
      final BoxFit imageFit,
      final EdgeInsets imagePadding,
      required final String title}) = _$YoutubeVideosModelVideoImpl;

  @override
  Option<GridModelItemAction> get action;
  @override
  Option<String> get description;
  @override
  String get id;
  @override
  Option<String> get imageAssetPath;
  @override
  BoxFit get imageFit;
  @override
  EdgeInsets get imagePadding;
  @override
  String get title;
  @override
  @JsonKey(ignore: true)
  _$$YoutubeVideosModelVideoImplCopyWith<_$YoutubeVideosModelVideoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
