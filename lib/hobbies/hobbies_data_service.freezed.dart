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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HobbiesDataServiceHobby {
  Uri get link => throw _privateConstructorUsedError;
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
  $Res call({Uri link, String title});
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
    Object? link = null,
    Object? title = null,
  }) {
    return _then(_value.copyWith(
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
abstract class _$$_HobbiesDataServiceHobbyCopyWith<$Res>
    implements $HobbiesDataServiceHobbyCopyWith<$Res> {
  factory _$$_HobbiesDataServiceHobbyCopyWith(_$_HobbiesDataServiceHobby value,
          $Res Function(_$_HobbiesDataServiceHobby) then) =
      __$$_HobbiesDataServiceHobbyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Uri link, String title});
}

/// @nodoc
class __$$_HobbiesDataServiceHobbyCopyWithImpl<$Res>
    extends _$HobbiesDataServiceHobbyCopyWithImpl<$Res,
        _$_HobbiesDataServiceHobby>
    implements _$$_HobbiesDataServiceHobbyCopyWith<$Res> {
  __$$_HobbiesDataServiceHobbyCopyWithImpl(_$_HobbiesDataServiceHobby _value,
      $Res Function(_$_HobbiesDataServiceHobby) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? link = null,
    Object? title = null,
  }) {
    return _then(_$_HobbiesDataServiceHobby(
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

class _$_HobbiesDataServiceHobby implements _HobbiesDataServiceHobby {
  const _$_HobbiesDataServiceHobby({required this.link, required this.title});

  @override
  final Uri link;
  @override
  final String title;

  @override
  String toString() {
    return 'HobbiesDataServiceHobby(link: $link, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HobbiesDataServiceHobby &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.title, title) || other.title == title));
  }

  @override
  int get hashCode => Object.hash(runtimeType, link, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HobbiesDataServiceHobbyCopyWith<_$_HobbiesDataServiceHobby>
      get copyWith =>
          __$$_HobbiesDataServiceHobbyCopyWithImpl<_$_HobbiesDataServiceHobby>(
              this, _$identity);
}

abstract class _HobbiesDataServiceHobby implements HobbiesDataServiceHobby {
  const factory _HobbiesDataServiceHobby(
      {required final Uri link,
      required final String title}) = _$_HobbiesDataServiceHobby;

  @override
  Uri get link;
  @override
  String get title;
  @override
  @JsonKey(ignore: true)
  _$$_HobbiesDataServiceHobbyCopyWith<_$_HobbiesDataServiceHobby>
      get copyWith => throw _privateConstructorUsedError;
}
