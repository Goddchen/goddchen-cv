import 'package:flutter/material.dart';
import 'package:goddchen_cv/common.dart';
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
        title: 'Portfolio',
        child: model.projects.build(
          dataBuilder: (final List<PortfolioModelProject> data) => Column(
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
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: SizedBox(
          height: 160,
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
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text(_project.title),
                        Text(_project.description),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      );
}
