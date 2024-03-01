// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'github_prs_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GithubPrsModel {
  Either<Object, Option<List<GithubPrsModelPr>>> get items =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GithubPrsModelCopyWith<GithubPrsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GithubPrsModelCopyWith<$Res> {
  factory $GithubPrsModelCopyWith(
          GithubPrsModel value, $Res Function(GithubPrsModel) then) =
      _$GithubPrsModelCopyWithImpl<$Res, GithubPrsModel>;
  @useResult
  $Res call({Either<Object, Option<List<GithubPrsModelPr>>> items});
}

/// @nodoc
class _$GithubPrsModelCopyWithImpl<$Res, $Val extends GithubPrsModel>
    implements $GithubPrsModelCopyWith<$Res> {
  _$GithubPrsModelCopyWithImpl(this._value, this._then);

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
              as Either<Object, Option<List<GithubPrsModelPr>>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GithubPrsModelImplCopyWith<$Res>
    implements $GithubPrsModelCopyWith<$Res> {
  factory _$$GithubPrsModelImplCopyWith(_$GithubPrsModelImpl value,
          $Res Function(_$GithubPrsModelImpl) then) =
      __$$GithubPrsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Either<Object, Option<List<GithubPrsModelPr>>> items});
}

/// @nodoc
class __$$GithubPrsModelImplCopyWithImpl<$Res>
    extends _$GithubPrsModelCopyWithImpl<$Res, _$GithubPrsModelImpl>
    implements _$$GithubPrsModelImplCopyWith<$Res> {
  __$$GithubPrsModelImplCopyWithImpl(
      _$GithubPrsModelImpl _value, $Res Function(_$GithubPrsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_$GithubPrsModelImpl(
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as Either<Object, Option<List<GithubPrsModelPr>>>,
    ));
  }
}

/// @nodoc

class _$GithubPrsModelImpl implements _GithubPrsModel {
  const _$GithubPrsModelImpl({required this.items});

  @override
  final Either<Object, Option<List<GithubPrsModelPr>>> items;

  @override
  String toString() {
    return 'GithubPrsModel(items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GithubPrsModelImpl &&
            (identical(other.items, items) || other.items == items));
  }

  @override
  int get hashCode => Object.hash(runtimeType, items);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GithubPrsModelImplCopyWith<_$GithubPrsModelImpl> get copyWith =>
      __$$GithubPrsModelImplCopyWithImpl<_$GithubPrsModelImpl>(
          this, _$identity);
}

abstract class _GithubPrsModel implements GithubPrsModel {
  const factory _GithubPrsModel(
      {required final Either<Object, Option<List<GithubPrsModelPr>>>
          items}) = _$GithubPrsModelImpl;

  @override
  Either<Object, Option<List<GithubPrsModelPr>>> get items;
  @override
  @JsonKey(ignore: true)
  _$$GithubPrsModelImplCopyWith<_$GithubPrsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GithubPrsModelPr {
  Option<GridModelItemAction> get action => throw _privateConstructorUsedError;
  Option<String> get description => throw _privateConstructorUsedError;
  Option<String> get imageAssetPath => throw _privateConstructorUsedError;
  BoxFit get imageFit => throw _privateConstructorUsedError;
  EdgeInsets get imagePadding => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GithubPrsModelPrCopyWith<GithubPrsModelPr> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GithubPrsModelPrCopyWith<$Res> {
  factory $GithubPrsModelPrCopyWith(
          GithubPrsModelPr value, $Res Function(GithubPrsModelPr) then) =
      _$GithubPrsModelPrCopyWithImpl<$Res, GithubPrsModelPr>;
  @useResult
  $Res call(
      {Option<GridModelItemAction> action,
      Option<String> description,
      Option<String> imageAssetPath,
      BoxFit imageFit,
      EdgeInsets imagePadding,
      String title});
}

/// @nodoc
class _$GithubPrsModelPrCopyWithImpl<$Res, $Val extends GithubPrsModelPr>
    implements $GithubPrsModelPrCopyWith<$Res> {
  _$GithubPrsModelPrCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? action = null,
    Object? description = null,
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
abstract class _$$GithubPrsModelPrImplCopyWith<$Res>
    implements $GithubPrsModelPrCopyWith<$Res> {
  factory _$$GithubPrsModelPrImplCopyWith(_$GithubPrsModelPrImpl value,
          $Res Function(_$GithubPrsModelPrImpl) then) =
      __$$GithubPrsModelPrImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Option<GridModelItemAction> action,
      Option<String> description,
      Option<String> imageAssetPath,
      BoxFit imageFit,
      EdgeInsets imagePadding,
      String title});
}

/// @nodoc
class __$$GithubPrsModelPrImplCopyWithImpl<$Res>
    extends _$GithubPrsModelPrCopyWithImpl<$Res, _$GithubPrsModelPrImpl>
    implements _$$GithubPrsModelPrImplCopyWith<$Res> {
  __$$GithubPrsModelPrImplCopyWithImpl(_$GithubPrsModelPrImpl _value,
      $Res Function(_$GithubPrsModelPrImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? action = null,
    Object? description = null,
    Object? imageAssetPath = null,
    Object? imageFit = null,
    Object? imagePadding = null,
    Object? title = null,
  }) {
    return _then(_$GithubPrsModelPrImpl(
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as Option<GridModelItemAction>,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as Option<String>,
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

class _$GithubPrsModelPrImpl implements _GithubPrsModelPr {
  const _$GithubPrsModelPrImpl(
      {required this.action,
      this.description = const None(),
      this.imageAssetPath = const None(),
      this.imageFit = BoxFit.cover,
      this.imagePadding = const EdgeInsets.all(0),
      required this.title});

  @override
  final Option<GridModelItemAction> action;
  @override
  @JsonKey()
  final Option<String> description;
  @override
  @JsonKey()
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
    return 'GithubPrsModelPr(action: $action, description: $description, imageAssetPath: $imageAssetPath, imageFit: $imageFit, imagePadding: $imagePadding, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GithubPrsModelPrImpl &&
            (identical(other.action, action) || other.action == action) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.imageAssetPath, imageAssetPath) ||
                other.imageAssetPath == imageAssetPath) &&
            (identical(other.imageFit, imageFit) ||
                other.imageFit == imageFit) &&
            (identical(other.imagePadding, imagePadding) ||
                other.imagePadding == imagePadding) &&
            (identical(other.title, title) || other.title == title));
  }

  @override
  int get hashCode => Object.hash(runtimeType, action, description,
      imageAssetPath, imageFit, imagePadding, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GithubPrsModelPrImplCopyWith<_$GithubPrsModelPrImpl> get copyWith =>
      __$$GithubPrsModelPrImplCopyWithImpl<_$GithubPrsModelPrImpl>(
          this, _$identity);
}

abstract class _GithubPrsModelPr implements GithubPrsModelPr {
  const factory _GithubPrsModelPr(
      {required final Option<GridModelItemAction> action,
      final Option<String> description,
      final Option<String> imageAssetPath,
      final BoxFit imageFit,
      final EdgeInsets imagePadding,
      required final String title}) = _$GithubPrsModelPrImpl;

  @override
  Option<GridModelItemAction> get action;
  @override
  Option<String> get description;
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
  _$$GithubPrsModelPrImplCopyWith<_$GithubPrsModelPrImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
