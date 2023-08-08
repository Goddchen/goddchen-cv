import 'dart:async';

import 'package:fpdart/fpdart.dart';
import 'package:goddchen_cv/hobbies/hobbies_controller.dart';
import 'package:goddchen_cv/hobbies/hobbies_data_service.dart';
import 'package:goddchen_cv/hobbies/hobbies_model.dart';
import 'package:goddchen_cv/hobbies/hobbies_navigation_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'hobbies_controller_implemenation.g.dart';

@riverpod
class HobbiesControllerImplementation extends _$HobbiesControllerImplementation
    implements HobbiesController {
  Task<void> get _initTask => dataService.hobbiesTask
      .map(
        (final List<HobbiesDataServiceHobby> hobbies) => hobbies
            .map(
              (final HobbiesDataServiceHobby hobby) => HobbiesModelHobby(
                link: hobby.link,
                title: hobby.title,
              ),
            )
            .toList(),
      )
      .match(
        (final Object error) => state = state.copyWith(hobbies: left(error)),
        (final List<HobbiesModelHobby> hobbies) =>
            state = state.copyWith(hobbies: right(some(hobbies))),
      );

  @override
  HobbiesModel build({
    required final HobbiesDataService dataService,
    required final HobbiesNavigationService navigationService,
  }) {
    scheduleMicrotask(_initTask.run);
    return HobbiesModel(hobbies: right(none()));
  }

  @override
  void openHobby({required final HobbiesModelHobby hobby}) =>
      navigationService.openUri(uri: hobby.link);
}
