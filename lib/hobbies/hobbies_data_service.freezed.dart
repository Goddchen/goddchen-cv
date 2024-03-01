// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hobbies_data_service.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HobbiesDataServiceHobby {
  HobbiesDataServiceHobbyAction get action =>
      throw _privateConstructorUsedError;
  Option<String> get imageAssetPath => throw _privateConstructorUsedError;
  BoxFit get imageFit => throw _privateConstructorUsedError;
  EdgeInsets get imagePadding => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HobbiesDataServiceHobbyCopyWith<HobbiesDataServiceHobby> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HobbiesDataServiceHobbyCopyWith<$Res> {
  factory $HobbiesDataServiceHobbyCopyWith(HobbiesDataServiceHobby value,
          $Res Function(HobbiesDataServiceHobby) then) =
      _$HobbiesDataServiceHobbyCopyWithImpl<$Res, HobbiesDataServiceHobby>;
  @useResult
  $Res call(
      {HobbiesDataServiceHobbyAction action,
      Option<String> imageAssetPath,
      BoxFit imageFit,
      EdgeInsets imagePadding,
      String title});

  $HobbiesDataServiceHobbyActionCopyWith<$Res> get action;
}

/// @nodoc
class _$HobbiesDataServiceHobbyCopyWithImpl<$Res,
        $Val extends HobbiesDataServiceHobby>
    implements $HobbiesDataServiceHobbyCopyWith<$Res> {
  _$HobbiesDataServiceHobbyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? action = null,
    Object? imageAssetPath = null,
    Object? imageFit = null,
    Object? imagePadding = null,
    Object? title = null,
  }) {
    return _then(_value.copyWith(
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as HobbiesDataServiceHobbyAction,
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

  @override
  @pragma('vm:prefer-inline')
  $HobbiesDataServiceHobbyActionCopyWith<$Res> get action {
    return $HobbiesDataServiceHobbyActionCopyWith<$Res>(_value.action, (value) {
      return _then(_value.copyWith(action: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HobbiesDataServiceHobbyImplCopyWith<$Res>
    implements $HobbiesDataServiceHobbyCopyWith<$Res> {
  factory _$$HobbiesDataServiceHobbyImplCopyWith(
          _$HobbiesDataServiceHobbyImpl value,
          $Res Function(_$HobbiesDataServiceHobbyImpl) then) =
      __$$HobbiesDataServiceHobbyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {HobbiesDataServiceHobbyAction action,
      Option<String> imageAssetPath,
      BoxFit imageFit,
      EdgeInsets imagePadding,
      String title});

  @override
  $HobbiesDataServiceHobbyActionCopyWith<$Res> get action;
}

/// @nodoc
class __$$HobbiesDataServiceHobbyImplCopyWithImpl<$Res>
    extends _$HobbiesDataServiceHobbyCopyWithImpl<$Res,
        _$HobbiesDataServiceHobbyImpl>
    implements _$$HobbiesDataServiceHobbyImplCopyWith<$Res> {
  __$$HobbiesDataServiceHobbyImplCopyWithImpl(
      _$HobbiesDataServiceHobbyImpl _value,
      $Res Function(_$HobbiesDataServiceHobbyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? action = null,
    Object? imageAssetPath = null,
    Object? imageFit = null,
    Object? imagePadding = null,
    Object? title = null,
  }) {
    return _then(_$HobbiesDataServiceHobbyImpl(
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as HobbiesDataServiceHobbyAction,
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

class _$HobbiesDataServiceHobbyImpl implements _HobbiesDataServiceHobby {
  const _$HobbiesDataServiceHobbyImpl(
      {required this.action,
      this.imageAssetPath = const None(),
      this.imageFit = BoxFit.cover,
      this.imagePadding = const EdgeInsets.all(0),
      required this.title});

  @override
  final HobbiesDataServiceHobbyAction action;
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
    return 'HobbiesDataServiceHobby(action: $action, imageAssetPath: $imageAssetPath, imageFit: $imageFit, imagePadding: $imagePadding, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HobbiesDataServiceHobbyImpl &&
            (identical(other.action, action) || other.action == action) &&
            (identical(other.imageAssetPath, imageAssetPath) ||
                other.imageAssetPath == imageAssetPath) &&
            (identical(other.imageFit, imageFit) ||
                other.imageFit == imageFit) &&
            (identical(other.imagePadding, imagePadding) ||
                other.imagePadding == imagePadding) &&
            (identical(other.title, title) || other.title == title));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, action, imageAssetPath, imageFit, imagePadding, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HobbiesDataServiceHobbyImplCopyWith<_$HobbiesDataServiceHobbyImpl>
      get copyWith => __$$HobbiesDataServiceHobbyImplCopyWithImpl<
          _$HobbiesDataServiceHobbyImpl>(this, _$identity);
}

abstract class _HobbiesDataServiceHobby implements HobbiesDataServiceHobby {
  const factory _HobbiesDataServiceHobby(
      {required final HobbiesDataServiceHobbyAction action,
      final Option<String> imageAssetPath,
      final BoxFit imageFit,
      final EdgeInsets imagePadding,
      required final String title}) = _$HobbiesDataServiceHobbyImpl;

  @override
  HobbiesDataServiceHobbyAction get action;
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
  _$$HobbiesDataServiceHobbyImplCopyWith<_$HobbiesDataServiceHobbyImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HobbiesDataServiceHobbyAction {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Uri link) link,
    required TResult Function(Uri route) route,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Uri link)? link,
    TResult? Function(Uri route)? route,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Uri link)? link,
    TResult Function(Uri route)? route,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HobbiesDataServiceHobbyActionLink value) link,
    required TResult Function(HobbiesDataServiceHobbyActionRoute value) route,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HobbiesDataServiceHobbyActionLink value)? link,
    TResult? Function(HobbiesDataServiceHobbyActionRoute value)? route,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HobbiesDataServiceHobbyActionLink value)? link,
    TResult Function(HobbiesDataServiceHobbyActionRoute value)? route,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HobbiesDataServiceHobbyActionCopyWith<$Res> {
  factory $HobbiesDataServiceHobbyActionCopyWith(
          HobbiesDataServiceHobbyAction value,
          $Res Function(HobbiesDataServiceHobbyAction) then) =
      _$HobbiesDataServiceHobbyActionCopyWithImpl<$Res,
          HobbiesDataServiceHobbyAction>;
}

/// @nodoc
class _$HobbiesDataServiceHobbyActionCopyWithImpl<$Res,
        $Val extends HobbiesDataServiceHobbyAction>
    implements $HobbiesDataServiceHobbyActionCopyWith<$Res> {
  _$HobbiesDataServiceHobbyActionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$HobbiesDataServiceHobbyActionLinkImplCopyWith<$Res> {
  factory _$$HobbiesDataServiceHobbyActionLinkImplCopyWith(
          _$HobbiesDataServiceHobbyActionLinkImpl value,
          $Res Function(_$HobbiesDataServiceHobbyActionLinkImpl) then) =
      __$$HobbiesDataServiceHobbyActionLinkImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Uri link});
}

/// @nodoc
class __$$HobbiesDataServiceHobbyActionLinkImplCopyWithImpl<$Res>
    extends _$HobbiesDataServiceHobbyActionCopyWithImpl<$Res,
        _$HobbiesDataServiceHobbyActionLinkImpl>
    implements _$$HobbiesDataServiceHobbyActionLinkImplCopyWith<$Res> {
  __$$HobbiesDataServiceHobbyActionLinkImplCopyWithImpl(
      _$HobbiesDataServiceHobbyActionLinkImpl _value,
      $Res Function(_$HobbiesDataServiceHobbyActionLinkImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? link = null,
  }) {
    return _then(_$HobbiesDataServiceHobbyActionLinkImpl(
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as Uri,
    ));
  }
}

/// @nodoc

class _$HobbiesDataServiceHobbyActionLinkImpl
    implements HobbiesDataServiceHobbyActionLink {
  const _$HobbiesDataServiceHobbyActionLinkImpl({required this.link});

  @override
  final Uri link;

  @override
  String toString() {
    return 'HobbiesDataServiceHobbyAction.link(link: $link)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HobbiesDataServiceHobbyActionLinkImpl &&
            (identical(other.link, link) || other.link == link));
  }

  @override
  int get hashCode => Object.hash(runtimeType, link);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HobbiesDataServiceHobbyActionLinkImplCopyWith<
          _$HobbiesDataServiceHobbyActionLinkImpl>
      get copyWith => __$$HobbiesDataServiceHobbyActionLinkImplCopyWithImpl<
          _$HobbiesDataServiceHobbyActionLinkImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Uri link) link,
    required TResult Function(Uri route) route,
  }) {
    return link(this.link);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Uri link)? link,
    TResult? Function(Uri route)? route,
  }) {
    return link?.call(this.link);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Uri link)? link,
    TResult Function(Uri route)? route,
    required TResult orElse(),
  }) {
    if (link != null) {
      return link(this.link);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HobbiesDataServiceHobbyActionLink value) link,
    required TResult Function(HobbiesDataServiceHobbyActionRoute value) route,
  }) {
    return link(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HobbiesDataServiceHobbyActionLink value)? link,
    TResult? Function(HobbiesDataServiceHobbyActionRoute value)? route,
  }) {
    return link?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HobbiesDataServiceHobbyActionLink value)? link,
    TResult Function(HobbiesDataServiceHobbyActionRoute value)? route,
    required TResult orElse(),
  }) {
    if (link != null) {
      return link(this);
    }
    return orElse();
  }
}

