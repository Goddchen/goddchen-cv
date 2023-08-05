// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'github_prs_github_service.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GithubPrsGithubServicePr {
  int get number => throw _privateConstructorUsedError;
  String get owner => throw _privateConstructorUsedError;
  String get repo => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GithubPrsGithubServicePrCopyWith<GithubPrsGithubServicePr> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GithubPrsGithubServicePrCopyWith<$Res> {
  factory $GithubPrsGithubServicePrCopyWith(GithubPrsGithubServicePr value,
          $Res Function(GithubPrsGithubServicePr) then) =
      _$GithubPrsGithubServicePrCopyWithImpl<$Res, GithubPrsGithubServicePr>;
  @useResult
  $Res call({int number, String owner, String repo});
}

/// @nodoc
class _$GithubPrsGithubServicePrCopyWithImpl<$Res,
        $Val extends GithubPrsGithubServicePr>
    implements $GithubPrsGithubServicePrCopyWith<$Res> {
  _$GithubPrsGithubServicePrCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? owner = null,
    Object? repo = null,
  }) {
    return _then(_value.copyWith(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as String,
      repo: null == repo
          ? _value.repo
          : repo // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GithubPrsGithubServicePrCopyWith<$Res>
    implements $GithubPrsGithubServicePrCopyWith<$Res> {
  factory _$$_GithubPrsGithubServicePrCopyWith(
          _$_GithubPrsGithubServicePr value,
          $Res Function(_$_GithubPrsGithubServicePr) then) =
      __$$_GithubPrsGithubServicePrCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int number, String owner, String repo});
}

/// @nodoc
class __$$_GithubPrsGithubServicePrCopyWithImpl<$Res>
    extends _$GithubPrsGithubServicePrCopyWithImpl<$Res,
        _$_GithubPrsGithubServicePr>
    implements _$$_GithubPrsGithubServicePrCopyWith<$Res> {
  __$$_GithubPrsGithubServicePrCopyWithImpl(_$_GithubPrsGithubServicePr _value,
      $Res Function(_$_GithubPrsGithubServicePr) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? owner = null,
    Object? repo = null,
  }) {
    return _then(_$_GithubPrsGithubServicePr(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as String,
      repo: null == repo
          ? _value.repo
          : repo // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GithubPrsGithubServicePr implements _GithubPrsGithubServicePr {
  const _$_GithubPrsGithubServicePr(
      {required this.number, required this.owner, required this.repo});

  @override
  final int number;
  @override
  final String owner;
  @override
  final String repo;

  @override
  String toString() {
    return 'GithubPrsGithubServicePr(number: $number, owner: $owner, repo: $repo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GithubPrsGithubServicePr &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.owner, owner) || other.owner == owner) &&
            (identical(other.repo, repo) || other.repo == repo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, number, owner, repo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GithubPrsGithubServicePrCopyWith<_$_GithubPrsGithubServicePr>
      get copyWith => __$$_GithubPrsGithubServicePrCopyWithImpl<
          _$_GithubPrsGithubServicePr>(this, _$identity);
}

abstract class _GithubPrsGithubServicePr implements GithubPrsGithubServicePr {
  const factory _GithubPrsGithubServicePr(
      {required final int number,
      required final String owner,
      required final String repo}) = _$_GithubPrsGithubServicePr;

  @override
  int get number;
  @override
  String get owner;
  @override
  String get repo;
  @override
  @JsonKey(ignore: true)
  _$$_GithubPrsGithubServicePrCopyWith<_$_GithubPrsGithubServicePr>
      get copyWith => throw _privateConstructorUsedError;
}
