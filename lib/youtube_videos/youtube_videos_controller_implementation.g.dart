// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'youtube_videos_controller_implementation.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$youtubeVideosControllerImplementationHash() =>
    r'fe47a0d76e4ebc51bb51076105d8f45fdfc6d0a1';

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

abstract class _$YoutubeVideosControllerImplementation
    extends BuildlessAutoDisposeNotifier<YoutubeVideosModel> {
  late final YoutubeVideosNavigationService navigationService;
  late final YoutubeVideosDataService dataService;

  YoutubeVideosModel build({
    required YoutubeVideosNavigationService navigationService,
    required YoutubeVideosDataService dataService,
  });
}

/// See also [YoutubeVideosControllerImplementation].
@ProviderFor(YoutubeVideosControllerImplementation)
const youtubeVideosControllerImplementationProvider =
    YoutubeVideosControllerImplementationFamily();

/// See also [YoutubeVideosControllerImplementation].
class YoutubeVideosControllerImplementationFamily
    extends Family<YoutubeVideosModel> {
  /// See also [YoutubeVideosControllerImplementation].
  const YoutubeVideosControllerImplementationFamily();

  /// See also [YoutubeVideosControllerImplementation].
  YoutubeVideosControllerImplementationProvider call({
    required YoutubeVideosNavigationService navigationService,
    required YoutubeVideosDataService dataService,
  }) {
    return YoutubeVideosControllerImplementationProvider(
      navigationService: navigationService,
      dataService: dataService,
    );
  }

  @override
  YoutubeVideosControllerImplementationProvider getProviderOverride(
    covariant YoutubeVideosControllerImplementationProvider provider,
  ) {
    return call(
      navigationService: provider.navigationService,
      dataService: provider.dataService,
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
  String? get name => r'youtubeVideosControllerImplementationProvider';
}

/// See also [YoutubeVideosControllerImplementation].
class YoutubeVideosControllerImplementationProvider
    extends AutoDisposeNotifierProviderImpl<
        YoutubeVideosControllerImplementation, YoutubeVideosModel> {
  /// See also [YoutubeVideosControllerImplementation].
  YoutubeVideosControllerImplementationProvider({
    required YoutubeVideosNavigationService navigationService,
    required YoutubeVideosDataService dataService,
  }) : this._internal(
          () => YoutubeVideosControllerImplementation()
            ..navigationService = navigationService
            ..dataService = dataService,
          from: youtubeVideosControllerImplementationProvider,
          name: r'youtubeVideosControllerImplementationProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$youtubeVideosControllerImplementationHash,
          dependencies:
              YoutubeVideosControllerImplementationFamily._dependencies,
          allTransitiveDependencies: YoutubeVideosControllerImplementationFamily
              ._allTransitiveDependencies,
          navigationService: navigationService,
          dataService: dataService,
        );

  YoutubeVideosControllerImplementationProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.navigationService,
    required this.dataService,
  }) : super.internal();

  final YoutubeVideosNavigationService navigationService;
  final YoutubeVideosDataService dataService;

  @override
  YoutubeVideosModel runNotifierBuild(
    covariant YoutubeVideosControllerImplementation notifier,
  ) {
    return notifier.build(
      navigationService: navigationService,
      dataService: dataService,
    );
  }

  @override
  Override overrideWith(
      YoutubeVideosControllerImplementation Function() create) {
    return ProviderOverride(
      origin: this,
      override: YoutubeVideosControllerImplementationProvider._internal(
        () => create()
          ..navigationService = navigationService
          ..dataService = dataService,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        navigationService: navigationService,
        dataService: dataService,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<YoutubeVideosControllerImplementation,
      YoutubeVideosModel> createElement() {
    return _YoutubeVideosControllerImplementationProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is YoutubeVideosControllerImplementationProvider &&
        other.navigationService == navigationService &&
        other.dataService == dataService;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, navigationService.hashCode);
    hash = _SystemHash.combine(hash, dataService.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin YoutubeVideosControllerImplementationRef
    on AutoDisposeNotifierProviderRef<YoutubeVideosModel> {
  /// The parameter `navigationService` of this provider.
  YoutubeVideosNavigationService get navigationService;

  /// The parameter `dataService` of this provider.
  YoutubeVideosDataService get dataService;
}

class _YoutubeVideosControllerImplementationProviderElement
    extends AutoDisposeNotifierProviderElement<
        YoutubeVideosControllerImplementation,
        YoutubeVideosModel> with YoutubeVideosControllerImplementationRef {
  _YoutubeVideosControllerImplementationProviderElement(super.provider);

  @override
  YoutubeVideosNavigationService get navigationService =>
      (origin as YoutubeVideosControllerImplementationProvider)
          .navigationService;
  @override
  YoutubeVideosDataService get dataService =>
      (origin as YoutubeVideosControllerImplementationProvider).dataService;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
