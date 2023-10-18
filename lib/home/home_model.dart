import 'package:flutter/foundation.dart';
import 'package:goddchen_cv/common.dart';
import 'package:goddchen_cv/home/home_flavor_service.dart';

class HomeModel {
  final HomeFlavorServiceFlavor flavor;
  final ValueNotifier<int> selectedIndex;
  final String title;
  final ValueNotifier<AsyncData<String>> versionName;

  const HomeModel({
    required this.flavor,
    required this.selectedIndex,
    required this.title,
    required this.versionName,
  });
}
