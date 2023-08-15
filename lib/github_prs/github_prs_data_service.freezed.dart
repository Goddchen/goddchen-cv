// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'github_prs_data_service.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GithubPrsDataServicePr {
  Uri get link => throw _privateConstructorUsedError;
  String get repo => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get user => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GithubPrsDataServicePrCopyWith<GithubPrsDataServicePr> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GithubPrsDataServicePrCopyWith<$Res> {
  factory $GithubPrsDataServicePrCopyWith(GithubPrsDataServicePr value,
          $Res Function(GithubPrsDataServicePr) then) =
      _$GithubPrsDataServicePrCopyWithImpl<$Res, GithubPrsDataServicePr>;
  @useResult
  $Res call({Uri link, String repo, String title, String user});
}

/// @nodoc
class _$GithubPrsDataServicePrCopyWithImpl<$Res,
        $Val extends GithubPrsDataServicePr>
    implements $GithubPrsDataServicePrCopyWith<$Res> {
  _$GithubPrsDataServicePrCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? link = null,
    Object? repo = null,
    Object? title = null,
    Object? user = null,
  }) {
    return _then(_value.copyWith(
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as Uri,
      repo: null == repo
          ? _value.repo
          : repo // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GithubPrsDataServicePrCopyWith<$Res>
    implements $GithubPrsDataServicePrCopyWith<$Res> {
  factory _$$_GithubPrsDataServicePrCopyWith(_$_GithubPrsDataServicePr value,
          $Res Function(_$_GithubPrsDataServicePr) then) =
      __$$_GithubPrsDataServicePrCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Uri link, String repo, String title, String user});
}

/// @nodoc
class __$$_GithubPrsDataServicePrCopyWithImpl<$Res>
    extends _$GithubPrsDataServicePrCopyWithImpl<$Res,
        _$_GithubPrsDataServicePr>
    implements _$$_GithubPrsDataServicePrCopyWith<$Res> {
  __$$_GithubPrsDataServicePrCopyWithImpl(_$_GithubPrsDataServicePr _value,
      $Res Function(_$_GithubPrsDataServicePr) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? link = null,
    Object? repo = null,
    Object? title = null,
    Object? user = null,
  }) {
    return _then(_$_GithubPrsDataServicePr(
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as Uri,
      repo: null == repo
          ? _value.repo
          : repo // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GithubPrsDataServicePr implements _GithubPrsDataServicePr {
  const _$_GithubPrsDataServicePr(
      {required this.link,
      required this.repo,
      required this.title,
      required this.user});

  @override
  final Uri link;
  @override
  final String repo;
  @override
  final String title;
  @override
  final String user;

  @override
  String toString() {
    return 'GithubPrsDataServicePr(link: $link, repo: $repo, title: $title, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GithubPrsDataServicePr &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.repo, repo) || other.repo == repo) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, link, repo, title, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GithubPrsDataServicePrCopyWith<_$_GithubPrsDataServicePr> get copyWith =>
      __$$_GithubPrsDataServicePrCopyWithImpl<_$_GithubPrsDataServicePr>(
          this, _$identity);
}

abstract class _GithubPrsDataServicePr implements GithubPrsDataServicePr {
  const factory _GithubPrsDataServicePr(
      {required final Uri link,
      required final String repo,
      required final String title,
      required final String user}) = _$_GithubPrsDataServicePr;

  @override
  Uri get link;
  @override
  String get repo;
  @override
  String get title;
  @override
  String get user;
  @override
  @JsonKey(ignore: true)
  _$$_GithubPrsDataServicePrCopyWith<_$_GithubPrsDataServicePr> get copyWith =>
      throw _privateConstructorUsedError;
}
