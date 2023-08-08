import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:goddchen_cv/hobbies/hobbies_model.dart';
import 'package:goddchen_cv/hobbies/hobbies_view.dart';
import 'package:mockito/mockito.dart';

import '../mocks.mocks.dart';

part 'hobbies_view_test.freezed.dart';

void main() {
  late MockHobbiesController controller;

  setUp(() {
    controller = MockHobbiesController();
  });

  Widget createTestWidget({
    final Option<HobbiesModel> modelOverride = const None(),
  }) =>
      MaterialApp(
        home: HobbiesView(
          controller: controller,
          model: modelOverride.getOrElse(
            () => HobbiesModel(
              hobbies: right(
                some(
                  <HobbiesModelHobby>[
                    HobbiesModelHobby(
                      link: Uri(),
                      title: 'Test',
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );

  final ValueVariant<GridViewCardsVariant> gridViewCardsVariants =
      ValueVariant<GridViewCardsVariant>(
    <GridViewCardsVariant>{
      const GridViewCardsVariant(
        expectedNumberOfCardWidgets: 0,
        inputHobbies: <HobbiesModelHobby>[],
      ),
      GridViewCardsVariant(
        expectedNumberOfCardWidgets: 1,
        inputHobbies: <HobbiesModelHobby>[
          HobbiesModelHobby(
            link: Uri(),
            title: 'Test',
          ),
        ],
      ),
      GridViewCardsVariant(
        expectedNumberOfCardWidgets: 2,
        inputHobbies: <HobbiesModelHobby>[
          HobbiesModelHobby(
            link: Uri(),
            title: 'Test',
          ),
          HobbiesModelHobby(
            link: Uri(),
            title: 'Test',
          ),
        ],
      ),
    },
  );

  testWidgets(
    'View display GridView with correct number of Cards',
    variant: gridViewCardsVariants,
    (final WidgetTester widgetTester) async {
      await widgetTester.pumpWidget(
        createTestWidget(
          modelOverride: some(
            HobbiesModel(
              hobbies: right(
                some(gridViewCardsVariants.currentValue!.inputHobbies),
              ),
            ),
          ),
        ),
      );

      expect(
        find.byType(Card),
        findsNWidgets(
          gridViewCardsVariants.currentValue!.expectedNumberOfCardWidgets,
        ),
      );
    },
  );

  testWidgets(
    'Tapping a card calls controller',
    (final WidgetTester widgetTester) async {
      await widgetTester.pumpWidget(createTestWidget());

      await widgetTester.tap(find.byType(Card).first);

      verify(controller.openHobby(hobby: anyNamed('hobby'))).called(1);
    },
  );
}

@freezed
class GridViewCardsVariant with _$GridViewCardsVariant {
  const factory GridViewCardsVariant({
    required final int expectedNumberOfCardWidgets,
    required final List<HobbiesModelHobby> inputHobbies,
  }) = _GridViewCardsVariant;
}
