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
    required final Option<String> description,
    required final DateTime from,
    required final Uri link,
    required final String title,
    required final DateTime until,
  }) = _CvModelItem;
}
