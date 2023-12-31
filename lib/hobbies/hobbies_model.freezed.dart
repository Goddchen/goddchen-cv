// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hobbies_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HobbiesModel {
  Either<Object, Option<List<HobbiesModelHobby>>> get items =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HobbiesModelCopyWith<HobbiesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HobbiesModelCopyWith<$Res> {
  factory $HobbiesModelCopyWith(
          HobbiesModel value, $Res Function(HobbiesModel) then) =
      _$HobbiesModelCopyWithImpl<$Res, HobbiesModel>;
  @useResult
  $Res call({Either<Object, Option<List<HobbiesModelHobby>>> items});
}

/// @nodoc
class _$HobbiesModelCopyWithImpl<$Res, $Val extends HobbiesModel>
    implements $HobbiesModelCopyWith<$Res> {
  _$HobbiesModelCopyWithImpl(this._value, this._then);

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
              as Either<Object, Option<List<HobbiesModelHobby>>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HobbiesModelCopyWith<$Res>
    implements $HobbiesModelCopyWith<$Res> {
  factory _$$_HobbiesModelCopyWith(
          _$_HobbiesModel value, $Res Function(_$_HobbiesModel) then) =
      __$$_HobbiesModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Either<Object, Option<List<HobbiesModelHobby>>> items});
}

/// @nodoc
class __$$_HobbiesModelCopyWithImpl<$Res>
    extends _$HobbiesModelCopyWithImpl<$Res, _$_HobbiesModel>
    implements _$$_HobbiesModelCopyWith<$Res> {
  __$$_HobbiesModelCopyWithImpl(
      _$_HobbiesModel _value, $Res Function(_$_HobbiesModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_$_HobbiesModel(
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as Either<Object, Option<List<HobbiesModelHobby>>>,
    ));
  }
}

/// @nodoc

class _$_HobbiesModel implements _HobbiesModel {
  const _$_HobbiesModel({required this.items});

  @override
  final Either<Object, Option<List<HobbiesModelHobby>>> items;

  @override
  String toString() {
    return 'HobbiesModel(items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HobbiesModel &&
            (identical(other.items, items) || other.items == items));
  }

  @override
  int get hashCode => Object.hash(runtimeType, items);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HobbiesModelCopyWith<_$_HobbiesModel> get copyWith =>
      __$$_HobbiesModelCopyWithImpl<_$_HobbiesModel>(this, _$identity);
}

abstract class _HobbiesModel implements HobbiesModel {
  const factory _HobbiesModel(
      {required final Either<Object, Option<List<HobbiesModelHobby>>>
          items}) = _$_HobbiesModel;

  @override
  Either<Object, Option<List<HobbiesModelHobby>>> get items;
  @override
  @JsonKey(ignore: true)
  _$$_HobbiesModelCopyWith<_$_HobbiesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HobbiesModelHobby {
  Option<GridModelItemAction> get action => throw _privateConstructorUsedError;
  Option<String> get description => throw _privateConstructorUsedError;
  Option<String> get imageAssetPath => throw _privateConstructorUsedError;
  BoxFit get imageFit => throw _privateConstructorUsedError;
  EdgeInsets get imagePadding => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HobbiesModelHobbyCopyWith<HobbiesModelHobby> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HobbiesModelHobbyCopyWith<$Res> {
  factory $HobbiesModelHobbyCopyWith(
          HobbiesModelHobby value, $Res Function(HobbiesModelHobby) then) =
      _$HobbiesModelHobbyCopyWithImpl<$Res, HobbiesModelHobby>;
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
class _$HobbiesModelHobbyCopyWithImpl<$Res, $Val extends HobbiesModelHobby>
    implements $HobbiesModelHobbyCopyWith<$Res> {
  _$HobbiesModelHobbyCopyWithImpl(this._value, this._then);

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
abstract class _$$_HobbiesModelHobbyCopyWith<$Res>
    implements $HobbiesModelHobbyCopyWith<$Res> {
  factory _$$_HobbiesModelHobbyCopyWith(_$_HobbiesModelHobby value,
          $Res Function(_$_HobbiesModelHobby) then) =
      __$$_HobbiesModelHobbyCopyWithImpl<$Res>;
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
class __$$_HobbiesModelHobbyCopyWithImpl<$Res>
    extends _$HobbiesModelHobbyCopyWithImpl<$Res, _$_HobbiesModelHobby>
    implements _$$_HobbiesModelHobbyCopyWith<$Res> {
  __$$_HobbiesModelHobbyCopyWithImpl(
      _$_HobbiesModelHobby _value, $Res Function(_$_HobbiesModelHobby) _then)
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
    return _then(_$_HobbiesModelHobby(
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

class _$_HobbiesModelHobby implements _HobbiesModelHobby {
  const _$_HobbiesModelHobby(
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
    return 'HobbiesModelHobby(action: $action, description: $description, imageAssetPath: $imageAssetPath, imageFit: $imageFit, imagePadding: $imagePadding, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HobbiesModelHobby &&
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
  _$$_HobbiesModelHobbyCopyWith<_$_HobbiesModelHobby> get copyWith =>
      __$$_HobbiesModelHobbyCopyWithImpl<_$_HobbiesModelHobby>(
          this, _$identity);
}

abstract class _HobbiesModelHobby implements HobbiesModelHobby {
  const factory _HobbiesModelHobby(
      {required final Option<GridModelItemAction> action,
      final Option<String> description,
      final Option<String> imageAssetPath,
      final BoxFit imageFit,
      final EdgeInsets imagePadding,
      required final String title}) = _$_HobbiesModelHobby;

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
  _$$_HobbiesModelHobbyCopyWith<_$_HobbiesModelHobby> get copyWith =>
      throw _privateConstructorUsedError;
}
