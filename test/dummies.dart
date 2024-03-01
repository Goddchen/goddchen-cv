import 'package:fpdart/fpdart.dart';
import 'package:goddchen_cv/hobbies/hobbies_data_service.dart';
import 'package:mockito/mockito.dart';

void registerDummies() {
  provideDummy(
    TaskEither<Object, List<HobbiesDataServiceHobby>>.of(
      <HobbiesDataServiceHobby>[],
    ),
  );
}
