import 'package:fpdart/fpdart.dart';
import 'package:goddchen_cv/home/home_package_info_service.dart';
import 'package:package_info_plus/package_info_plus.dart';

class PackageInfoService implements PackageInfoServiceAggregator {
  @override
  TaskEither<Object, String> get versionNameTask =>
      TaskEither<Object, String>.tryCatch(
        () async => (await PackageInfo.fromPlatform()).version,
        (final Object error, final __) => error,
      );
}

abstract interface class PackageInfoServiceAggregator
    implements HomePackageInfoService {}
