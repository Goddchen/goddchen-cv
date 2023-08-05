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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GithubPrsModel {
  Either<Object, Option<List<GithubPrsModelPr>>> get prs =>
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
  $Res call({Either<Object, Option<List<GithubPrsModelPr>>> prs});
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
    Object? prs = null,
  }) {
    return _then(_value.copyWith(
      prs: null == prs
          ? _value.prs
          : prs // ignore: cast_nullable_to_non_nullable
              as Either<Object, Option<List<GithubPrsModelPr>>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GithubPrsModelCopyWith<$Res>
    implements $GithubPrsModelCopyWith<$Res> {
  factory _$$_GithubPrsModelCopyWith(
          _$_GithubPrsModel value, $Res Function(_$_GithubPrsModel) then) =
      __$$_GithubPrsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Either<Object, Option<List<GithubPrsModelPr>>> prs});
}

/// @nodoc
class __$$_GithubPrsModelCopyWithImpl<$Res>
    extends _$GithubPrsModelCopyWithImpl<$Res, _$_GithubPrsModel>
    implements _$$_GithubPrsModelCopyWith<$Res> {
  __$$_GithubPrsModelCopyWithImpl(
      _$_GithubPrsModel _value, $Res Function(_$_GithubPrsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prs = null,
  }) {
    return _then(_$_GithubPrsModel(
      prs: null == prs
          ? _value.prs
          : prs // ignore: cast_nullable_to_non_nullable
              as Either<Object, Option<List<GithubPrsModelPr>>>,
    ));
  }
}

/// @nodoc

class _$_GithubPrsModel implements _GithubPrsModel {
  const _$_GithubPrsModel({required this.prs});

  @override
  final Either<Object, Option<List<GithubPrsModelPr>>> prs;

  @override
  String toString() {
    return 'GithubPrsModel(prs: $prs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GithubPrsModel &&
            (identical(other.prs, prs) || other.prs == prs));
  }

  @override
  int get hashCode => Object.hash(runtimeType, prs);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GithubPrsModelCopyWith<_$_GithubPrsModel> get copyWith =>
      __$$_GithubPrsModelCopyWithImpl<_$_GithubPrsModel>(this, _$identity);
}

abstract class _GithubPrsModel implements GithubPrsModel {
  const factory _GithubPrsModel(
          {required final Either<Object, Option<List<GithubPrsModelPr>>> prs}) =
      _$_GithubPrsModel;

  @override
  Either<Object, Option<List<GithubPrsModelPr>>> get prs;
  @override
  @JsonKey(ignore: true)
  _$$_GithubPrsModelCopyWith<_$_GithubPrsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GithubPrsModelPr {
  int get number => throw _privateConstructorUsedError;
  String get owner => throw _privateConstructorUsedError;
  String get repo => throw _privateConstructorUsedError;

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
  $Res call({int number, String owner, String repo});
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
abstract class _$$_GithubPrsModelPrCopyWith<$Res>
    implements $GithubPrsModelPrCopyWith<$Res> {
  factory _$$_GithubPrsModelPrCopyWith(
          _$_GithubPrsModelPr value, $Res Function(_$_GithubPrsModelPr) then) =
      __$$_GithubPrsModelPrCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int number, String owner, String repo});
}

/// @nodoc
class __$$_GithubPrsModelPrCopyWithImpl<$Res>
    extends _$GithubPrsModelPrCopyWithImpl<$Res, _$_GithubPrsModelPr>
    implements _$$_GithubPrsModelPrCopyWith<$Res> {
  __$$_GithubPrsModelPrCopyWithImpl(
      _$_GithubPrsModelPr _value, $Res Function(_$_GithubPrsModelPr) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? owner = null,
    Object? repo = null,
  }) {
    return _then(_$_GithubPrsModelPr(
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

class _$_GithubPrsModelPr implements _GithubPrsModelPr {
  const _$_GithubPrsModelPr(
      {required this.number, required this.owner, required this.repo});

  @override
  final int number;
  @override
  final String owner;
  @override
  final String repo;

  @override
  String toString() {
    return 'GithubPrsModelPr(number: $number, owner: $owner, repo: $repo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GithubPrsModelPr &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.owner, owner) || other.owner == owner) &&
            (identical(other.repo, repo) || other.repo == repo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, number, owner, repo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GithubPrsModelPrCopyWith<_$_GithubPrsModelPr> get copyWith =>
      __$$_GithubPrsModelPrCopyWithImpl<_$_GithubPrsModelPr>(this, _$identity);
}

abstract class _GithubPrsModelPr implements GithubPrsModelPr {
  const factory _GithubPrsModelPr(
      {required final int number,
      required final String owner,
      required final String repo}) = _$_GithubPrsModelPr;

  @override
  int get number;
  @override
  String get owner;
  @override
  String get repo;
  @override
  @JsonKey(ignore: true)
  _$$_GithubPrsModelPrCopyWith<_$_GithubPrsModelPr> get copyWith =>
      throw _privateConstructorUsedError;
}
