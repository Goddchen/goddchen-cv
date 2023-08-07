// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'portfolio_controller_implementation.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$portfolioControllerImplementationHash() =>
    r'da5979e6b0aee645badd6881b3e48835649de1ae';

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
    required this.dataService,
    required this.navigationService,
  }) : super.internal(
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
        );

  final PortfolioDataService dataService;
  final PortfolioNavigationService navigationService;

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

  @override
  PortfolioModel runNotifierBuild(
    covariant PortfolioControllerImplementation notifier,
  ) {
    return notifier.build(
      dataService: dataService,
      navigationService: navigationService,
    );
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
