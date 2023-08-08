// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cv_view_test.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GridViewCardsVariant {
  int get expectedNumberOfCardWidgets => throw _privateConstructorUsedError;
  List<CvModelItem> get inputItems => throw _privateConstructorUsedError;

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
  $Res call({int expectedNumberOfCardWidgets, List<CvModelItem> inputItems});
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
    Object? inputItems = null,
  }) {
    return _then(_value.copyWith(
      expectedNumberOfCardWidgets: null == expectedNumberOfCardWidgets
          ? _value.expectedNumberOfCardWidgets
          : expectedNumberOfCardWidgets // ignore: cast_nullable_to_non_nullable
              as int,
      inputItems: null == inputItems
          ? _value.inputItems
          : inputItems // ignore: cast_nullable_to_non_nullable
              as List<CvModelItem>,
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
  $Res call({int expectedNumberOfCardWidgets, List<CvModelItem> inputItems});
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
    Object? inputItems = null,
  }) {
    return _then(_$_GridViewCardsVariant(
      expectedNumberOfCardWidgets: null == expectedNumberOfCardWidgets
          ? _value.expectedNumberOfCardWidgets
          : expectedNumberOfCardWidgets // ignore: cast_nullable_to_non_nullable
              as int,
      inputItems: null == inputItems
          ? _value._inputItems
          : inputItems // ignore: cast_nullable_to_non_nullable
              as List<CvModelItem>,
    ));
  }
}

/// @nodoc

class _$_GridViewCardsVariant implements _GridViewCardsVariant {
  const _$_GridViewCardsVariant(
      {required this.expectedNumberOfCardWidgets,
      required final List<CvModelItem> inputItems})
      : _inputItems = inputItems;

  @override
  final int expectedNumberOfCardWidgets;
  final List<CvModelItem> _inputItems;
  @override
  List<CvModelItem> get inputItems {
    if (_inputItems is EqualUnmodifiableListView) return _inputItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_inputItems);
  }

  @override
  String toString() {
    return 'GridViewCardsVariant(expectedNumberOfCardWidgets: $expectedNumberOfCardWidgets, inputItems: $inputItems)';
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
                .equals(other._inputItems, _inputItems));
  }

  @override
  int get hashCode => Object.hash(runtimeType, expectedNumberOfCardWidgets,
      const DeepCollectionEquality().hash(_inputItems));

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
      required final List<CvModelItem> inputItems}) = _$_GridViewCardsVariant;

  @override
  int get expectedNumberOfCardWidgets;
  @override
  List<CvModelItem> get inputItems;
  @override
  @JsonKey(ignore: true)
  _$$_GridViewCardsVariantCopyWith<_$_GridViewCardsVariant> get copyWith =>
      throw _privateConstructorUsedError;
}
