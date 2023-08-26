import 'package:flutter/widgets.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:goddchen_cv/common.dart';
import 'package:goddchen_cv/grid/grid_model.dart';

part 'cv_model.freezed.dart';

@freezed
class CvModel with _$CvModel implements GridModel<CvModelItem> {
  const factory CvModel({
    required final AsyncResult<List<CvModelItem>> items,
  }) = _CvModel;
}

@freezed
class CvModelItem with _$CvModelItem implements GridModelItem {
  const factory CvModelItem({
    @Default(None()) final Option<GridModelItemAction> action,
    @Default(None()) final Option<String> description,
    @Default(None()) final Option<String> imageAssetPath,
    @Default(BoxFit.cover) final BoxFit imageFit,
    @Default(EdgeInsets.all(0)) final EdgeInsets imagePadding,
    @Default(None()) final Option<DateTime> from,
    required final String title,
    @Default(None()) final Option<DateTime> until,
  }) = _CvModelItem;
}
