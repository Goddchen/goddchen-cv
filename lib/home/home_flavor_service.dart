abstract interface class HomeFlavorService {
  HomeFlavorServiceFlavor get homeFlavorServiceFlavor;
  String get homeFlavorServiceTitle;
}

enum HomeFlavorServiceFlavor {
  develop,
  production,
}
