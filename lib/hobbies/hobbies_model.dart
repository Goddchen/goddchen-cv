import 'package:causality/causality.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:goddchen_cv/common.dart';
import 'package:fpdart/fpdart.dart';
import 'package:goddchen_cv/grid/grid_model.dart';

part 'hobbies_model.freezed.dart';

@freezed
class HobbiesModel with _$HobbiesModel implements GridModel<HobbiesModelHobby> {
  const factory HobbiesModel({
    required final AsyncResult<List<HobbiesModelHobby>> items,
  }) = _HobbiesModel;
}

@freezed
class HobbiesModelHobby with _$HobbiesModelHobby implements GridModelItem {
  const factory HobbiesModelHobby({
    required final Option<GridModelItemAction> action,
    @Default(None()) final Option<String> description,
    @Default(None()) final Option<String> imageAssetPath,
    @Default(BoxFit.cover) final BoxFit imageFit,
    @Default(EdgeInsets.all(0)) final EdgeInsets imagePadding,
    required final String title,
  }) = _HobbiesModelHobby;
}

class HobbiesModelUpdatedCause extends Cause {
  final HobbiesModel model;

  HobbiesModelUpdatedCause(this.model);
}

class OpenHobbyCause extends Cause {
  final HobbiesModelHobby hobby;

  OpenHobbyCause(this.hobby);
}
