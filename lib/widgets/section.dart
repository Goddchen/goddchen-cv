import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';
import 'package:goddchen_cv/constants.dart';

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
            final Color primaryContainer =
                Theme.of(context).colorScheme.primaryContainer;
            return Column(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      colors: <Color>[
                        primaryContainer,
                        primaryContainer.withOpacity(0.5),
                        primaryContainer.withOpacity(0),
                      ],
                      stops: const <double>[
                        0.0,
                        0.1,
                        1.0,
                      ],
                      end: Alignment.bottomCenter,
                    ),
                  ),
                  height: 200,
                  width: double.infinity,
                  child: Center(
                    child: Text(
                      _title,
                      style: optionOf(Theme.of(context).textTheme.displayMedium)
                          .map(
                            (final TextStyle textStyle) => textStyle.copyWith(
                              color: Theme.of(context).colorScheme.primary,
                            ),
                          )
                          .toNullable(),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Padding(
                  padding: EdgeInsets.only(
                    left: pagePadding.left,
                    right: pagePadding.right,
                  ),
                  child: _child,
                ),
                const SizedBox(height: 16),
              ],
            );
          },
        ),
      );
}
