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
  final Option<Widget Function(I item)> _itemBuilder;
  final Color _seedColor;
  final String _title;

  const GridView({
    super.key,
    final Option<Widget Function(I item)> itemBuilder = const None(),
    required final Color seedColor,
    required final String title,
    required super.controller,
    required super.model,
  })  : _itemBuilder = itemBuilder,
        _seedColor = seedColor,
        _title = title;

  @override
  Widget build(final BuildContext context) => Section(
        seedColor: _seedColor,
        title: _title,
        child: model.items.build(
          dataBuilder: (final List<I> data) => grid_view.GridView.extent(
            childAspectRatio: gridViewChildAspectRatio,
            crossAxisSpacing: gridViewHorizontalSpacing,
            mainAxisSpacing: gridViewVerticalSpacing,
            maxCrossAxisExtent: gridViewMaxExtent,
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
  Widget build(final BuildContext context) => Card(
        color: Theme.of(context).colorScheme.surfaceVariant,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
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
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      );
}