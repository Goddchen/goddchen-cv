import 'package:causality/causality.dart';
import 'package:fpdart/fpdart.dart';
import 'package:goddchen_cv/grid/grid_model.dart';
import 'package:goddchen_cv/main.dart';
import 'package:goddchen_cv/portfolio/portfolio_controller.dart';
import 'package:goddchen_cv/portfolio/portfolio_data_service.dart';
import 'package:goddchen_cv/portfolio/portfolio_model.dart';
import 'package:goddchen_cv/portfolio/portfolio_navigation_service.dart';

class LoadPortfolioCause extends Cause {}

class OpenPortfolioCause extends Cause {
  final PortfolioModelProject project;

  OpenPortfolioCause(this.project);
}

class PortfolioControllerImplementation implements PortfolioController {
  final PortfolioDataService _dataService;
  final PortfolioNavigationService _navigationService;

  late final Effect _loadPortfolioEffect = Effect((final _) async {
    PortfolioModelUpdatedCause(PortfolioModel(items: right(none())))
        .emit(universe: causalityUniverse);
    return <Cause>[
      await _dataService.projectsTask
          .map(
            (final List<PortfolioDataServiceProject> projects) => projects
                .map(
                  (final PortfolioDataServiceProject project) =>
                      PortfolioModelProject(
                    action: some(GridModelItemAction.link(link: project.link)),
                    description: some(project.description),
                    imageAssetPath: project.imageAssetPath,
                    imageFit: project.imageFit,
                    imagePadding: project.imagePadding,
                    title: project.title,
                  ),
                )
                .toList(),
          )
          .match(
            (final Object error) =>
                PortfolioModelUpdatedCause(PortfolioModel(items: left(error))),
            (final List<PortfolioModelProject> projects) =>
                PortfolioModelUpdatedCause(
              PortfolioModel(items: right(some(projects))),
            ),
          )
          .run(),
    ];
  });

  late final Effect _openProjectEffect = Effect((final Cause cause) {
    if (cause case final OpenPortfolioCause _) {
      openItem(item: cause.project);
    }
    return <Cause>[];
  });

  PortfolioControllerImplementation({
    required final PortfolioDataService dataService,
    required final PortfolioNavigationService navigationService,
  })  : _dataService = dataService,
        _navigationService = navigationService {
    _loadPortfolioEffect.observe(
      <Type>[
        LoadPortfolioCause,
      ],
      universe: causalityUniverse,
    );
    _openProjectEffect.observe(
      <Type>[
        OpenPortfolioCause,
      ],
      universe: causalityUniverse,
    );
  }

  @override
  void openItem({required final PortfolioModelProject item}) =>
      item.action.fold(
        () {},
        (final GridModelItemAction action) => action.when(
          link: (final Uri link) => _navigationService.openLink(link: link),
          route: (final Uri route) => _navigationService.push(route: route),
        ),
      );
}
