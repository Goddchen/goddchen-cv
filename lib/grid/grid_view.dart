import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';
import 'package:goddchen_cv/common.dart';
import 'package:goddchen_cv/constants.dart';
import 'package:goddchen_cv/grid/grid_controller.dart';
import 'package:goddchen_cv/grid/grid_model.dart';
import 'package:goddchen_cv/mvc/mvc_view.dart';
import 'package:goddchen_cv/widgets/section.dart';
import 'package:flutter/widgets.dart' as grid_view;

class GridView<M extends GridModel<I>, C extends GridController<GridModelItem>,
    I extends GridModelItem> extends MvcView<M, C> {
  final double _childAspectRatio;
  final Option<Widget Function(I item)> _itemBuilder;
  final double _maxExtent;
  final Color _seedColor;
  final String _title;

  GridView({
    super.key,
    final Option<double> childAspectRatio = const None(),
    required super.controller,
    final Option<Widget Function(I item)> itemBuilder = const None(),
    final Option<double> maxExtent = const None(),
    required super.model,
    required final Color seedColor,
    required final String title,
  })  : _childAspectRatio =
            childAspectRatio.getOrElse(() => gridViewChildAspectRatio),
        _itemBuilder = itemBuilder,
        _maxExtent = maxExtent.getOrElse(() => gridViewMaxExtent),
        _seedColor = seedColor,
        _title = title;

  @override
  Widget build(final BuildContext context) => Section(
        seedColor: _seedColor,
        title: _title,
        child: model.items.build(
          dataBuilder: (final List<I> data) => grid_view.GridView.extent(
            childAspectRatio: _childAspectRatio,
            crossAxisSpacing: gridViewHorizontalSpacing,
            mainAxisSpacing: gridViewVerticalSpacing,
            maxCrossAxisExtent: _maxExtent,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            children: data
                .map(
                  (final I item) => _itemBuilder.getOrElse(
                    () => (final I item) => _Item(
                          controller: controller,
                          item: item,
                        ),
                  )(item),
                )
                .toList(),
          ),
          errorBuilder: (final _) => const Center(
            child: Text('Error getting projects'),
          ),
          loadingBuilder: () =>
              const Center(child: CircularProgressIndicator()),
        ),
      );
}

class _Item extends StatelessWidget {
  final GridController<GridModelItem> _controller;
  final GridModelItem _item;

  const _Item({
    required final GridController<GridModelItem> controller,
    required final GridModelItem item,
  })  : _controller = controller,
        _item = item;

  @override
  Widget build(final BuildContext context) => _item.imageAssetPath.fold(
        () => Card(
          color: Theme.of(context).colorScheme.surfaceVariant,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          child: Material(
            type: MaterialType.transparency,
            child: InkWell(
              customBorder: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              onTap: () => _controller.openItem(item: _item),
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
                            _item.title,
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                        ),
                        ..._item.description.fold(
                          () => <Widget>[],
                          (final String description) => <Widget>[
                            Align(
                              child: Text(
                                description,
                                style: Theme.of(context).textTheme.bodyMedium,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        (final String imageAssetPath) => Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Stack(
              children: <Widget>[
                Positioned.fill(
                  child: Padding(
                    padding: _item.imagePadding,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: _item.imageFit,
                          image: AssetImage(imageAssetPath),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned.fill(
                  child: ColoredBox(
                    color: Theme.of(context)
                        .colorScheme
                        .surfaceVariant
                        .withOpacity(0.7),
                  ),
                ),
                Positioned.fill(
                  child: Material(
                    type: MaterialType.transparency,
                    child: InkWell(
                      onTap: () => _controller.openItem(item: _item),
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          children: <Widget>[
                            Text(
                              _item.title,
                              textAlign: TextAlign.center,
                              style: optionOf(
                                Theme.of(context).textTheme.titleLarge,
                              )
                                  .map(
                                    (final TextStyle textStyle) =>
                                        textStyle.copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onSurfaceVariant,
                                    ),
                                  )
                                  .toNullable(),
                            ),
                            ..._item.description.fold(
                              () => <Widget>[],
                              (final String description) => <Widget>[
                                const Spacer(),
                                Text(
                                  description,
                                  style: Theme.of(context).textTheme.bodyMedium,
                                ),
                                const Spacer(),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}
