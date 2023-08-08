import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cv_data_service.freezed.dart';

abstract interface class CvDataService {
  TaskEither<Object, List<CvDataServiceItem>> get cvItemsTask;
}

@freezed
class CvDataServiceItem with _$CvDataServiceItem {
  const factory CvDataServiceItem({
    required final Option<String> description,
    required final DateTime from,
    required final Option<Uri> link,
    required final String title,
    required final DateTime until,
  }) = _CvDataServiceItem;
}
