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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
abstract class _$$_CvModelCopyWith<$Res> implements $CvModelCopyWith<$Res> {
  factory _$$_CvModelCopyWith(
          _$_CvModel value, $Res Function(_$_CvModel) then) =
      __$$_CvModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Either<Object, Option<List<CvModelItem>>> items});
}

/// @nodoc
class __$$_CvModelCopyWithImpl<$Res>
    extends _$CvModelCopyWithImpl<$Res, _$_CvModel>
    implements _$$_CvModelCopyWith<$Res> {
  __$$_CvModelCopyWithImpl(_$_CvModel _value, $Res Function(_$_CvModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_$_CvModel(
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as Either<Object, Option<List<CvModelItem>>>,
    ));
  }
}

/// @nodoc

class _$_CvModel implements _CvModel {
  const _$_CvModel({required this.items});

  @override
  final Either<Object, Option<List<CvModelItem>>> items;

  @override
  String toString() {
    return 'CvModel(items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CvModel &&
            (identical(other.items, items) || other.items == items));
  }

  @override
  int get hashCode => Object.hash(runtimeType, items);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CvModelCopyWith<_$_CvModel> get copyWith =>
      __$$_CvModelCopyWithImpl<_$_CvModel>(this, _$identity);
}

abstract class _CvModel implements CvModel {
  const factory _CvModel(
          {required final Either<Object, Option<List<CvModelItem>>> items}) =
      _$_CvModel;

  @override
  Either<Object, Option<List<CvModelItem>>> get items;
  @override
  @JsonKey(ignore: true)
  _$$_CvModelCopyWith<_$_CvModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CvModelItem {
  Option<GridModelItemAction> get action => throw _privateConstructorUsedError;
  Option<String> get description => throw _privateConstructorUsedError;
  DateTime get from => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  DateTime get until => throw _privateConstructorUsedError;

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
      DateTime from,
      String title,
      DateTime until});
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
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as DateTime,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      until: null == until
          ? _value.until
          : until // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CvModelItemCopyWith<$Res>
    implements $CvModelItemCopyWith<$Res> {
  factory _$$_CvModelItemCopyWith(
          _$_CvModelItem value, $Res Function(_$_CvModelItem) then) =
      __$$_CvModelItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Option<GridModelItemAction> action,
      Option<String> description,
      DateTime from,
      String title,
      DateTime until});
}

/// @nodoc
class __$$_CvModelItemCopyWithImpl<$Res>
    extends _$CvModelItemCopyWithImpl<$Res, _$_CvModelItem>
    implements _$$_CvModelItemCopyWith<$Res> {
  __$$_CvModelItemCopyWithImpl(
      _$_CvModelItem _value, $Res Function(_$_CvModelItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? action = null,
    Object? description = null,
    Object? from = null,
    Object? title = null,
    Object? until = null,
  }) {
    return _then(_$_CvModelItem(
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as Option<GridModelItemAction>,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as DateTime,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      until: null == until
          ? _value.until
          : until // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_CvModelItem implements _CvModelItem {
  const _$_CvModelItem(
      {required this.action,
      required this.description,
      required this.from,
      required this.title,
      required this.until});

  @override
  final Option<GridModelItemAction> action;
  @override
  final Option<String> description;
  @override
  final DateTime from;
  @override
  final String title;
  @override
  final DateTime until;

  @override
  String toString() {
    return 'CvModelItem(action: $action, description: $description, from: $from, title: $title, until: $until)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CvModelItem &&
            (identical(other.action, action) || other.action == action) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.until, until) || other.until == until));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, action, description, from, title, until);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CvModelItemCopyWith<_$_CvModelItem> get copyWith =>
      __$$_CvModelItemCopyWithImpl<_$_CvModelItem>(this, _$identity);
}

abstract class _CvModelItem implements CvModelItem {
  const factory _CvModelItem(
      {required final Option<GridModelItemAction> action,
      required final Option<String> description,
      required final DateTime from,
      required final String title,
      required final DateTime until}) = _$_CvModelItem;

  @override
  Option<GridModelItemAction> get action;
  @override
  Option<String> get description;
  @override
  DateTime get from;
  @override
  String get title;
  @override
  DateTime get until;
  @override
  @JsonKey(ignore: true)
  _$$_CvModelItemCopyWith<_$_CvModelItem> get copyWith =>
      throw _privateConstructorUsedError;
}
