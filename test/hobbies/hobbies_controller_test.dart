import 'package:causality/causality.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:goddchen_cv/grid/grid_model.dart';
import 'package:goddchen_cv/hobbies/hobbies_controller_implemenation.dart';
import 'package:goddchen_cv/hobbies/hobbies_data_service.dart';
import 'package:goddchen_cv/hobbies/hobbies_model.dart';
import 'package:goddchen_cv/hobbies/hobbies_navigation_service.dart';
import 'package:mockito/mockito.dart';

import '../dummies.dart';
import '../mocks.mocks.dart';

void main() {
  late CausalityUniverse causalityUniverse;
  late HobbiesDataService dataService;
  late HobbiesNavigationService navigationService;

  HobbiesControllerImplementation createTestController() =>
      HobbiesControllerImplementation(
        causalityUniverse: causalityUniverse,
        dataService: dataService,
        navigationService: navigationService,
      );

  setUpAll(() {
    registerDummies();
  });

  setUp(() {
    causalityUniverse = CausalityUniverse();
    dataService = MockDataServiceAggregator();
    navigationService = MockNavigationServiceAggregator();

    when(dataService.hobbiesTask).thenReturn(
      TaskEither<Object, List<HobbiesDataServiceHobby>>.of(
        <HobbiesDataServiceHobby>[],
      ),
    );
  });

  test('openVideo(...) calls service', () {
    final Uri testLink = Uri.parse('test');
    createTestController().openItem(
      item: HobbiesModelHobby(
        action: some(GridModelItemAction.link(link: testLink)),
        title: 'Test',
      ),
    );
    verify(
      navigationService.openLink(link: testLink),
    ).called(1);
  });

  test('Loads data on $LoadHobbiesCause', () {
    createTestController();

    causalityUniverse.emit(LoadHobbiesCause());

    verify(dataService.hobbiesTask).called(1);
  });

  for (final Type observedCauseType in const <Type>{
    LoadHobbiesCause,
    OpenHobbyCause,
  }) {
    test(
      'Constructor registers effect(s) for $observedCauseType',
      () {
        createTestController();

        expect(
          causalityUniverse.observations,
          containsPair(observedCauseType, anything),
        );
      },
    );
  }
}
