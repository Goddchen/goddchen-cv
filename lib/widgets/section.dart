import 'package:flutter/material.dart';

class Section extends StatelessWidget {
  final String _title;
  final Widget _child;

  const Section({
    super.key,
    required final String title,
    required final Widget child,
  })  : _child = child,
        _title = title;

  @override
  Widget build(final BuildContext context) => Column(
        children: <Widget>[
          Text(
            _title,
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          const SizedBox(height: 16),
          _child,
        ],
      );
}
