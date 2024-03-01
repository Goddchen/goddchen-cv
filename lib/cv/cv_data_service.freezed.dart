// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cv_data_service.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CvDataServiceItem {
  Option<String> get description => throw _privateConstructorUsedError;
  Option<DateTime> get from => throw _privateConstructorUsedError;
  Option<Uri> get link => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  Option<DateTime> get until => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CvDataServiceItemCopyWith<CvDataServiceItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CvDataServiceItemCopyWith<$Res> {
  factory $CvDataServiceItemCopyWith(
          CvDataServiceItem value, $Res Function(CvDataServiceItem) then) =
      _$CvDataServiceItemCopyWithImpl<$Res, CvDataServiceItem>;
  @useResult
  $Res call(
      {Option<String> description,
      Option<DateTime> from,
      Option<Uri> link,
      String title,
      Option<DateTime> until});
}

/// @nodoc
class _$CvDataServiceItemCopyWithImpl<$Res, $Val extends CvDataServiceItem>
    implements $CvDataServiceItemCopyWith<$Res> {
  _$CvDataServiceItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? from = null,
    Object? link = null,
    Object? title = null,
    Object? until = null,
  }) {
    return _then(_value.copyWith(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as Option<DateTime>,
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as Option<Uri>,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      until: null == until
          ? _value.until
          : until // ignore: cast_nullable_to_non_nullable
              as Option<DateTime>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CvDataServiceItemImplCopyWith<$Res>
    implements $CvDataServiceItemCopyWith<$Res> {
  factory _$$CvDataServiceItemImplCopyWith(_$CvDataServiceItemImpl value,
          $Res Function(_$CvDataServiceItemImpl) then) =
      __$$CvDataServiceItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Option<String> description,
      Option<DateTime> from,
      Option<Uri> link,
      String title,
      Option<DateTime> until});
}

/// @nodoc
class __$$CvDataServiceItemImplCopyWithImpl<$Res>
    extends _$CvDataServiceItemCopyWithImpl<$Res, _$CvDataServiceItemImpl>
    implements _$$CvDataServiceItemImplCopyWith<$Res> {
  __$$CvDataServiceItemImplCopyWithImpl(_$CvDataServiceItemImpl _value,
      $Res Function(_$CvDataServiceItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? from = null,
    Object? link = null,
    Object? title = null,
    Object? until = null,
  }) {
    return _then(_$CvDataServiceItemImpl(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as Option<DateTime>,
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as Option<Uri>,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      until: null == until
          ? _value.until
          : until // ignore: cast_nullable_to_non_nullable
              as Option<DateTime>,
    ));
  }
}

/// @nodoc

class _$CvDataServiceItemImpl implements _CvDataServiceItem {
  const _$CvDataServiceItemImpl(
      {this.description = const None(),
      this.from = const None(),
      this.link = const None(),
      required this.title,
      this.until = const None()});

  @override
  @JsonKey()
  final Option<String> description;
  @override
  @JsonKey()
  final Option<DateTime> from;
  @override
  @JsonKey()
  final Option<Uri> link;
  @override
  final String title;
  @override
  @JsonKey()
  final Option<DateTime> until;

  @override
  String toString() {
    return 'CvDataServiceItem(description: $description, from: $from, link: $link, title: $title, until: $until)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CvDataServiceItemImpl &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.until, until) || other.until == until));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, description, from, link, title, until);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CvDataServiceItemImplCopyWith<_$CvDataServiceItemImpl> get copyWith =>
      __$$CvDataServiceItemImplCopyWithImpl<_$CvDataServiceItemImpl>(
          this, _$identity);
}

abstract class _CvDataServiceItem implements CvDataServiceItem {
  const factory _CvDataServiceItem(
      {final Option<String> description,
      final Option<DateTime> from,
      final Option<Uri> link,
      required final String title,
      final Option<DateTime> until}) = _$CvDataServiceItemImpl;

  @override
  Option<String> get description;
  @override
  Option<DateTime> get from;
  @override
  Option<Uri> get link;
  @override
  String get title;
  @override
  Option<DateTime> get until;
  @override
  @JsonKey(ignore: true)
  _$$CvDataServiceItemImplCopyWith<_$CvDataServiceItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
