// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'portfolio_controller_implementation.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$portfolioControllerImplementationHash() =>
    r'4a359d61aab861bb2cc240b95aae4d1e5b95f8c0';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$PortfolioControllerImplementation
    extends BuildlessAutoDisposeNotifier<PortfolioModel> {
  late final PortfolioDataService dataService;
  late final PortfolioNavigationService navigationService;

  PortfolioModel build({
    required PortfolioDataService dataService,
    required PortfolioNavigationService navigationService,
  });
}

/// See also [PortfolioControllerImplementation].
@ProviderFor(PortfolioControllerImplementation)
const portfolioControllerImplementationProvider =
    PortfolioControllerImplementationFamily();

/// See also [PortfolioControllerImplementation].
class PortfolioControllerImplementationFamily extends Family<PortfolioModel> {
  /// See also [PortfolioControllerImplementation].
  const PortfolioControllerImplementationFamily();

  /// See also [PortfolioControllerImplementation].
  PortfolioControllerImplementationProvider call({
    required PortfolioDataService dataService,
    required PortfolioNavigationService navigationService,
  }) {
    return PortfolioControllerImplementationProvider(
      dataService: dataService,
      navigationService: navigationService,
    );
  }

  @override
  PortfolioControllerImplementationProvider getProviderOverride(
    covariant PortfolioControllerImplementationProvider provider,
  ) {
    return call(
      dataService: provider.dataService,
      navigationService: provider.navigationService,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'portfolioControllerImplementationProvider';
}

/// See also [PortfolioControllerImplementation].
class PortfolioControllerImplementationProvider
    extends AutoDisposeNotifierProviderImpl<PortfolioControllerImplementation,
        PortfolioModel> {
  /// See also [PortfolioControllerImplementation].
  PortfolioControllerImplementationProvider({
    required PortfolioDataService dataService,
    required PortfolioNavigationService navigationService,
  }) : this._internal(
          () => PortfolioControllerImplementation()
            ..dataService = dataService
            ..navigationService = navigationService,
          from: portfolioControllerImplementationProvider,
          name: r'portfolioControllerImplementationProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$portfolioControllerImplementationHash,
          dependencies: PortfolioControllerImplementationFamily._dependencies,
          allTransitiveDependencies: PortfolioControllerImplementationFamily
              ._allTransitiveDependencies,
          dataService: dataService,
          navigationService: navigationService,
        );

  PortfolioControllerImplementationProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.dataService,
    required this.navigationService,
  }) : super.internal();

  final PortfolioDataService dataService;
  final PortfolioNavigationService navigationService;

  @override
  PortfolioModel runNotifierBuild(
    covariant PortfolioControllerImplementation notifier,
  ) {
    return notifier.build(
      dataService: dataService,
      navigationService: navigationService,
    );
  }

  @override
  Override overrideWith(PortfolioControllerImplementation Function() create) {
    return ProviderOverride(
      origin: this,
      override: PortfolioControllerImplementationProvider._internal(
        () => create()
          ..dataService = dataService
          ..navigationService = navigationService,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        dataService: dataService,
        navigationService: navigationService,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<PortfolioControllerImplementation,
      PortfolioModel> createElement() {
    return _PortfolioControllerImplementationProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PortfolioControllerImplementationProvider &&
        other.dataService == dataService &&
        other.navigationService == navigationService;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, dataService.hashCode);
    hash = _SystemHash.combine(hash, navigationService.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin PortfolioControllerImplementationRef
    on AutoDisposeNotifierProviderRef<PortfolioModel> {
  /// The parameter `dataService` of this provider.
  PortfolioDataService get dataService;

  /// The parameter `navigationService` of this provider.
  PortfolioNavigationService get navigationService;
}

class _PortfolioControllerImplementationProviderElement
    extends AutoDisposeNotifierProviderElement<
        PortfolioControllerImplementation,
        PortfolioModel> with PortfolioControllerImplementationRef {
  _PortfolioControllerImplementationProviderElement(super.provider);

  @override
  PortfolioDataService get dataService =>
      (origin as PortfolioControllerImplementationProvider).dataService;
  @override
  PortfolioNavigationService get navigationService =>
      (origin as PortfolioControllerImplementationProvider).navigationService;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
