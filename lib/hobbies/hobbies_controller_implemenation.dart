import 'dart:async';

import 'package:fpdart/fpdart.dart';
import 'package:goddchen_cv/grid/grid_model.dart';
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
                action: some(
                  hobby.action.map(
                    link: (final HobbiesDataServiceHobbyActionLink link) =>
                        GridModelItemAction.link(link: link.link),
                    route: (final HobbiesDataServiceHobbyActionRoute route) =>
                        GridModelItemAction.route(route: route.route),
                  ),
                ),
                title: hobby.title,
              ),
            )
            .toList(),
      )
      .match(
        (final Object error) => state = state.copyWith(items: left(error)),
        (final List<HobbiesModelHobby> hobbies) =>
            state = state.copyWith(items: right(some(hobbies))),
      );

  @override
  HobbiesModel build({
    required final HobbiesDataService dataService,
    required final HobbiesNavigationService navigationService,
  }) {
    scheduleMicrotask(_initTask.run);
    return HobbiesModel(items: right(none()));
  }

  @override
  void openItem({required final HobbiesModelHobby item}) => item.action.fold(
        () {},
        (final GridModelItemAction action) => action.when(
          link: (final Uri link) => navigationService.openLink(link: link),
          route: (final Uri route) => navigationService.push(route: route),
        ),
      );
}
