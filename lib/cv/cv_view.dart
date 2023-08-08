import 'package:flutter/material.dart';
import 'package:goddchen_cv/common.dart';
import 'package:goddchen_cv/constants.dart';
import 'package:goddchen_cv/cv/cv_controller.dart';
import 'package:goddchen_cv/cv/cv_model.dart';
import 'package:goddchen_cv/mvc/mvc_view.dart';
import 'package:goddchen_cv/widgets/section.dart';

class CvView extends MvcView<CvModel, CvController> {
  const CvView({
    super.key,
    required super.controller,
    required super.model,
  });

  @override
  Widget build(final BuildContext context) => Section(
        seedColor: cvColor,
        title: 'CV',
        child: model.items.build(
          dataBuilder: (final List<CvModelItem> data) => GridView.extent(
            childAspectRatio: gridViewChildAspectRatio,
            crossAxisSpacing: gridViewHorizontalSpacing,
            mainAxisSpacing: gridViewVerticalSpacing,
            maxCrossAxisExtent: gridViewMaxExtent,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            children: data
                .map(
                  (final CvModelItem item) => _Item(
                    controller: controller,
                    item: item,
                  ),
                )
                .toList(),
          ),
          errorBuilder: (final _) => const Center(
            child: Text('Error loading CV items'),
          ),
          loadingBuilder: () => const Center(
            child: CircularProgressIndicator(),
          ),
        ),
      );
}

class _Item extends StatelessWidget {
  final CvController _controller;
  final CvModelItem _item;

  const _Item({
    required final CvController controller,
    required final CvModelItem item,
  })  : _controller = controller,
        _item = item;

  @override
  Widget build(final BuildContext context) => Card(
        color: Theme.of(context).colorScheme.surfaceVariant,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Material(
            type: MaterialType.transparency,
            child: InkWell(
              onTap: () => _controller.openItem(item: _item),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Stack(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        _item.title,
                        style: Theme.of(context).textTheme.bodyMedium,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
}
