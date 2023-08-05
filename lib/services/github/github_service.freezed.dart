// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'github_service.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GithubRestApiGetPull _$GithubRestApiGetPullFromJson(Map<String, dynamic> json) {
  return _GithubRestApiGetPull.fromJson(json);
}

/// @nodoc
mixin _$GithubRestApiGetPull {
// ignore: invalid_annotation_target
  @JsonKey(name: 'created_at')
  DateTime get createdAt =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(name: 'html_url')
  String get link => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GithubRestApiGetPullCopyWith<GithubRestApiGetPull> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GithubRestApiGetPullCopyWith<$Res> {
  factory $GithubRestApiGetPullCopyWith(GithubRestApiGetPull value,
          $Res Function(GithubRestApiGetPull) then) =
      _$GithubRestApiGetPullCopyWithImpl<$Res, GithubRestApiGetPull>;
  @useResult
  $Res call(
      {@JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'html_url') String link,
      String title});
}

/// @nodoc
class _$GithubRestApiGetPullCopyWithImpl<$Res,
        $Val extends GithubRestApiGetPull>
    implements $GithubRestApiGetPullCopyWith<$Res> {
  _$GithubRestApiGetPullCopyWithImpl(this._value, this._then);

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
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GithubRestApiGetPullCopyWith<$Res>
    implements $GithubRestApiGetPullCopyWith<$Res> {
  factory _$$_GithubRestApiGetPullCopyWith(_$_GithubRestApiGetPull value,
          $Res Function(_$_GithubRestApiGetPull) then) =
      __$$_GithubRestApiGetPullCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'html_url') String link,
      String title});
}

/// @nodoc
class __$$_GithubRestApiGetPullCopyWithImpl<$Res>
    extends _$GithubRestApiGetPullCopyWithImpl<$Res, _$_GithubRestApiGetPull>
    implements _$$_GithubRestApiGetPullCopyWith<$Res> {
  __$$_GithubRestApiGetPullCopyWithImpl(_$_GithubRestApiGetPull _value,
      $Res Function(_$_GithubRestApiGetPull) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = null,
    Object? link = null,
    Object? title = null,
  }) {
    return _then(_$_GithubRestApiGetPull(
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GithubRestApiGetPull implements _GithubRestApiGetPull {
  const _$_GithubRestApiGetPull(
      {@JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'html_url') required this.link,
      required this.title});

  factory _$_GithubRestApiGetPull.fromJson(Map<String, dynamic> json) =>
      _$$_GithubRestApiGetPullFromJson(json);

// ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
// ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'html_url')
  final String link;
  @override
  final String title;

  @override
  String toString() {
    return 'GithubRestApiGetPull(createdAt: $createdAt, link: $link, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GithubRestApiGetPull &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, createdAt, link, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GithubRestApiGetPullCopyWith<_$_GithubRestApiGetPull> get copyWith =>
      __$$_GithubRestApiGetPullCopyWithImpl<_$_GithubRestApiGetPull>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GithubRestApiGetPullToJson(
      this,
    );
  }
}

abstract class _GithubRestApiGetPull implements GithubRestApiGetPull {
  const factory _GithubRestApiGetPull(
      {@JsonKey(name: 'created_at') required final DateTime createdAt,
      @JsonKey(name: 'html_url') required final String link,
      required final String title}) = _$_GithubRestApiGetPull;

  factory _GithubRestApiGetPull.fromJson(Map<String, dynamic> json) =
      _$_GithubRestApiGetPull.fromJson;

  @override // ignore: invalid_annotation_target
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override // ignore: invalid_annotation_target
  @JsonKey(name: 'html_url')
  String get link;
  @override
  String get title;
  @override
  @JsonKey(ignore: true)
  _$$_GithubRestApiGetPullCopyWith<_$_GithubRestApiGetPull> get copyWith =>
      throw _privateConstructorUsedError;
}

GithubServicePrConfig _$GithubServicePrConfigFromJson(
    Map<String, dynamic> json) {
  return _GithubServicePrConfig.fromJson(json);
}

/// @nodoc
mixin _$GithubServicePrConfig {
  int get number => throw _privateConstructorUsedError;
  String get owner => throw _privateConstructorUsedError;
  String get repo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GithubServicePrConfigCopyWith<GithubServicePrConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GithubServicePrConfigCopyWith<$Res> {
  factory $GithubServicePrConfigCopyWith(GithubServicePrConfig value,
          $Res Function(GithubServicePrConfig) then) =
      _$GithubServicePrConfigCopyWithImpl<$Res, GithubServicePrConfig>;
  @useResult
  $Res call({int number, String owner, String repo});
}

/// @nodoc
class _$GithubServicePrConfigCopyWithImpl<$Res,
        $Val extends GithubServicePrConfig>
    implements $GithubServicePrConfigCopyWith<$Res> {
  _$GithubServicePrConfigCopyWithImpl(this._value, this._then);

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
abstract class _$$_GithubServicePrConfigCopyWith<$Res>
    implements $GithubServicePrConfigCopyWith<$Res> {
  factory _$$_GithubServicePrConfigCopyWith(_$_GithubServicePrConfig value,
          $Res Function(_$_GithubServicePrConfig) then) =
      __$$_GithubServicePrConfigCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int number, String owner, String repo});
}

/// @nodoc
class __$$_GithubServicePrConfigCopyWithImpl<$Res>
    extends _$GithubServicePrConfigCopyWithImpl<$Res, _$_GithubServicePrConfig>
    implements _$$_GithubServicePrConfigCopyWith<$Res> {
  __$$_GithubServicePrConfigCopyWithImpl(_$_GithubServicePrConfig _value,
      $Res Function(_$_GithubServicePrConfig) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? owner = null,
    Object? repo = null,
  }) {
    return _then(_$_GithubServicePrConfig(
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
@JsonSerializable()
class _$_GithubServicePrConfig implements _GithubServicePrConfig {
  const _$_GithubServicePrConfig(
      {required this.number, required this.owner, required this.repo});

  factory _$_GithubServicePrConfig.fromJson(Map<String, dynamic> json) =>
      _$$_GithubServicePrConfigFromJson(json);

  @override
  final int number;
  @override
  final String owner;
  @override
  final String repo;

  @override
  String toString() {
    return 'GithubServicePrConfig(number: $number, owner: $owner, repo: $repo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GithubServicePrConfig &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.owner, owner) || other.owner == owner) &&
            (identical(other.repo, repo) || other.repo == repo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, number, owner, repo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GithubServicePrConfigCopyWith<_$_GithubServicePrConfig> get copyWith =>
      __$$_GithubServicePrConfigCopyWithImpl<_$_GithubServicePrConfig>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GithubServicePrConfigToJson(
      this,
    );
  }
}

abstract class _GithubServicePrConfig implements GithubServicePrConfig {
  const factory _GithubServicePrConfig(
      {required final int number,
      required final String owner,
      required final String repo}) = _$_GithubServicePrConfig;

  factory _GithubServicePrConfig.fromJson(Map<String, dynamic> json) =
      _$_GithubServicePrConfig.fromJson;

  @override
  int get number;
  @override
  String get owner;
  @override
  String get repo;
  @override
  @JsonKey(ignore: true)
  _$$_GithubServicePrConfigCopyWith<_$_GithubServicePrConfig> get copyWith =>
      throw _privateConstructorUsedError;
}
