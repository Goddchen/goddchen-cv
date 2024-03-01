// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cv_controller_implementation.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$cvControllerImplementationHash() =>
    r'039097674113f4f28dc6bce069cdada6265df172';

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

abstract class _$CvControllerImplementation
    extends BuildlessAutoDisposeNotifier<CvModel> {
  late final CvDataService dataService;
  late final CvNavigationService navigationService;

  CvModel build({
    required CvDataService dataService,
    required CvNavigationService navigationService,
  });
}

/// See also [CvControllerImplementation].
@ProviderFor(CvControllerImplementation)
const cvControllerImplementationProvider = CvControllerImplementationFamily();

/// See also [CvControllerImplementation].
class CvControllerImplementationFamily extends Family<CvModel> {
  /// See also [CvControllerImplementation].
  const CvControllerImplementationFamily();

  /// See also [CvControllerImplementation].
  CvControllerImplementationProvider call({
    required CvDataService dataService,
    required CvNavigationService navigationService,
  }) {
    return CvControllerImplementationProvider(
      dataService: dataService,
      navigationService: navigationService,
    );
  }

  @override
  CvControllerImplementationProvider getProviderOverride(
    covariant CvControllerImplementationProvider provider,
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
  String? get name => r'cvControllerImplementationProvider';
}

/// See also [CvControllerImplementation].
class CvControllerImplementationProvider
    extends AutoDisposeNotifierProviderImpl<CvControllerImplementation,
        CvModel> {
  /// See also [CvControllerImplementation].
  CvControllerImplementationProvider({
    required CvDataService dataService,
    required CvNavigationService navigationService,
  }) : this._internal(
          () => CvControllerImplementation()
            ..dataService = dataService
            ..navigationService = navigationService,
          from: cvControllerImplementationProvider,
          name: r'cvControllerImplementationProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$cvControllerImplementationHash,
          dependencies: CvControllerImplementationFamily._dependencies,
          allTransitiveDependencies:
              CvControllerImplementationFamily._allTransitiveDependencies,
          dataService: dataService,
          navigationService: navigationService,
        );

  CvControllerImplementationProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.dataService,
    required this.navigationService,
  }) : super.internal();

  final CvDataService dataService;
  final CvNavigationService navigationService;

  @override
  CvModel runNotifierBuild(
    covariant CvControllerImplementation notifier,
  ) {
    return notifier.build(
      dataService: dataService,
      navigationService: navigationService,
    );
  }

  @override
  Override overrideWith(CvControllerImplementation Function() create) {
    return ProviderOverride(
      origin: this,
      override: CvControllerImplementationProvider._internal(
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
  AutoDisposeNotifierProviderElement<CvControllerImplementation, CvModel>
      createElement() {
    return _CvControllerImplementationProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CvControllerImplementationProvider &&
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

mixin CvControllerImplementationRef on AutoDisposeNotifierProviderRef<CvModel> {
  /// The parameter `dataService` of this provider.
  CvDataService get dataService;

  /// The parameter `navigationService` of this provider.
  CvNavigationService get navigationService;
}

class _CvControllerImplementationProviderElement
    extends AutoDisposeNotifierProviderElement<CvControllerImplementation,
        CvModel> with CvControllerImplementationRef {
  _CvControllerImplementationProviderElement(super.provider);

  @override
  CvDataService get dataService =>
      (origin as CvControllerImplementationProvider).dataService;
  @override
  CvNavigationService get navigationService =>
      (origin as CvControllerImplementationProvider).navigationService;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
