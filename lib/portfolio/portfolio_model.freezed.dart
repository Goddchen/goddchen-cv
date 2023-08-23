// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'portfolio_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PortfolioModel {
  Either<Object, Option<List<PortfolioModelProject>>> get items =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PortfolioModelCopyWith<PortfolioModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PortfolioModelCopyWith<$Res> {
  factory $PortfolioModelCopyWith(
          PortfolioModel value, $Res Function(PortfolioModel) then) =
      _$PortfolioModelCopyWithImpl<$Res, PortfolioModel>;
  @useResult
  $Res call({Either<Object, Option<List<PortfolioModelProject>>> items});
}

/// @nodoc
class _$PortfolioModelCopyWithImpl<$Res, $Val extends PortfolioModel>
    implements $PortfolioModelCopyWith<$Res> {
  _$PortfolioModelCopyWithImpl(this._value, this._then);

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
              as Either<Object, Option<List<PortfolioModelProject>>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PortfolioModelCopyWith<$Res>
    implements $PortfolioModelCopyWith<$Res> {
  factory _$$_PortfolioModelCopyWith(
          _$_PortfolioModel value, $Res Function(_$_PortfolioModel) then) =
      __$$_PortfolioModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Either<Object, Option<List<PortfolioModelProject>>> items});
}

/// @nodoc
class __$$_PortfolioModelCopyWithImpl<$Res>
    extends _$PortfolioModelCopyWithImpl<$Res, _$_PortfolioModel>
    implements _$$_PortfolioModelCopyWith<$Res> {
  __$$_PortfolioModelCopyWithImpl(
      _$_PortfolioModel _value, $Res Function(_$_PortfolioModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_$_PortfolioModel(
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as Either<Object, Option<List<PortfolioModelProject>>>,
    ));
  }
}

/// @nodoc

class _$_PortfolioModel implements _PortfolioModel {
  const _$_PortfolioModel({required this.items});

  @override
  final Either<Object, Option<List<PortfolioModelProject>>> items;

  @override
  String toString() {
    return 'PortfolioModel(items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PortfolioModel &&
            (identical(other.items, items) || other.items == items));
  }

  @override
  int get hashCode => Object.hash(runtimeType, items);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PortfolioModelCopyWith<_$_PortfolioModel> get copyWith =>
      __$$_PortfolioModelCopyWithImpl<_$_PortfolioModel>(this, _$identity);
}

abstract class _PortfolioModel implements PortfolioModel {
  const factory _PortfolioModel(
      {required final Either<Object, Option<List<PortfolioModelProject>>>
          items}) = _$_PortfolioModel;

  @override
  Either<Object, Option<List<PortfolioModelProject>>> get items;
  @override
  @JsonKey(ignore: true)
  _$$_PortfolioModelCopyWith<_$_PortfolioModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PortfolioModelProject {
  Option<GridModelItemAction> get action => throw _privateConstructorUsedError;
  Option<String> get description => throw _privateConstructorUsedError;
  Option<String> get imageAssetPath => throw _privateConstructorUsedError;
  BoxFit get imageFit => throw _privateConstructorUsedError;
  EdgeInsets get imagePadding => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PortfolioModelProjectCopyWith<PortfolioModelProject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PortfolioModelProjectCopyWith<$Res> {
  factory $PortfolioModelProjectCopyWith(PortfolioModelProject value,
          $Res Function(PortfolioModelProject) then) =
      _$PortfolioModelProjectCopyWithImpl<$Res, PortfolioModelProject>;
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
class _$PortfolioModelProjectCopyWithImpl<$Res,
        $Val extends PortfolioModelProject>
    implements $PortfolioModelProjectCopyWith<$Res> {
  _$PortfolioModelProjectCopyWithImpl(this._value, this._then);

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
abstract class _$$_PortfolioModelProjectCopyWith<$Res>
    implements $PortfolioModelProjectCopyWith<$Res> {
  factory _$$_PortfolioModelProjectCopyWith(_$_PortfolioModelProject value,
          $Res Function(_$_PortfolioModelProject) then) =
      __$$_PortfolioModelProjectCopyWithImpl<$Res>;
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
class __$$_PortfolioModelProjectCopyWithImpl<$Res>
    extends _$PortfolioModelProjectCopyWithImpl<$Res, _$_PortfolioModelProject>
    implements _$$_PortfolioModelProjectCopyWith<$Res> {
  __$$_PortfolioModelProjectCopyWithImpl(_$_PortfolioModelProject _value,
      $Res Function(_$_PortfolioModelProject) _then)
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
    return _then(_$_PortfolioModelProject(
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

class _$_PortfolioModelProject implements _PortfolioModelProject {
  const _$_PortfolioModelProject(
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
    return 'PortfolioModelProject(action: $action, description: $description, imageAssetPath: $imageAssetPath, imageFit: $imageFit, imagePadding: $imagePadding, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PortfolioModelProject &&
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
  _$$_PortfolioModelProjectCopyWith<_$_PortfolioModelProject> get copyWith =>
      __$$_PortfolioModelProjectCopyWithImpl<_$_PortfolioModelProject>(
          this, _$identity);
}

abstract class _PortfolioModelProject implements PortfolioModelProject {
  const factory _PortfolioModelProject(
      {required final Option<GridModelItemAction> action,
      final Option<String> description,
      final Option<String> imageAssetPath,
      final BoxFit imageFit,
      final EdgeInsets imagePadding,
      required final String title}) = _$_PortfolioModelProject;

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
  _$$_PortfolioModelProjectCopyWith<_$_PortfolioModelProject> get copyWith =>
      throw _privateConstructorUsedError;
}
