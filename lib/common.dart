import 'package:flutter/widgets.dart';
import 'package:fpdart/fpdart.dart';

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
