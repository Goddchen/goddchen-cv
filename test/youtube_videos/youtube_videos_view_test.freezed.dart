// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'youtube_videos_view_test.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GridViewCardsVariant {
  int get expectedNumberOfCardWidgets => throw _privateConstructorUsedError;
  List<YoutubeVideosModelVideo> get inputVideos =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GridViewCardsVariantCopyWith<GridViewCardsVariant> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GridViewCardsVariantCopyWith<$Res> {
  factory $GridViewCardsVariantCopyWith(GridViewCardsVariant value,
          $Res Function(GridViewCardsVariant) then) =
      _$GridViewCardsVariantCopyWithImpl<$Res, GridViewCardsVariant>;
  @useResult
  $Res call(
      {int expectedNumberOfCardWidgets,
      List<YoutubeVideosModelVideo> inputVideos});
}

/// @nodoc
class _$GridViewCardsVariantCopyWithImpl<$Res,
        $Val extends GridViewCardsVariant>
    implements $GridViewCardsVariantCopyWith<$Res> {
  _$GridViewCardsVariantCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expectedNumberOfCardWidgets = null,
    Object? inputVideos = null,
  }) {
    return _then(_value.copyWith(
      expectedNumberOfCardWidgets: null == expectedNumberOfCardWidgets
          ? _value.expectedNumberOfCardWidgets
          : expectedNumberOfCardWidgets // ignore: cast_nullable_to_non_nullable
              as int,
      inputVideos: null == inputVideos
          ? _value.inputVideos
          : inputVideos // ignore: cast_nullable_to_non_nullable
              as List<YoutubeVideosModelVideo>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GridViewCardsVariantCopyWith<$Res>
    implements $GridViewCardsVariantCopyWith<$Res> {
  factory _$$_GridViewCardsVariantCopyWith(_$_GridViewCardsVariant value,
          $Res Function(_$_GridViewCardsVariant) then) =
      __$$_GridViewCardsVariantCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int expectedNumberOfCardWidgets,
      List<YoutubeVideosModelVideo> inputVideos});
}

/// @nodoc
class __$$_GridViewCardsVariantCopyWithImpl<$Res>
    extends _$GridViewCardsVariantCopyWithImpl<$Res, _$_GridViewCardsVariant>
    implements _$$_GridViewCardsVariantCopyWith<$Res> {
  __$$_GridViewCardsVariantCopyWithImpl(_$_GridViewCardsVariant _value,
      $Res Function(_$_GridViewCardsVariant) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expectedNumberOfCardWidgets = null,
    Object? inputVideos = null,
  }) {
    return _then(_$_GridViewCardsVariant(
      expectedNumberOfCardWidgets: null == expectedNumberOfCardWidgets
          ? _value.expectedNumberOfCardWidgets
          : expectedNumberOfCardWidgets // ignore: cast_nullable_to_non_nullable
              as int,
      inputVideos: null == inputVideos
          ? _value._inputVideos
          : inputVideos // ignore: cast_nullable_to_non_nullable
              as List<YoutubeVideosModelVideo>,
    ));
  }
}

/// @nodoc

class _$_GridViewCardsVariant implements _GridViewCardsVariant {
  const _$_GridViewCardsVariant(
      {required this.expectedNumberOfCardWidgets,
      required final List<YoutubeVideosModelVideo> inputVideos})
      : _inputVideos = inputVideos;

  @override
  final int expectedNumberOfCardWidgets;
  final List<YoutubeVideosModelVideo> _inputVideos;
  @override
  List<YoutubeVideosModelVideo> get inputVideos {
    if (_inputVideos is EqualUnmodifiableListView) return _inputVideos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_inputVideos);
  }

  @override
  String toString() {
    return 'GridViewCardsVariant(expectedNumberOfCardWidgets: $expectedNumberOfCardWidgets, inputVideos: $inputVideos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GridViewCardsVariant &&
            (identical(other.expectedNumberOfCardWidgets,
                    expectedNumberOfCardWidgets) ||
                other.expectedNumberOfCardWidgets ==
                    expectedNumberOfCardWidgets) &&
            const DeepCollectionEquality()
                .equals(other._inputVideos, _inputVideos));
  }

  @override
  int get hashCode => Object.hash(runtimeType, expectedNumberOfCardWidgets,
      const DeepCollectionEquality().hash(_inputVideos));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GridViewCardsVariantCopyWith<_$_GridViewCardsVariant> get copyWith =>
      __$$_GridViewCardsVariantCopyWithImpl<_$_GridViewCardsVariant>(
          this, _$identity);
}

abstract class _GridViewCardsVariant implements GridViewCardsVariant {
  const factory _GridViewCardsVariant(
          {required final int expectedNumberOfCardWidgets,
          required final List<YoutubeVideosModelVideo> inputVideos}) =
      _$_GridViewCardsVariant;

  @override
  int get expectedNumberOfCardWidgets;
  @override
  List<YoutubeVideosModelVideo> get inputVideos;
  @override
  @JsonKey(ignore: true)
  _$$_GridViewCardsVariantCopyWith<_$_GridViewCardsVariant> get copyWith =>
      throw _privateConstructorUsedError;
}
