import 'package:goddchen_cv/flavors.dart';
import 'package:goddchen_cv/home/home_flavor_service.dart';

class FlavorService implements FlavorServiceAggregator {
  @override
  HomeFlavorServiceFlavor get homeFlavorServiceFlavor => switch (F.appFlavor) {
        Flavor.develop => HomeFlavorServiceFlavor.develop,
        Flavor.production => HomeFlavorServiceFlavor.production,
        null => HomeFlavorServiceFlavor.develop,
      };

  @override
  String get homeFlavorServiceTitle => F.title;
}

abstract interface class FlavorServiceAggregator implements HomeFlavorService {}
