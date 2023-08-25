import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cv_data_service.freezed.dart';

abstract interface class CvDataService {
  TaskEither<Object, List<CvDataServiceItem>> get cvItemsTask;
}

@freezed
class CvDataServiceItem with _$CvDataServiceItem {
  const factory CvDataServiceItem({
    @Default(None()) final Option<String> description,
    @Default(None()) final Option<DateTime> from,
    @Default(None()) final Option<Uri> link,
    required final String title,
    @Default(None()) final Option<DateTime> until,
  }) = _CvDataServiceItem;
}
