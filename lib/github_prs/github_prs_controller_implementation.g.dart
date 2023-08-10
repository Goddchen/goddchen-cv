// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'github_prs_controller_implementation.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$githubPrsControllerImplementationHash() =>
    r'5531c6925e1071006ddd8876cd0b124113b18bc3';

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

abstract class _$GithubPrsControllerImplementation
    extends BuildlessAutoDisposeNotifier<GithubPrsModel> {
  late final GithubPrsDataService dataService;
  late final GithubPrsNavigationService navigationService;

  GithubPrsModel build({
    required GithubPrsDataService dataService,
    required GithubPrsNavigationService navigationService,
  });
}

/// See also [GithubPrsControllerImplementation].
@ProviderFor(GithubPrsControllerImplementation)
const githubPrsControllerImplementationProvider =
    GithubPrsControllerImplementationFamily();

/// See also [GithubPrsControllerImplementation].
class GithubPrsControllerImplementationFamily extends Family<GithubPrsModel> {
  /// See also [GithubPrsControllerImplementation].
  const GithubPrsControllerImplementationFamily();

  /// See also [GithubPrsControllerImplementation].
  GithubPrsControllerImplementationProvider call({
    required GithubPrsDataService dataService,
    required GithubPrsNavigationService navigationService,
  }) {
    return GithubPrsControllerImplementationProvider(
      dataService: dataService,
      navigationService: navigationService,
    );
  }

  @override
  GithubPrsControllerImplementationProvider getProviderOverride(
    covariant GithubPrsControllerImplementationProvider provider,
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
  String? get name => r'githubPrsControllerImplementationProvider';
}

/// See also [GithubPrsControllerImplementation].
class GithubPrsControllerImplementationProvider
    extends AutoDisposeNotifierProviderImpl<GithubPrsControllerImplementation,
        GithubPrsModel> {
  /// See also [GithubPrsControllerImplementation].
  GithubPrsControllerImplementationProvider({
    required this.dataService,
    required this.navigationService,
  }) : super.internal(
          () => GithubPrsControllerImplementation()
            ..dataService = dataService
            ..navigationService = navigationService,
          from: githubPrsControllerImplementationProvider,
          name: r'githubPrsControllerImplementationProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$githubPrsControllerImplementationHash,
          dependencies: GithubPrsControllerImplementationFamily._dependencies,
          allTransitiveDependencies: GithubPrsControllerImplementationFamily
              ._allTransitiveDependencies,
        );

  final GithubPrsDataService dataService;
  final GithubPrsNavigationService navigationService;

  @override
  bool operator ==(Object other) {
    return other is GithubPrsControllerImplementationProvider &&
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
  GithubPrsModel runNotifierBuild(
    covariant GithubPrsControllerImplementation notifier,
  ) {
    return notifier.build(
      dataService: dataService,
      navigationService: navigationService,
    );
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
