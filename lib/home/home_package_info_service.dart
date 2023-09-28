import 'package:fpdart/fpdart.dart';

abstract interface class HomePackageInfoService {
  TaskEither<Object, String> get versionNameTask;
}
