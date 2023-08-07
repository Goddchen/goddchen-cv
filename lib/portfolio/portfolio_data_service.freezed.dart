// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'portfolio_data_service.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PortfolioDataServiceProject {
  String get description => throw _privateConstructorUsedError;
  Uri get link => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PortfolioDataServiceProjectCopyWith<PortfolioDataServiceProject>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PortfolioDataServiceProjectCopyWith<$Res> {
  factory $PortfolioDataServiceProjectCopyWith(
          PortfolioDataServiceProject value,
          $Res Function(PortfolioDataServiceProject) then) =
      _$PortfolioDataServiceProjectCopyWithImpl<$Res,
          PortfolioDataServiceProject>;
  @useResult
  $Res call({String description, Uri link, String title});
}

/// @nodoc
class _$PortfolioDataServiceProjectCopyWithImpl<$Res,
        $Val extends PortfolioDataServiceProject>
    implements $PortfolioDataServiceProjectCopyWith<$Res> {
  _$PortfolioDataServiceProjectCopyWithImpl(this._value, this._then);

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
abstract class _$$_PortfolioDataServiceProjectCopyWith<$Res>
    implements $PortfolioDataServiceProjectCopyWith<$Res> {
  factory _$$_PortfolioDataServiceProjectCopyWith(
          _$_PortfolioDataServiceProject value,
          $Res Function(_$_PortfolioDataServiceProject) then) =
      __$$_PortfolioDataServiceProjectCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String description, Uri link, String title});
}

/// @nodoc
class __$$_PortfolioDataServiceProjectCopyWithImpl<$Res>
    extends _$PortfolioDataServiceProjectCopyWithImpl<$Res,
        _$_PortfolioDataServiceProject>
    implements _$$_PortfolioDataServiceProjectCopyWith<$Res> {
  __$$_PortfolioDataServiceProjectCopyWithImpl(
      _$_PortfolioDataServiceProject _value,
      $Res Function(_$_PortfolioDataServiceProject) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? link = null,
    Object? title = null,
  }) {
    return _then(_$_PortfolioDataServiceProject(
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

class _$_PortfolioDataServiceProject implements _PortfolioDataServiceProject {
  const _$_PortfolioDataServiceProject(
      {required this.description, required this.link, required this.title});

  @override
  final String description;
  @override
  final Uri link;
  @override
  final String title;

  @override
  String toString() {
    return 'PortfolioDataServiceProject(description: $description, link: $link, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PortfolioDataServiceProject &&
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
  _$$_PortfolioDataServiceProjectCopyWith<_$_PortfolioDataServiceProject>
      get copyWith => __$$_PortfolioDataServiceProjectCopyWithImpl<
          _$_PortfolioDataServiceProject>(this, _$identity);
}

abstract class _PortfolioDataServiceProject
    implements PortfolioDataServiceProject {
  const factory _PortfolioDataServiceProject(
      {required final String description,
      required final Uri link,
      required final String title}) = _$_PortfolioDataServiceProject;

  @override
  String get description;
  @override
  Uri get link;
  @override
  String get title;
  @override
  @JsonKey(ignore: true)
  _$$_PortfolioDataServiceProjectCopyWith<_$_PortfolioDataServiceProject>
      get copyWith => throw _privateConstructorUsedError;
}
