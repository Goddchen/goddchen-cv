import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:goddchen_cv/cv/cv_controller_implementation.dart';
import 'package:goddchen_cv/cv/cv_data_service.dart';
import 'package:goddchen_cv/cv/cv_model.dart';
import 'package:goddchen_cv/cv/cv_navigation_service.dart';
import 'package:mockito/mockito.dart';

import '../mocks.mocks.dart';

void main() {
  late CvDataService dataService;
  late CvNavigationService navigationService;

  CvControllerImplementation createTestController() =>
      CvControllerImplementationProvider(
        dataService: dataService,
        navigationService: navigationService,
      ).notifier.read(ProviderContainer());

  setUp(() {
    dataService = MockDataServiceAggregator();
    navigationService = MockNavigationServiceAggregator();

    when(dataService.cvItemsTask).thenReturn(
      TaskEither<Object, List<CvDataServiceItem>>.of(
        <CvDataServiceItem>[],
      ),
    );
  });

  test('openItem(...) calls service', () {
    final Uri testLink = Uri.parse('test');
    createTestController().openItem(
      item: CvModelItem(
        description: some('Test'),
        from: DateTime.now().add(const Duration(days: -10)),
        until: DateTime.now(),
        link: some(testLink),
        title: 'Test',
      ),
    );
    verify(
      navigationService.openUri(uri: testLink),
    ).called(1);
  });

  test('Loads data on init', () {
    createTestController();
    verify(dataService.cvItemsTask).called(1);
  });
}
