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
    @Default(None()) final Option<String> imageAssetPath,
    required final String title,
  }) = _HobbiesModelHobby;
}
