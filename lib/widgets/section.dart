import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';

class Section extends StatelessWidget {
  final String _title;
  final Color _seedColor;
  final Widget _child;

  const Section({
    super.key,
    required final Color seedColor,
    required final String title,
    required final Widget child,
  })  : _child = child,
        _seedColor = seedColor,
        _title = title;

  @override
  Widget build(final BuildContext context) => Theme(
        data: Theme.of(context).copyWith(
          colorScheme: ColorScheme.fromSeed(
            seedColor: _seedColor,
          ),
        ),
        child: Builder(
          builder: (final BuildContext context) {
            return Column(
              children: <Widget>[
                Text(
                  _title,
                  style: optionOf(Theme.of(context).textTheme.displayMedium)
                      .map(
                        (final TextStyle textStyle) => textStyle.copyWith(
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      )
                      .toNullable(),
                ),
                const SizedBox(height: 16),
                _child,
              ],
            );
          },
        ),
      );
}
