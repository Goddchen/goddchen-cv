enum Flavor {
  develop,
  production,
}

class F {
  static Flavor? appFlavor;

  static String get name => appFlavor?.name ?? '';

  static String get title {
    switch (appFlavor) {
      case Flavor.develop:
        return 'Martin "Goddchen" Liersch (Dev)';
      case Flavor.production:
        return 'Martin "Goddchen" Liersch';
      default:
        return 'title';
    }
  }

}
