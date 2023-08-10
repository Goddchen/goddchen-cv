import 'dart:async';

import 'package:fpdart/fpdart.dart';
import 'package:goddchen_cv/grid/grid_model.dart';
import 'package:goddchen_cv/portfolio/portfolio_controller.dart';
import 'package:goddchen_cv/portfolio/portfolio_data_service.dart';
import 'package:goddchen_cv/portfolio/portfolio_model.dart';
import 'package:goddchen_cv/portfolio/portfolio_navigation_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'portfolio_controller_implementation.g.dart';

@riverpod
class PortfolioControllerImplementation
    extends _$PortfolioControllerImplementation implements PortfolioController {
  Task<void> get _initTask => dataService.projectsTask
      .map(
        (final List<PortfolioDataServiceProject> projects) => projects
            .map(
              (final PortfolioDataServiceProject project) =>
                  PortfolioModelProject(
                action: some(GridModelItemAction.link(link: project.link)),
                description: project.description,
                title: project.title,
              ),
            )
            .toList(),
      )
      .match(
        (final Object error) => state = state.copyWith(items: left(error)),
        (final List<PortfolioModelProject> projects) =>
            state = state.copyWith(items: right(some(projects))),
      );

  @override
  PortfolioModel build({
    required final PortfolioDataService dataService,
    required final PortfolioNavigationService navigationService,
  }) {
    scheduleMicrotask(_initTask.run);
    return PortfolioModel(items: right(none()));
  }

  @override
  void openItem({required final PortfolioModelProject item}) =>
      item.action.fold(
        () {},
        (final GridModelItemAction action) => action.when(
          link: (final Uri link) => navigationService.openLink(link: link),
          route: (final Uri route) => navigationService.goTo(route: route),
        ),
      );
}
