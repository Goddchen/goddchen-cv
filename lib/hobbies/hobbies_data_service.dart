import 'package:flutter/widgets.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'hobbies_data_service.freezed.dart';

abstract interface class HobbiesDataService {
  TaskEither<Object, List<HobbiesDataServiceHobby>> get hobbiesTask;
}

@freezed
class HobbiesDataServiceHobby with _$HobbiesDataServiceHobby {
  const factory HobbiesDataServiceHobby({
    required final HobbiesDataServiceHobbyAction action,
    @Default(None()) final Option<String> imageAssetPath,
    @Default(BoxFit.cover) final BoxFit imageFit,
    @Default(EdgeInsets.all(0)) final EdgeInsets imagePadding,
    required final String title,
  }) = _HobbiesDataServiceHobby;
}

@freezed
class HobbiesDataServiceHobbyAction with _$HobbiesDataServiceHobbyAction {
  const factory HobbiesDataServiceHobbyAction.link({required final Uri link}) =
      HobbiesDataServiceHobbyActionLink;
  const factory HobbiesDataServiceHobbyAction.route({
    required final Uri route,
  }) = HobbiesDataServiceHobbyActionRoute;
}
