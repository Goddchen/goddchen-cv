// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hobbies_controller_implemenation.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$hobbiesControllerImplementationHash() =>
    r'5ad8e01bdfbba761cd469c83e46700792e439b56';

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
    required this.dataService,
    required this.navigationService,
  }) : super.internal(
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
        );

  final HobbiesDataService dataService;
  final HobbiesNavigationService navigationService;

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

  @override
  HobbiesModel runNotifierBuild(
    covariant HobbiesControllerImplementation notifier,
  ) {
    return notifier.build(
      dataService: dataService,
      navigationService: navigationService,
    );
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
