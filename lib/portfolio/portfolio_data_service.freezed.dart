// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'portfolio_data_service.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PortfolioDataServiceProject {
  String get description => throw _privateConstructorUsedError;
  Option<String> get imageAssetPath => throw _privateConstructorUsedError;
  BoxFit get imageFit => throw _privateConstructorUsedError;
  EdgeInsets get imagePadding => throw _privateConstructorUsedError;
  Uri get link => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PortfolioDataServiceProjectCopyWith<PortfolioDataServiceProject>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PortfolioDataServiceProjectCopyWith<$Res> {
  factory $PortfolioDataServiceProjectCopyWith(
          PortfolioDataServiceProject value,
          $Res Function(PortfolioDataServiceProject) then) =
      _$PortfolioDataServiceProjectCopyWithImpl<$Res,
          PortfolioDataServiceProject>;
  @useResult
  $Res call(
      {String description,
      Option<String> imageAssetPath,
      BoxFit imageFit,
      EdgeInsets imagePadding,
      Uri link,
      String title});
}

/// @nodoc
class _$PortfolioDataServiceProjectCopyWithImpl<$Res,
        $Val extends PortfolioDataServiceProject>
    implements $PortfolioDataServiceProjectCopyWith<$Res> {
  _$PortfolioDataServiceProjectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? imageAssetPath = null,
    Object? imageFit = null,
    Object? imagePadding = null,
    Object? link = null,
    Object? title = null,
  }) {
    return _then(_value.copyWith(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$$PortfolioDataServiceProjectImplCopyWith<$Res>
    implements $PortfolioDataServiceProjectCopyWith<$Res> {
  factory _$$PortfolioDataServiceProjectImplCopyWith(
          _$PortfolioDataServiceProjectImpl value,
          $Res Function(_$PortfolioDataServiceProjectImpl) then) =
      __$$PortfolioDataServiceProjectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String description,
      Option<String> imageAssetPath,
      BoxFit imageFit,
      EdgeInsets imagePadding,
      Uri link,
      String title});
}

/// @nodoc
class __$$PortfolioDataServiceProjectImplCopyWithImpl<$Res>
    extends _$PortfolioDataServiceProjectCopyWithImpl<$Res,
        _$PortfolioDataServiceProjectImpl>
    implements _$$PortfolioDataServiceProjectImplCopyWith<$Res> {
  __$$PortfolioDataServiceProjectImplCopyWithImpl(
      _$PortfolioDataServiceProjectImpl _value,
      $Res Function(_$PortfolioDataServiceProjectImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? imageAssetPath = null,
    Object? imageFit = null,
    Object? imagePadding = null,
    Object? link = null,
    Object? title = null,
  }) {
    return _then(_$PortfolioDataServiceProjectImpl(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
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

class _$PortfolioDataServiceProjectImpl
    implements _PortfolioDataServiceProject {
  const _$PortfolioDataServiceProjectImpl(
      {required this.description,
      this.imageAssetPath = const None(),
      this.imageFit = BoxFit.cover,
      this.imagePadding = const EdgeInsets.all(0),
      required this.link,
      required this.title});

  @override
  final String description;
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
  final Uri link;
  @override
  final String title;

  @override
  String toString() {
    return 'PortfolioDataServiceProject(description: $description, imageAssetPath: $imageAssetPath, imageFit: $imageFit, imagePadding: $imagePadding, link: $link, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PortfolioDataServiceProjectImpl &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.imageAssetPath, imageAssetPath) ||
                other.imageAssetPath == imageAssetPath) &&
            (identical(other.imageFit, imageFit) ||
                other.imageFit == imageFit) &&
            (identical(other.imagePadding, imagePadding) ||
                other.imagePadding == imagePadding) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.title, title) || other.title == title));
  }

  @override
  int get hashCode => Object.hash(runtimeType, description, imageAssetPath,
      imageFit, imagePadding, link, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PortfolioDataServiceProjectImplCopyWith<_$PortfolioDataServiceProjectImpl>
      get copyWith => __$$PortfolioDataServiceProjectImplCopyWithImpl<
          _$PortfolioDataServiceProjectImpl>(this, _$identity);
}

abstract class _PortfolioDataServiceProject
    implements PortfolioDataServiceProject {
  const factory _PortfolioDataServiceProject(
      {required final String description,
      final Option<String> imageAssetPath,
      final BoxFit imageFit,
      final EdgeInsets imagePadding,
      required final Uri link,
      required final String title}) = _$PortfolioDataServiceProjectImpl;

  @override
  String get description;
  @override
  Option<String> get imageAssetPath;
  @override
  BoxFit get imageFit;
  @override
  EdgeInsets get imagePadding;
  @override
  Uri get link;
  @override
  String get title;
  @override
  @JsonKey(ignore: true)
  _$$PortfolioDataServiceProjectImplCopyWith<_$PortfolioDataServiceProjectImpl>
      get copyWith => throw _privateConstructorUsedError;
}
