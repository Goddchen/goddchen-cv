import 'package:flutter/widgets.dart';

abstract class MvcView<M, C> extends StatelessWidget {
  final C controller;
  final M model;

  const MvcView({
    required this.controller,
    super.key,
    required this.model,
  });
}
