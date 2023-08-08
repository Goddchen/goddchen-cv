import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'hobbies_data_service.freezed.dart';

abstract interface class HobbiesDataService {
  TaskEither<Object, List<HobbiesDataServiceHobby>> get hobbiesTask;
}

@freezed
class HobbiesDataServiceHobby with _$HobbiesDataServiceHobby {
  const factory HobbiesDataServiceHobby({
    required final Uri link,
    required final String title,
  }) = _HobbiesDataServiceHobby;
}
