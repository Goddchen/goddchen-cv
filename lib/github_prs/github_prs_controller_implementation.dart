import 'package:causality/causality.dart';
import 'package:fpdart/fpdart.dart';
import 'package:goddchen_cv/github_prs/github_prs_controller.dart';
import 'package:goddchen_cv/github_prs/github_prs_data_service.dart';
import 'package:goddchen_cv/github_prs/github_prs_model.dart';
import 'package:goddchen_cv/github_prs/github_prs_navigation_service.dart';
import 'package:goddchen_cv/grid/grid_model.dart';
import 'package:goddchen_cv/main.dart';

class GithubPrsControllerImplementation implements GithubPrsController {
  late final Effect _loadPrsEffect = Effect((final _) async {
    GithubPrsModelUpdatedCause(GithubPrsModel(items: right(none())))
        .emit(universe: causalityUniverse);
    return <Cause>[
      await _dataService.prsTask
          .map(
            (final List<GithubPrsDataServicePr> prs) => prs
                .map(
                  (final GithubPrsDataServicePr pr) => GithubPrsModelPr(
                    action: some(GridModelItemAction.link(link: pr.link)),
                    description: some(pr.title),
                    title: '${pr.user}/${pr.repo}',
                  ),
                )
                .toList(),
          )
          .match(
            (final Object error) => GithubPrsModelUpdatedCause(
              GithubPrsModel(items: left(error)),
            ),
            (final List<GithubPrsModelPr> prs) => GithubPrsModelUpdatedCause(
              GithubPrsModel(items: right(some(prs))),
            ),
          )
          .run(),
    ];
  });

  late final Effect _openPrEffect = Effect((final Cause cause) async {
    if (cause case final OpenGithubPrCause _) {
      openItem(item: cause.pr);
    }
    return <Cause>[];
  });

  final GithubPrsDataService _dataService;
  final GithubPrsNavigationService _navigationService;

  GithubPrsControllerImplementation({
    required final GithubPrsDataService dataService,
    required final GithubPrsNavigationService navigationService,
  })  : _dataService = dataService,
        _navigationService = navigationService {
    _loadPrsEffect.observe(
      <Type>[LoadPrsCause],
      universe: causalityUniverse,
    );
    _openPrEffect.observe(
      <Type>[OpenGithubPrCause],
      universe: causalityUniverse,
    );
  }

  @override
  void openItem({required final GithubPrsModelPr item}) => item.action.fold(
        () {},
        (final GridModelItemAction action) => action.when(
          link: (final Uri link) => _navigationService.openLink(link: link),
          route: (final Uri route) => _navigationService.push(route: route),
        ),
      );
}

class LoadPrsCause extends Cause {}
