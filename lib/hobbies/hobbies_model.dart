import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:goddchen_cv/common.dart';
import 'package:fpdart/fpdart.dart';

part 'hobbies_model.freezed.dart';

@freezed
class HobbiesModel with _$HobbiesModel {
  const factory HobbiesModel({
    required final AsyncResult<List<HobbiesModelHobby>> hobbies,
  }) = _HobbiesModel;
}

@freezed
class HobbiesModelHobby with _$HobbiesModelHobby {
  const factory HobbiesModelHobby({
    required final Uri link,
    required final String title,
  }) = _HobbiesModelHobby;
}
