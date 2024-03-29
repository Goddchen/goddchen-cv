// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hobbies_controller_implemenation.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$hobbiesControllerImplementationHash() =>
    r'629ada99de5cf0de6047f4b395461f0a4ad62fa0';

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

abstract class _$HobbiesControllerImplementation
    extends BuildlessAutoDisposeNotifier<HobbiesModel> {
  late final HobbiesDataService dataService;
  late final HobbiesNavigationService navigationService;

  HobbiesModel build({
    required HobbiesDataService dataService,
    required HobbiesNavigationService navigationService,
  });
}

/// See also [HobbiesControllerImplementation].
@ProviderFor(HobbiesControllerImplementation)
const hobbiesControllerImplementationProvider =
    HobbiesControllerImplementationFamily();

/// See also [HobbiesControllerImplementation].
class HobbiesControllerImplementationFamily extends Family<HobbiesModel> {
  /// See also [HobbiesControllerImplementation].
  const HobbiesControllerImplementationFamily();

  /// See also [HobbiesControllerImplementation].
  HobbiesControllerImplementationProvider call({
    required HobbiesDataService dataService,
    required HobbiesNavigationService navigationService,
  }) {
    return HobbiesControllerImplementationProvider(
      dataService: dataService,
      navigationService: navigationService,
    );
  }

  @override
  HobbiesControllerImplementationProvider getProviderOverride(
    covariant HobbiesControllerImplementationProvider provider,
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
  String? get name => r'hobbiesControllerImplementationProvider';
}

/// See also [HobbiesControllerImplementation].
class HobbiesControllerImplementationProvider
    extends AutoDisposeNotifierProviderImpl<HobbiesControllerImplementation,
        HobbiesModel> {
  /// See also [HobbiesControllerImplementation].
  HobbiesControllerImplementationProvider({
    required HobbiesDataService dataService,
    required HobbiesNavigationService navigationService,
  }) : this._internal(
          () => HobbiesControllerImplementation()
            ..dataService = dataService
            ..navigationService = navigationService,
          from: hobbiesControllerImplementationProvider,
          name: r'hobbiesControllerImplementationProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$hobbiesControllerImplementationHash,
          dependencies: HobbiesControllerImplementationFamily._dependencies,
          allTransitiveDependencies:
              HobbiesControllerImplementationFamily._allTransitiveDependencies,
          dataService: dataService,
          navigationService: navigationService,
        );

  HobbiesControllerImplementationProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.dataService,
    required this.navigationService,
  }) : super.internal();

  final HobbiesDataService dataService;
  final HobbiesNavigationService navigationService;

  @override
  HobbiesModel runNotifierBuild(
    covariant HobbiesControllerImplementation notifier,
  ) {
    return notifier.build(
      dataService: dataService,
      navigationService: navigationService,
    );
  }

  @override
  Override overrideWith(HobbiesControllerImplementation Function() create) {
    return ProviderOverride(
      origin: this,
      override: HobbiesControllerImplementationProvider._internal(
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
  AutoDisposeNotifierProviderElement<HobbiesControllerImplementation,
      HobbiesModel> createElement() {
    return _HobbiesControllerImplementationProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is HobbiesControllerImplementationProvider &&
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

mixin HobbiesControllerImplementationRef
    on AutoDisposeNotifierProviderRef<HobbiesModel> {
  /// The parameter `dataService` of this provider.
  HobbiesDataService get dataService;

  /// The parameter `navigationService` of this provider.
  HobbiesNavigationService get navigationService;
}

class _HobbiesControllerImplementationProviderElement
    extends AutoDisposeNotifierProviderElement<HobbiesControllerImplementation,
        HobbiesModel> with HobbiesControllerImplementationRef {
  _HobbiesControllerImplementationProviderElement(super.provider);

  @override
  HobbiesDataService get dataService =>
      (origin as HobbiesControllerImplementationProvider).dataService;
  @override
  HobbiesNavigationService get navigationService =>
      (origin as HobbiesControllerImplementationProvider).navigationService;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
