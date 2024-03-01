// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'grid_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GridModelItemAction {
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
    required TResult Function(_GridModelItemActionLink value) link,
    required TResult Function(_GridModelItemActionRoute value) route,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GridModelItemActionLink value)? link,
    TResult? Function(_GridModelItemActionRoute value)? route,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GridModelItemActionLink value)? link,
    TResult Function(_GridModelItemActionRoute value)? route,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GridModelItemActionCopyWith<$Res> {
  factory $GridModelItemActionCopyWith(
          GridModelItemAction value, $Res Function(GridModelItemAction) then) =
      _$GridModelItemActionCopyWithImpl<$Res, GridModelItemAction>;
}

/// @nodoc
class _$GridModelItemActionCopyWithImpl<$Res, $Val extends GridModelItemAction>
    implements $GridModelItemActionCopyWith<$Res> {
  _$GridModelItemActionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GridModelItemActionLinkImplCopyWith<$Res> {
  factory _$$GridModelItemActionLinkImplCopyWith(
          _$GridModelItemActionLinkImpl value,
          $Res Function(_$GridModelItemActionLinkImpl) then) =
      __$$GridModelItemActionLinkImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Uri link});
}

/// @nodoc
class __$$GridModelItemActionLinkImplCopyWithImpl<$Res>
    extends _$GridModelItemActionCopyWithImpl<$Res,
        _$GridModelItemActionLinkImpl>
    implements _$$GridModelItemActionLinkImplCopyWith<$Res> {
  __$$GridModelItemActionLinkImplCopyWithImpl(
      _$GridModelItemActionLinkImpl _value,
      $Res Function(_$GridModelItemActionLinkImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? link = null,
  }) {
    return _then(_$GridModelItemActionLinkImpl(
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as Uri,
    ));
  }
}

/// @nodoc

class _$GridModelItemActionLinkImpl implements _GridModelItemActionLink {
  const _$GridModelItemActionLinkImpl({required this.link});

  @override
  final Uri link;

  @override
  String toString() {
    return 'GridModelItemAction.link(link: $link)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GridModelItemActionLinkImpl &&
            (identical(other.link, link) || other.link == link));
  }

  @override
  int get hashCode => Object.hash(runtimeType, link);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GridModelItemActionLinkImplCopyWith<_$GridModelItemActionLinkImpl>
      get copyWith => __$$GridModelItemActionLinkImplCopyWithImpl<
          _$GridModelItemActionLinkImpl>(this, _$identity);

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
    required TResult Function(_GridModelItemActionLink value) link,
    required TResult Function(_GridModelItemActionRoute value) route,
  }) {
    return link(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GridModelItemActionLink value)? link,
    TResult? Function(_GridModelItemActionRoute value)? route,
  }) {
    return link?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GridModelItemActionLink value)? link,
    TResult Function(_GridModelItemActionRoute value)? route,
    required TResult orElse(),
  }) {
    if (link != null) {
      return link(this);
    }
    return orElse();
  }
}

abstract class _GridModelItemActionLink implements GridModelItemAction {
  const factory _GridModelItemActionLink({required final Uri link}) =
      _$GridModelItemActionLinkImpl;

  Uri get link;
  @JsonKey(ignore: true)
  _$$GridModelItemActionLinkImplCopyWith<_$GridModelItemActionLinkImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GridModelItemActionRouteImplCopyWith<$Res> {
  factory _$$GridModelItemActionRouteImplCopyWith(
          _$GridModelItemActionRouteImpl value,
          $Res Function(_$GridModelItemActionRouteImpl) then) =
      __$$GridModelItemActionRouteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Uri route});
}

/// @nodoc
class __$$GridModelItemActionRouteImplCopyWithImpl<$Res>
    extends _$GridModelItemActionCopyWithImpl<$Res,
        _$GridModelItemActionRouteImpl>
    implements _$$GridModelItemActionRouteImplCopyWith<$Res> {
  __$$GridModelItemActionRouteImplCopyWithImpl(
      _$GridModelItemActionRouteImpl _value,
      $Res Function(_$GridModelItemActionRouteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? route = null,
  }) {
    return _then(_$GridModelItemActionRouteImpl(
      route: null == route
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as Uri,
    ));
  }
}

/// @nodoc

class _$GridModelItemActionRouteImpl implements _GridModelItemActionRoute {
  const _$GridModelItemActionRouteImpl({required this.route});

  @override
  final Uri route;

  @override
  String toString() {
    return 'GridModelItemAction.route(route: $route)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GridModelItemActionRouteImpl &&
            (identical(other.route, route) || other.route == route));
  }

  @override
  int get hashCode => Object.hash(runtimeType, route);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GridModelItemActionRouteImplCopyWith<_$GridModelItemActionRouteImpl>
      get copyWith => __$$GridModelItemActionRouteImplCopyWithImpl<
          _$GridModelItemActionRouteImpl>(this, _$identity);

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
    required TResult Function(_GridModelItemActionLink value) link,
    required TResult Function(_GridModelItemActionRoute value) route,
  }) {
    return route(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GridModelItemActionLink value)? link,
    TResult? Function(_GridModelItemActionRoute value)? route,
  }) {
    return route?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GridModelItemActionLink value)? link,
    TResult Function(_GridModelItemActionRoute value)? route,
    required TResult orElse(),
  }) {
    if (route != null) {
      return route(this);
    }
    return orElse();
  }
}

abstract class _GridModelItemActionRoute implements GridModelItemAction {
  const factory _GridModelItemActionRoute({required final Uri route}) =
      _$GridModelItemActionRouteImpl;

  Uri get route;
  @JsonKey(ignore: true)
  _$$GridModelItemActionRouteImplCopyWith<_$GridModelItemActionRouteImpl>
      get copyWith => throw _privateConstructorUsedError;
}
