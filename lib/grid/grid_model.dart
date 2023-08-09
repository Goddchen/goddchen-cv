import 'package:goddchen_cv/common.dart';

abstract interface class GridModel<I extends GridModelItem> {
  AsyncResult<List<I>> get items;
}

abstract interface class GridModelItem {
  String get title;
  Uri get link;
}
