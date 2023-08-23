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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
abstract class _$$_GridModelItemActionLinkCopyWith<$Res> {
  factory _$$_GridModelItemActionLinkCopyWith(_$_GridModelItemActionLink value,
          $Res Function(_$_GridModelItemActionLink) then) =
      __$$_GridModelItemActionLinkCopyWithImpl<$Res>;
  @useResult
  $Res call({Uri link});
}

/// @nodoc
class __$$_GridModelItemActionLinkCopyWithImpl<$Res>
    extends _$GridModelItemActionCopyWithImpl<$Res, _$_GridModelItemActionLink>
    implements _$$_GridModelItemActionLinkCopyWith<$Res> {
  __$$_GridModelItemActionLinkCopyWithImpl(_$_GridModelItemActionLink _value,
      $Res Function(_$_GridModelItemActionLink) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? link = null,
  }) {
    return _then(_$_GridModelItemActionLink(
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as Uri,
    ));
  }
}

/// @nodoc

class _$_GridModelItemActionLink implements _GridModelItemActionLink {
  const _$_GridModelItemActionLink({required this.link});

  @override
  final Uri link;

  @override
  String toString() {
    return 'GridModelItemAction.link(link: $link)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GridModelItemActionLink &&
            (identical(other.link, link) || other.link == link));
  }

  @override
  int get hashCode => Object.hash(runtimeType, link);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GridModelItemActionLinkCopyWith<_$_GridModelItemActionLink>
      get copyWith =>
          __$$_GridModelItemActionLinkCopyWithImpl<_$_GridModelItemActionLink>(
              this, _$identity);

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
      _$_GridModelItemActionLink;

  Uri get link;
  @JsonKey(ignore: true)
  _$$_GridModelItemActionLinkCopyWith<_$_GridModelItemActionLink>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GridModelItemActionRouteCopyWith<$Res> {
  factory _$$_GridModelItemActionRouteCopyWith(
          _$_GridModelItemActionRoute value,
          $Res Function(_$_GridModelItemActionRoute) then) =
      __$$_GridModelItemActionRouteCopyWithImpl<$Res>;
  @useResult
  $Res call({Uri route});
}

/// @nodoc
class __$$_GridModelItemActionRouteCopyWithImpl<$Res>
    extends _$GridModelItemActionCopyWithImpl<$Res, _$_GridModelItemActionRoute>
    implements _$$_GridModelItemActionRouteCopyWith<$Res> {
  __$$_GridModelItemActionRouteCopyWithImpl(_$_GridModelItemActionRoute _value,
      $Res Function(_$_GridModelItemActionRoute) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? route = null,
  }) {
    return _then(_$_GridModelItemActionRoute(
      route: null == route
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as Uri,
    ));
  }
}

/// @nodoc

class _$_GridModelItemActionRoute implements _GridModelItemActionRoute {
  const _$_GridModelItemActionRoute({required this.route});

  @override
  final Uri route;

  @override
  String toString() {
    return 'GridModelItemAction.route(route: $route)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GridModelItemActionRoute &&
            (identical(other.route, route) || other.route == route));
  }

  @override
  int get hashCode => Object.hash(runtimeType, route);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GridModelItemActionRouteCopyWith<_$_GridModelItemActionRoute>
      get copyWith => __$$_GridModelItemActionRouteCopyWithImpl<
          _$_GridModelItemActionRoute>(this, _$identity);

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
      _$_GridModelItemActionRoute;

  Uri get route;
  @JsonKey(ignore: true)
  _$$_GridModelItemActionRouteCopyWith<_$_GridModelItemActionRoute>
      get copyWith => throw _privateConstructorUsedError;
}
