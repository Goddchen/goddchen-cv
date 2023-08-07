import 'package:flutter/material.dart';
import 'package:goddchen_cv/common.dart';
import 'package:goddchen_cv/constants.dart';
import 'package:goddchen_cv/mvc/mvc_view.dart';
import 'package:goddchen_cv/portfolio/portfolio_controller.dart';
import 'package:goddchen_cv/portfolio/portfolio_model.dart';
import 'package:goddchen_cv/widgets/section.dart';

class PortfolioView extends MvcView<PortfolioModel, PortfolioController> {
  const PortfolioView({
    super.key,
    required super.controller,
    required super.model,
  });

  @override
  Widget build(final BuildContext context) => Section(
        seedColor: portfolioColor,
        title: 'Portfolio',
        child: model.projects.build(
          dataBuilder: (final List<PortfolioModelProject> data) =>
              GridView.extent(
            childAspectRatio: gridViewChildAspectRatio,
            crossAxisSpacing: gridViewHorizontalSpacing,
            mainAxisSpacing: gridViewVerticalSpacing,
            maxCrossAxisExtent: gridViewMaxExtent,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            children: data
                .map(
                  (final PortfolioModelProject project) => _Project(
                    controller: controller,
                    project: project,
                  ),
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

class _Project extends StatelessWidget {
  final PortfolioController _controller;
  final PortfolioModelProject _project;

  const _Project({
    required final PortfolioController controller,
    required final PortfolioModelProject project,
  })  : _controller = controller,
        _project = project;

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
            onTap: () => _controller.openProject(project: _project),
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
                          _project.title,
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          _project.description,
                          style: Theme.of(context).textTheme.bodyMedium,
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
