import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:goddchen_cv/common.dart';

part 'cv_model.freezed.dart';

@freezed
class CvModel with _$CvModel {
  const factory CvModel({
    required final AsyncResult<List<CvModelItem>> items,
  }) = _CvModel;
}

@freezed
class CvModelItem with _$CvModelItem {
  const factory CvModelItem({
    required final Option<String> description,
    required final DateTime from,
    required final Option<Uri> link,
    required final String title,
    required final DateTime until,
  }) = _CvModelItem;
}