abstract class HobbiesDataServiceHobbyActionLink
    implements HobbiesDataServiceHobbyAction {
  const factory HobbiesDataServiceHobbyActionLink({required final Uri link}) =
      _$HobbiesDataServiceHobbyActionLinkImpl;

  Uri get link;
  @JsonKey(ignore: true)
  _$$HobbiesDataServiceHobbyActionLinkImplCopyWith<
          _$HobbiesDataServiceHobbyActionLinkImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HobbiesDataServiceHobbyActionRouteImplCopyWith<$Res> {
  factory _$$HobbiesDataServiceHobbyActionRouteImplCopyWith(
          _$HobbiesDataServiceHobbyActionRouteImpl value,
          $Res Function(_$HobbiesDataServiceHobbyActionRouteImpl) then) =
      __$$HobbiesDataServiceHobbyActionRouteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Uri route});
}

/// @nodoc
class __$$HobbiesDataServiceHobbyActionRouteImplCopyWithImpl<$Res>
    extends _$HobbiesDataServiceHobbyActionCopyWithImpl<$Res,
        _$HobbiesDataServiceHobbyActionRouteImpl>
    implements _$$HobbiesDataServiceHobbyActionRouteImplCopyWith<$Res> {
  __$$HobbiesDataServiceHobbyActionRouteImplCopyWithImpl(
      _$HobbiesDataServiceHobbyActionRouteImpl _value,
      $Res Function(_$HobbiesDataServiceHobbyActionRouteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? route = null,
  }) {
    return _then(_$HobbiesDataServiceHobbyActionRouteImpl(
      route: null == route
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as Uri,
    ));
  }
}

