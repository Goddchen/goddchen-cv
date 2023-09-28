import 'package:flutter/foundation.dart';
import 'package:goddchen_cv/common.dart';

class HomeModel {
  final ValueNotifier<int> selectedIndex;
  final ValueNotifier<AsyncData<String>> versionName;

  const HomeModel({
    required this.selectedIndex,
    required this.versionName,
  });
}
