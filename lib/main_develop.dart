import 'package:goddchen_cv/flavors.dart';

import 'package:goddchen_cv/main.dart' as runner;

Future<void> main() async {
  F.appFlavor = Flavor.develop;
  await runner.main();
}
