import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:goddchen_cv/common.dart';

part 'grid_model.freezed.dart';

abstract interface class GridModel<I extends GridModelItem> {
  AsyncResult<List<I>> get items;
}

abstract interface class GridModelItem {
  String get title;
  Option<GridModelItemAction> get action;
}

@freezed
class GridModelItemAction with _$GridModelItemAction {
  const factory GridModelItemAction.link({required final Uri link}) =
      _GridModelItemActionLink;
  const factory GridModelItemAction.route({required final Uri route}) =
      _GridModelItemActionRoute;
}