/// @nodoc

class _$HobbiesDataServiceHobbyActionRouteImpl
    implements HobbiesDataServiceHobbyActionRoute {
  const _$HobbiesDataServiceHobbyActionRouteImpl({required this.route});

  @override
  final Uri route;

  @override
  String toString() {
    return 'HobbiesDataServiceHobbyAction.route(route: $route)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HobbiesDataServiceHobbyActionRouteImpl &&
            (identical(other.route, route) || other.route == route));
  }

  @override
  int get hashCode => Object.hash(runtimeType, route);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HobbiesDataServiceHobbyActionRouteImplCopyWith<
          _$HobbiesDataServiceHobbyActionRouteImpl>
      get copyWith => __$$HobbiesDataServiceHobbyActionRouteImplCopyWithImpl<
          _$HobbiesDataServiceHobbyActionRouteImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Uri link) link,
    required TResult Function(Uri route) route,
  }) {
    return route(this.route);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Uri link)? link,
    TResult? Function(Uri route)? route,
  }) {
    return route?.call(this.route);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Uri link)? link,
    TResult Function(Uri route)? route,
    required TResult orElse(),
  }) {
    if (route != null) {
      return route(this.route);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HobbiesDataServiceHobbyActionLink value) link,
    required TResult Function(HobbiesDataServiceHobbyActionRoute value) route,
  }) {
    return route(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HobbiesDataServiceHobbyActionLink value)? link,
    TResult? Function(HobbiesDataServiceHobbyActionRoute value)? route,
  }) {
    return route?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HobbiesDataServiceHobbyActionLink value)? link,
    TResult Function(HobbiesDataServiceHobbyActionRoute value)? route,
    required TResult orElse(),
  }) {
    if (route != null) {
      return route(this);
    }
    return orElse();
  }
}

abstract class HobbiesDataServiceHobbyActionRoute
    implements HobbiesDataServiceHobbyAction {
  const factory HobbiesDataServiceHobbyActionRoute({required final Uri route}) =
      _$HobbiesDataServiceHobbyActionRouteImpl;

  Uri get route;
  @JsonKey(ignore: true)
  _$$HobbiesDataServiceHobbyActionRouteImplCopyWith<
          _$HobbiesDataServiceHobbyActionRouteImpl>
      get copyWith => throw _privateConstructorUsedError;
}
