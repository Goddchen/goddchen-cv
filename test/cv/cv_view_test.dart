import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:goddchen_cv/cv/cv_model.dart';
import 'package:goddchen_cv/cv/cv_view.dart';
import 'package:mockito/mockito.dart';

import '../mocks.mocks.dart';

part 'cv_view_test.freezed.dart';

void main() {
  late MockCvController controller;

  setUp(() {
    controller = MockCvController();
  });

  Widget createTestWidget({
    final Option<CvModel> modelOverride = const None(),
  }) =>
      MaterialApp(
        home: CvView(
          controller: controller,
          model: modelOverride.getOrElse(
            () => CvModel(
              items: right(
                some(
                  <CvModelItem>[
                    CvModelItem(
                      description: some('Test'),
                      from: DateTime.now().add(const Duration(days: -10)),
                      until: DateTime.now(),
                      link: some(Uri()),
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
        inputItems: <CvModelItem>[],
      ),
      GridViewCardsVariant(
        expectedNumberOfCardWidgets: 1,
        inputItems: <CvModelItem>[
          CvModelItem(
            description: some('Test'),
            from: DateTime.now().add(const Duration(days: -10)),
            until: DateTime.now(),
            link: some(Uri()),
            title: 'Test',
          ),
        ],
      ),
      GridViewCardsVariant(
        expectedNumberOfCardWidgets: 2,
        inputItems: <CvModelItem>[
          CvModelItem(
            description: some('Test'),
            from: DateTime.now().add(const Duration(days: -10)),
            until: DateTime.now(),
            link: some(Uri()),
            title: 'Test',
          ),
          CvModelItem(
            description: some('Test'),
            from: DateTime.now().add(const Duration(days: -10)),
            until: DateTime.now(),
            link: some(Uri()),
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
            CvModel(
              items: right(
                some(gridViewCardsVariants.currentValue!.inputItems),
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

      verify(controller.openItem(item: anyNamed('item'))).called(1);
    },
  );
}

@freezed
class GridViewCardsVariant with _$GridViewCardsVariant {
  const factory GridViewCardsVariant({
    required final int expectedNumberOfCardWidgets,
    required final List<CvModelItem> inputItems,
  }) = _GridViewCardsVariant;
}
