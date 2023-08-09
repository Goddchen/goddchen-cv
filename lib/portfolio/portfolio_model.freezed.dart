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
  String get description => throw _privateConstructorUsedError;
  Uri get link => throw _privateConstructorUsedError;
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
  $Res call({String description, Uri link, String title});
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
    Object? description = null,
    Object? link = null,
    Object? title = null,
  }) {
    return _then(_value.copyWith(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as Uri,
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
  $Res call({String description, Uri link, String title});
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
    Object? description = null,
    Object? link = null,
    Object? title = null,
  }) {
    return _then(_$_PortfolioModelProject(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as Uri,
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
      {required this.description, required this.link, required this.title});

  @override
  final String description;
  @override
  final Uri link;
  @override
  final String title;

  @override
  String toString() {
    return 'PortfolioModelProject(description: $description, link: $link, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PortfolioModelProject &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.title, title) || other.title == title));
  }

  @override
  int get hashCode => Object.hash(runtimeType, description, link, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PortfolioModelProjectCopyWith<_$_PortfolioModelProject> get copyWith =>
      __$$_PortfolioModelProjectCopyWithImpl<_$_PortfolioModelProject>(
          this, _$identity);
}

abstract class _PortfolioModelProject implements PortfolioModelProject {
  const factory _PortfolioModelProject(
      {required final String description,
      required final Uri link,
      required final String title}) = _$_PortfolioModelProject;

  @override
  String get description;
  @override
  Uri get link;
  @override
  String get title;
  @override
  @JsonKey(ignore: true)
  _$$_PortfolioModelProjectCopyWith<_$_PortfolioModelProject> get copyWith =>
      throw _privateConstructorUsedError;
}
