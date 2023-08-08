import 'package:flutter/material.dart';
import 'package:goddchen_cv/common.dart';
import 'package:goddchen_cv/constants.dart';
import 'package:goddchen_cv/hobbies/hobbies_controller.dart';
import 'package:goddchen_cv/hobbies/hobbies_model.dart';
import 'package:goddchen_cv/mvc/mvc_view.dart';
import 'package:goddchen_cv/widgets/section.dart';

class HobbiesView extends MvcView<HobbiesModel, HobbiesController> {
  const HobbiesView({
    super.key,
    required super.controller,
    required super.model,
  });

  @override
  Widget build(final BuildContext context) => Section(
        seedColor: hobbiesColor,
        title: 'Hobbies',
        child: model.hobbies.build(
          dataBuilder: (final List<HobbiesModelHobby> data) => GridView.extent(
            childAspectRatio: gridViewChildAspectRatio,
            crossAxisSpacing: gridViewHorizontalSpacing,
            mainAxisSpacing: gridViewVerticalSpacing,
            maxCrossAxisExtent: gridViewMaxExtent,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            children: data
                .map(
                  (final HobbiesModelHobby hobby) => _Hobby(
                    controller: controller,
                    hobby: hobby,
                  ),
                )
                .toList(),
          ),
          errorBuilder: (final _) => const Center(
            child: Text('Error loading hobbies'),
          ),
          loadingBuilder: () =>
              const Center(child: CircularProgressIndicator()),
        ),
      );
}

class _Hobby extends StatelessWidget {
  final HobbiesController _controller;
  final HobbiesModelHobby _hobby;

  const _Hobby({
    required final HobbiesController controller,
    required final HobbiesModelHobby hobby,
  })  : _controller = controller,
        _hobby = hobby;

  @override
  Widget build(final BuildContext context) => Card(
        color: Theme.of(context).colorScheme.surfaceVariant,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Material(
          type: MaterialType.transparency,
          child: InkWell(
            customBorder: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            onTap: () => _controller.openHobby(hobby: _hobby),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Center(
                  child: Stack(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.topCenter,
                        child: Text(
                          _hobby.title,
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      );
}
