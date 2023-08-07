import 'package:flutter/widgets.dart';
import 'package:fpdart/fpdart.dart';

Either<Object, double> findWidgetOffset({required final GlobalKey globalKey}) =>
    optionOf(globalKey.currentContext)
        .flatMap(
          (final BuildContext context) => optionOf(context.findRenderObject()),
        )
        .map((final RenderObject renderObject) => renderObject as RenderBox)
        .map(
          (final RenderBox renderBox) =>
              renderBox.localToGlobal(Offset.zero).dy,
        )
        .toEither(() => 'Couldn\'t find widget or context');

typedef AsyncResult<T> = Either<Object, Option<T>>;

extension AsyncResultExtensions<T> on AsyncResult<T> {
  Widget build({
    required final Widget Function(T data) dataBuilder,
    required final Widget Function(Object error) errorBuilder,
    required final Widget Function() loadingBuilder,
  }) =>
      fold(
        (final Object error) => errorBuilder(error),
        (final Option<T> option) => option.fold(
          () => loadingBuilder(),
          (final T t) => dataBuilder(t),
        ),
      );
}
