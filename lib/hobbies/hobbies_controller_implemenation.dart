import 'package:causality/causality.dart';
import 'package:fpdart/fpdart.dart';
import 'package:goddchen_cv/grid/grid_model.dart';
import 'package:goddchen_cv/hobbies/hobbies_controller.dart';
import 'package:goddchen_cv/hobbies/hobbies_data_service.dart';
import 'package:goddchen_cv/hobbies/hobbies_model.dart';
import 'package:goddchen_cv/hobbies/hobbies_navigation_service.dart';

class HobbiesControllerImplementation implements HobbiesController {
  final CausalityUniverse _causalityUniverse;
  final HobbiesDataService _dataService;
  final HobbiesNavigationService _navigationService;

  late final Effect _openHobbyEffect = Effect((final Cause cause) {
    if (cause case final OpenHobbyCause _) {
      openItem(item: cause.hobby);
    }
    return <Cause>[];
  });

  late final Effect _loadHobbiesEffect = Effect((final _) async {
    HobbiesModelUpdatedCause(HobbiesModel(items: right(none())))
        .emit(universe: _causalityUniverse);
    return <Cause>[
      await _dataService.hobbiesTask
          .map(
            (final List<HobbiesDataServiceHobby> hobbies) => hobbies
                .map(
                  (final HobbiesDataServiceHobby hobby) => HobbiesModelHobby(
                    action: some(
                      hobby.action.map(
                        link: (final HobbiesDataServiceHobbyActionLink link) =>
                            GridModelItemAction.link(link: link.link),
                        route:
                            (final HobbiesDataServiceHobbyActionRoute route) =>
                                GridModelItemAction.route(route: route.route),
                      ),
                    ),
                    imageAssetPath: hobby.imageAssetPath,
                    imageFit: hobby.imageFit,
                    imagePadding: hobby.imagePadding,
                    title: hobby.title,
                  ),
                )
                .toList(),
          )
          .match(
            (final Object error) =>
                HobbiesModelUpdatedCause(HobbiesModel(items: left(error))),
            (final List<HobbiesModelHobby> hobbies) => HobbiesModelUpdatedCause(
              HobbiesModel(items: right(some(hobbies))),
            ),
          )
          .run(),
    ];
  });

  HobbiesControllerImplementation({
    required final CausalityUniverse causalityUniverse,
    required final HobbiesDataService dataService,
    required final HobbiesNavigationService navigationService,
  })  : _causalityUniverse = causalityUniverse,
        _dataService = dataService,
        _navigationService = navigationService {
    _loadHobbiesEffect.observe(
      <Type>[LoadHobbiesCause],
      universe: _causalityUniverse,
    );
    _openHobbyEffect.observe(
      <Type>[OpenHobbyCause],
      universe: _causalityUniverse,
    );
  }

  @override
  void openItem({required final HobbiesModelHobby item}) => item.action.fold(
        () {},
        (final GridModelItemAction action) => action.when(
          link: (final Uri link) => _navigationService.openLink(link: link),
          route: (final Uri route) => _navigationService.push(route: route),
        ),
      );
}

class LoadHobbiesCause extends Cause {}
