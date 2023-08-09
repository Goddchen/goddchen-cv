import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:goddchen_cv/hobbies/hobbies_controller_implemenation.dart';
import 'package:goddchen_cv/hobbies/hobbies_data_service.dart';
import 'package:goddchen_cv/hobbies/hobbies_model.dart';
import 'package:goddchen_cv/hobbies/hobbies_navigation_service.dart';
import 'package:mockito/mockito.dart';

import '../mocks.mocks.dart';

void main() {
  late HobbiesDataService dataService;
  late HobbiesNavigationService navigationService;

  HobbiesControllerImplementation createTestController() =>
      HobbiesControllerImplementationProvider(
        dataService: dataService,
        navigationService: navigationService,
      ).notifier.read(ProviderContainer());

  setUp(() {
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
        link: testLink,
        title: 'Test',
      ),
    );
    verify(
      navigationService.openUri(uri: testLink),
    ).called(1);
  });

  test('Loads data on init', () {
    createTestController();
    verify(dataService.hobbiesTask).called(1);
  });
}
