import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';

Widget buildLink({
  required final String text,
  required final VoidCallback onTap,
}) =>
    Builder(
      builder: (final BuildContext context) => RichText(
        text: TextSpan(
          text: text,
          style: optionOf(Theme.of(context).textTheme.bodyMedium)
              .map(
                (final TextStyle textStyle) => textStyle.copyWith(
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                ),
              )
              .toNullable(),
          recognizer: TapGestureRecognizer()..onTap = onTap,
        ),
        textAlign: TextAlign.center,
      ),
    );

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

sealed class AsyncData<T> {
  factory AsyncData.data({required final T data}) =>
      AsyncDataData<T>(data: data);
  factory AsyncData.error({required final Object error}) =>
      AsyncDataError<T>(error: error);
  factory AsyncData.loading() => AsyncDataLoading<T>();
  AsyncData._();
}

class AsyncDataData<T> extends AsyncData<T> {
  final T _data;

  AsyncDataData({required final T data})
      : _data = data,
        super._();

  T get data => _data;
}

class AsyncDataError<T> extends AsyncData<T> {
  final Object _error;

  AsyncDataError({required final Object error})
      : _error = error,
        super._();

  Object get error => _error;
}

class AsyncDataLoading<T> extends AsyncData<T> {
  AsyncDataLoading() : super._();
}

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
