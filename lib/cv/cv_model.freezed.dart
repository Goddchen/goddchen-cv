// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cv_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CvModel {
  Either<Object, Option<List<CvModelItem>>> get items =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CvModelCopyWith<CvModel> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CvModelCopyWith<$Res> {
  factory $CvModelCopyWith(CvModel value, $Res Function(CvModel) then) =
      _$CvModelCopyWithImpl<$Res, CvModel>;
  @useResult
  $Res call({Either<Object, Option<List<CvModelItem>>> items});
}

/// @nodoc
class _$CvModelCopyWithImpl<$Res, $Val extends CvModel>
    implements $CvModelCopyWith<$Res> {
  _$CvModelCopyWithImpl(this._value, this._then);

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
              as Either<Object, Option<List<CvModelItem>>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CvModelImplCopyWith<$Res> implements $CvModelCopyWith<$Res> {
  factory _$$CvModelImplCopyWith(
          _$CvModelImpl value, $Res Function(_$CvModelImpl) then) =
      __$$CvModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Either<Object, Option<List<CvModelItem>>> items});
}

/// @nodoc
class __$$CvModelImplCopyWithImpl<$Res>
    extends _$CvModelCopyWithImpl<$Res, _$CvModelImpl>
    implements _$$CvModelImplCopyWith<$Res> {
  __$$CvModelImplCopyWithImpl(
      _$CvModelImpl _value, $Res Function(_$CvModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_$CvModelImpl(
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as Either<Object, Option<List<CvModelItem>>>,
    ));
  }
}

/// @nodoc

class _$CvModelImpl implements _CvModel {
  const _$CvModelImpl({required this.items});

  @override
  final Either<Object, Option<List<CvModelItem>>> items;

  @override
  String toString() {
    return 'CvModel(items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CvModelImpl &&
            (identical(other.items, items) || other.items == items));
  }

  @override
  int get hashCode => Object.hash(runtimeType, items);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CvModelImplCopyWith<_$CvModelImpl> get copyWith =>
      __$$CvModelImplCopyWithImpl<_$CvModelImpl>(this, _$identity);
}

abstract class _CvModel implements CvModel {
  const factory _CvModel(
          {required final Either<Object, Option<List<CvModelItem>>> items}) =
      _$CvModelImpl;

  @override
  Either<Object, Option<List<CvModelItem>>> get items;
  @override
  @JsonKey(ignore: true)
  _$$CvModelImplCopyWith<_$CvModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CvModelItem {
  Option<GridModelItemAction> get action => throw _privateConstructorUsedError;
  Option<String> get description => throw _privateConstructorUsedError;
  Option<String> get imageAssetPath => throw _privateConstructorUsedError;
  BoxFit get imageFit => throw _privateConstructorUsedError;
  EdgeInsets get imagePadding => throw _privateConstructorUsedError;
  Option<DateTime> get from => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  Option<DateTime> get until => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CvModelItemCopyWith<CvModelItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CvModelItemCopyWith<$Res> {
  factory $CvModelItemCopyWith(
          CvModelItem value, $Res Function(CvModelItem) then) =
      _$CvModelItemCopyWithImpl<$Res, CvModelItem>;
  @useResult
  $Res call(
      {Option<GridModelItemAction> action,
      Option<String> description,
      Option<String> imageAssetPath,
      BoxFit imageFit,
      EdgeInsets imagePadding,
      Option<DateTime> from,
      String title,
      Option<DateTime> until});
}

/// @nodoc
class _$CvModelItemCopyWithImpl<$Res, $Val extends CvModelItem>
    implements $CvModelItemCopyWith<$Res> {
  _$CvModelItemCopyWithImpl(this._value, this._then);

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
    Object? from = null,
    Object? title = null,
    Object? until = null,
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
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as Option<DateTime>,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      until: null == until
          ? _value.until
          : until // ignore: cast_nullable_to_non_nullable
              as Option<DateTime>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CvModelItemImplCopyWith<$Res>
    implements $CvModelItemCopyWith<$Res> {
  factory _$$CvModelItemImplCopyWith(
          _$CvModelItemImpl value, $Res Function(_$CvModelItemImpl) then) =
      __$$CvModelItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Option<GridModelItemAction> action,
      Option<String> description,
      Option<String> imageAssetPath,
      BoxFit imageFit,
      EdgeInsets imagePadding,
      Option<DateTime> from,
      String title,
      Option<DateTime> until});
}

/// @nodoc
class __$$CvModelItemImplCopyWithImpl<$Res>
    extends _$CvModelItemCopyWithImpl<$Res, _$CvModelItemImpl>
    implements _$$CvModelItemImplCopyWith<$Res> {
  __$$CvModelItemImplCopyWithImpl(
      _$CvModelItemImpl _value, $Res Function(_$CvModelItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? action = null,
    Object? description = null,
    Object? imageAssetPath = null,
    Object? imageFit = null,
    Object? imagePadding = null,
    Object? from = null,
    Object? title = null,
    Object? until = null,
  }) {
    return _then(_$CvModelItemImpl(
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
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as Option<DateTime>,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      until: null == until
          ? _value.until
          : until // ignore: cast_nullable_to_non_nullable
              as Option<DateTime>,
    ));
  }
}

/// @nodoc

class _$CvModelItemImpl implements _CvModelItem {
  const _$CvModelItemImpl(
      {this.action = const None(),
      this.description = const None(),
      this.imageAssetPath = const None(),
      this.imageFit = BoxFit.cover,
      this.imagePadding = const EdgeInsets.all(0),
      this.from = const None(),
      required this.title,
      this.until = const None()});

  @override
  @JsonKey()
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
  @JsonKey()
  final Option<DateTime> from;
  @override
  final String title;
  @override
  @JsonKey()
  final Option<DateTime> until;

  @override
  String toString() {
    return 'CvModelItem(action: $action, description: $description, imageAssetPath: $imageAssetPath, imageFit: $imageFit, imagePadding: $imagePadding, from: $from, title: $title, until: $until)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CvModelItemImpl &&
            (identical(other.action, action) || other.action == action) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.imageAssetPath, imageAssetPath) ||
                other.imageAssetPath == imageAssetPath) &&
            (identical(other.imageFit, imageFit) ||
                other.imageFit == imageFit) &&
            (identical(other.imagePadding, imagePadding) ||
                other.imagePadding == imagePadding) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.until, until) || other.until == until));
  }

  @override
  int get hashCode => Object.hash(runtimeType, action, description,
      imageAssetPath, imageFit, imagePadding, from, title, until);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CvModelItemImplCopyWith<_$CvModelItemImpl> get copyWith =>
      __$$CvModelItemImplCopyWithImpl<_$CvModelItemImpl>(this, _$identity);
}

abstract class _CvModelItem implements CvModelItem {
  const factory _CvModelItem(
      {final Option<GridModelItemAction> action,
      final Option<String> description,
      final Option<String> imageAssetPath,
      final BoxFit imageFit,
      final EdgeInsets imagePadding,
      final Option<DateTime> from,
      required final String title,
      final Option<DateTime> until}) = _$CvModelItemImpl;

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
  Option<DateTime> get from;
  @override
  String get title;
  @override
  Option<DateTime> get until;
  @override
  @JsonKey(ignore: true)
  _$$CvModelItemImplCopyWith<_$CvModelItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
