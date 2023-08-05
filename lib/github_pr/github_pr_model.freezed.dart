// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'github_pr_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GithubPrModel {
  int get number => throw _privateConstructorUsedError;
  String get owner => throw _privateConstructorUsedError;
  Either<Object, Option<GithubPrModelPr>> get pr =>
      throw _privateConstructorUsedError;
  String get repo => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GithubPrModelCopyWith<GithubPrModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GithubPrModelCopyWith<$Res> {
  factory $GithubPrModelCopyWith(
          GithubPrModel value, $Res Function(GithubPrModel) then) =
      _$GithubPrModelCopyWithImpl<$Res, GithubPrModel>;
  @useResult
  $Res call(
      {int number,
      String owner,
      Either<Object, Option<GithubPrModelPr>> pr,
      String repo});
}

/// @nodoc
class _$GithubPrModelCopyWithImpl<$Res, $Val extends GithubPrModel>
    implements $GithubPrModelCopyWith<$Res> {
  _$GithubPrModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? owner = null,
    Object? pr = null,
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
      pr: null == pr
          ? _value.pr
          : pr // ignore: cast_nullable_to_non_nullable
              as Either<Object, Option<GithubPrModelPr>>,
      repo: null == repo
          ? _value.repo
          : repo // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GithubPrModelCopyWith<$Res>
    implements $GithubPrModelCopyWith<$Res> {
  factory _$$_GithubPrModelCopyWith(
          _$_GithubPrModel value, $Res Function(_$_GithubPrModel) then) =
      __$$_GithubPrModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int number,
      String owner,
      Either<Object, Option<GithubPrModelPr>> pr,
      String repo});
}

/// @nodoc
class __$$_GithubPrModelCopyWithImpl<$Res>
    extends _$GithubPrModelCopyWithImpl<$Res, _$_GithubPrModel>
    implements _$$_GithubPrModelCopyWith<$Res> {
  __$$_GithubPrModelCopyWithImpl(
      _$_GithubPrModel _value, $Res Function(_$_GithubPrModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? owner = null,
    Object? pr = null,
    Object? repo = null,
  }) {
    return _then(_$_GithubPrModel(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as String,
      pr: null == pr
          ? _value.pr
          : pr // ignore: cast_nullable_to_non_nullable
              as Either<Object, Option<GithubPrModelPr>>,
      repo: null == repo
          ? _value.repo
          : repo // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GithubPrModel implements _GithubPrModel {
  const _$_GithubPrModel(
      {required this.number,
      required this.owner,
      required this.pr,
      required this.repo});

  @override
  final int number;
  @override
  final String owner;
  @override
  final Either<Object, Option<GithubPrModelPr>> pr;
  @override
  final String repo;

  @override
  String toString() {
    return 'GithubPrModel(number: $number, owner: $owner, pr: $pr, repo: $repo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GithubPrModel &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.owner, owner) || other.owner == owner) &&
            (identical(other.pr, pr) || other.pr == pr) &&
            (identical(other.repo, repo) || other.repo == repo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, number, owner, pr, repo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GithubPrModelCopyWith<_$_GithubPrModel> get copyWith =>
      __$$_GithubPrModelCopyWithImpl<_$_GithubPrModel>(this, _$identity);
}

abstract class _GithubPrModel implements GithubPrModel {
  const factory _GithubPrModel(
      {required final int number,
      required final String owner,
      required final Either<Object, Option<GithubPrModelPr>> pr,
      required final String repo}) = _$_GithubPrModel;

  @override
  int get number;
  @override
  String get owner;
  @override
  Either<Object, Option<GithubPrModelPr>> get pr;
  @override
  String get repo;
  @override
  @JsonKey(ignore: true)
  _$$_GithubPrModelCopyWith<_$_GithubPrModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GithubPrModelPr {
  DateTime get createdAt => throw _privateConstructorUsedError;
  Uri get link => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GithubPrModelPrCopyWith<GithubPrModelPr> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GithubPrModelPrCopyWith<$Res> {
  factory $GithubPrModelPrCopyWith(
          GithubPrModelPr value, $Res Function(GithubPrModelPr) then) =
      _$GithubPrModelPrCopyWithImpl<$Res, GithubPrModelPr>;
  @useResult
  $Res call({DateTime createdAt, Uri link, String title});
}

/// @nodoc
class _$GithubPrModelPrCopyWithImpl<$Res, $Val extends GithubPrModelPr>
    implements $GithubPrModelPrCopyWith<$Res> {
  _$GithubPrModelPrCopyWithImpl(this._value, this._then);

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
abstract class _$$_GithubPrModelPrCopyWith<$Res>
    implements $GithubPrModelPrCopyWith<$Res> {
  factory _$$_GithubPrModelPrCopyWith(
          _$_GithubPrModelPr value, $Res Function(_$_GithubPrModelPr) then) =
      __$$_GithubPrModelPrCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime createdAt, Uri link, String title});
}

/// @nodoc
class __$$_GithubPrModelPrCopyWithImpl<$Res>
    extends _$GithubPrModelPrCopyWithImpl<$Res, _$_GithubPrModelPr>
    implements _$$_GithubPrModelPrCopyWith<$Res> {
  __$$_GithubPrModelPrCopyWithImpl(
      _$_GithubPrModelPr _value, $Res Function(_$_GithubPrModelPr) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = null,
    Object? link = null,
    Object? title = null,
  }) {
    return _then(_$_GithubPrModelPr(
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

class _$_GithubPrModelPr implements _GithubPrModelPr {
  const _$_GithubPrModelPr(
      {required this.createdAt, required this.link, required this.title});

  @override
  final DateTime createdAt;
  @override
  final Uri link;
  @override
  final String title;

  @override
  String toString() {
    return 'GithubPrModelPr(createdAt: $createdAt, link: $link, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GithubPrModelPr &&
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
  _$$_GithubPrModelPrCopyWith<_$_GithubPrModelPr> get copyWith =>
      __$$_GithubPrModelPrCopyWithImpl<_$_GithubPrModelPr>(this, _$identity);
}

abstract class _GithubPrModelPr implements GithubPrModelPr {
  const factory _GithubPrModelPr(
      {required final DateTime createdAt,
      required final Uri link,
      required final String title}) = _$_GithubPrModelPr;

  @override
  DateTime get createdAt;
  @override
  Uri get link;
  @override
  String get title;
  @override
  @JsonKey(ignore: true)
  _$$_GithubPrModelPrCopyWith<_$_GithubPrModelPr> get copyWith =>
      throw _privateConstructorUsedError;
}
