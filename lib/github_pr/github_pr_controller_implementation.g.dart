// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'github_pr_controller_implementation.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$githubPrControllerImplementationHash() =>
    r'fbead22c0413c2a6a55b1f439c4980505563ff12';

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

abstract class _$GithubPrControllerImplementation
    extends BuildlessAutoDisposeNotifier<GithubPrModel> {
  late final GithubPrGithubService githubService;
  late final int number;
  late final String owner;
  late final String repo;

  GithubPrModel build({
    required GithubPrGithubService githubService,
    required int number,
    required String owner,
    required String repo,
  });
}

/// See also [GithubPrControllerImplementation].
@ProviderFor(GithubPrControllerImplementation)
const githubPrControllerImplementationProvider =
    GithubPrControllerImplementationFamily();

/// See also [GithubPrControllerImplementation].
class GithubPrControllerImplementationFamily extends Family<GithubPrModel> {
  /// See also [GithubPrControllerImplementation].
  const GithubPrControllerImplementationFamily();

  /// See also [GithubPrControllerImplementation].
  GithubPrControllerImplementationProvider call({
    required GithubPrGithubService githubService,
    required int number,
    required String owner,
    required String repo,
  }) {
    return GithubPrControllerImplementationProvider(
      githubService: githubService,
      number: number,
      owner: owner,
      repo: repo,
    );
  }

  @override
  GithubPrControllerImplementationProvider getProviderOverride(
    covariant GithubPrControllerImplementationProvider provider,
  ) {
    return call(
      githubService: provider.githubService,
      number: provider.number,
      owner: provider.owner,
      repo: provider.repo,
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
  String? get name => r'githubPrControllerImplementationProvider';
}

/// See also [GithubPrControllerImplementation].
class GithubPrControllerImplementationProvider
    extends AutoDisposeNotifierProviderImpl<GithubPrControllerImplementation,
        GithubPrModel> {
  /// See also [GithubPrControllerImplementation].
  GithubPrControllerImplementationProvider({
    required this.githubService,
    required this.number,
    required this.owner,
    required this.repo,
  }) : super.internal(
          () => GithubPrControllerImplementation()
            ..githubService = githubService
            ..number = number
            ..owner = owner
            ..repo = repo,
          from: githubPrControllerImplementationProvider,
          name: r'githubPrControllerImplementationProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$githubPrControllerImplementationHash,
          dependencies: GithubPrControllerImplementationFamily._dependencies,
          allTransitiveDependencies:
              GithubPrControllerImplementationFamily._allTransitiveDependencies,
        );

  final GithubPrGithubService githubService;
  final int number;
  final String owner;
  final String repo;

  @override
  bool operator ==(Object other) {
    return other is GithubPrControllerImplementationProvider &&
        other.githubService == githubService &&
        other.number == number &&
        other.owner == owner &&
        other.repo == repo;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, githubService.hashCode);
    hash = _SystemHash.combine(hash, number.hashCode);
    hash = _SystemHash.combine(hash, owner.hashCode);
    hash = _SystemHash.combine(hash, repo.hashCode);

    return _SystemHash.finish(hash);
  }

  @override
  GithubPrModel runNotifierBuild(
    covariant GithubPrControllerImplementation notifier,
  ) {
    return notifier.build(
      githubService: githubService,
      number: number,
      owner: owner,
      repo: repo,
    );
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
