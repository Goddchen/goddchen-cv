// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'github_pr_github_service.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GithubPrGithubServicePrData {
  DateTime get createdAt => throw _privateConstructorUsedError;
  Uri get link => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GithubPrGithubServicePrDataCopyWith<GithubPrGithubServicePrData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GithubPrGithubServicePrDataCopyWith<$Res> {
  factory $GithubPrGithubServicePrDataCopyWith(
          GithubPrGithubServicePrData value,
          $Res Function(GithubPrGithubServicePrData) then) =
      _$GithubPrGithubServicePrDataCopyWithImpl<$Res,
          GithubPrGithubServicePrData>;
  @useResult
  $Res call({DateTime createdAt, Uri link, String title});
}

/// @nodoc
class _$GithubPrGithubServicePrDataCopyWithImpl<$Res,
        $Val extends GithubPrGithubServicePrData>
    implements $GithubPrGithubServicePrDataCopyWith<$Res> {
  _$GithubPrGithubServicePrDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = null,
    Object? link = null,
    Object? title = null,
  }) {
    return _then(_value.copyWith(
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
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
abstract class _$$_GithubPrGithubServicePrDataCopyWith<$Res>
    implements $GithubPrGithubServicePrDataCopyWith<$Res> {
  factory _$$_GithubPrGithubServicePrDataCopyWith(
          _$_GithubPrGithubServicePrData value,
          $Res Function(_$_GithubPrGithubServicePrData) then) =
      __$$_GithubPrGithubServicePrDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime createdAt, Uri link, String title});
}

/// @nodoc
class __$$_GithubPrGithubServicePrDataCopyWithImpl<$Res>
    extends _$GithubPrGithubServicePrDataCopyWithImpl<$Res,
        _$_GithubPrGithubServicePrData>
    implements _$$_GithubPrGithubServicePrDataCopyWith<$Res> {
  __$$_GithubPrGithubServicePrDataCopyWithImpl(
      _$_GithubPrGithubServicePrData _value,
      $Res Function(_$_GithubPrGithubServicePrData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = null,
    Object? link = null,
    Object? title = null,
  }) {
    return _then(_$_GithubPrGithubServicePrData(
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
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

class _$_GithubPrGithubServicePrData implements _GithubPrGithubServicePrData {
  const _$_GithubPrGithubServicePrData(
      {required this.createdAt, required this.link, required this.title});

  @override
  final DateTime createdAt;
  @override
  final Uri link;
  @override
  final String title;

  @override
  String toString() {
    return 'GithubPrGithubServicePrData(createdAt: $createdAt, link: $link, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GithubPrGithubServicePrData &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.title, title) || other.title == title));
  }

  @override
  int get hashCode => Object.hash(runtimeType, createdAt, link, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GithubPrGithubServicePrDataCopyWith<_$_GithubPrGithubServicePrData>
      get copyWith => __$$_GithubPrGithubServicePrDataCopyWithImpl<
          _$_GithubPrGithubServicePrData>(this, _$identity);
}

abstract class _GithubPrGithubServicePrData
    implements GithubPrGithubServicePrData {
  const factory _GithubPrGithubServicePrData(
      {required final DateTime createdAt,
      required final Uri link,
      required final String title}) = _$_GithubPrGithubServicePrData;

  @override
  DateTime get createdAt;
  @override
  Uri get link;
  @override
  String get title;
  @override
  @JsonKey(ignore: true)
  _$$_GithubPrGithubServicePrDataCopyWith<_$_GithubPrGithubServicePrData>
      get copyWith => throw _privateConstructorUsedError;
}
