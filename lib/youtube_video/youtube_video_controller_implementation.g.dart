// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'youtube_video_controller_implementation.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$youtubeVideoControllerImplementationHash() =>
    r'4d0e67f009eb08f416e217e0d091a23a34c3e3e1';

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

abstract class _$YoutubeVideoControllerImplementation
    extends BuildlessAutoDisposeNotifier<YoutubeVideoModel> {
  late final String id;
  late final YoutubeVideoNavigationService navigationService;
  late final YoutubeVideoYoutubeService youtubeService;

  YoutubeVideoModel build({
    required String id,
    required YoutubeVideoNavigationService navigationService,
    required YoutubeVideoYoutubeService youtubeService,
  });
}

/// See also [YoutubeVideoControllerImplementation].
@ProviderFor(YoutubeVideoControllerImplementation)
const youtubeVideoControllerImplementationProvider =
    YoutubeVideoControllerImplementationFamily();

/// See also [YoutubeVideoControllerImplementation].
class YoutubeVideoControllerImplementationFamily
    extends Family<YoutubeVideoModel> {
  /// See also [YoutubeVideoControllerImplementation].
  const YoutubeVideoControllerImplementationFamily();

  /// See also [YoutubeVideoControllerImplementation].
  YoutubeVideoControllerImplementationProvider call({
    required String id,
    required YoutubeVideoNavigationService navigationService,
    required YoutubeVideoYoutubeService youtubeService,
  }) {
    return YoutubeVideoControllerImplementationProvider(
      id: id,
      navigationService: navigationService,
      youtubeService: youtubeService,
    );
  }

  @override
  YoutubeVideoControllerImplementationProvider getProviderOverride(
    covariant YoutubeVideoControllerImplementationProvider provider,
  ) {
    return call(
      id: provider.id,
      navigationService: provider.navigationService,
      youtubeService: provider.youtubeService,
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
  String? get name => r'youtubeVideoControllerImplementationProvider';
}

/// See also [YoutubeVideoControllerImplementation].
class YoutubeVideoControllerImplementationProvider
    extends AutoDisposeNotifierProviderImpl<
        YoutubeVideoControllerImplementation, YoutubeVideoModel> {
  /// See also [YoutubeVideoControllerImplementation].
  YoutubeVideoControllerImplementationProvider({
    required this.id,
    required this.navigationService,
    required this.youtubeService,
  }) : super.internal(
          () => YoutubeVideoControllerImplementation()
            ..id = id
            ..navigationService = navigationService
            ..youtubeService = youtubeService,
          from: youtubeVideoControllerImplementationProvider,
          name: r'youtubeVideoControllerImplementationProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$youtubeVideoControllerImplementationHash,
          dependencies:
              YoutubeVideoControllerImplementationFamily._dependencies,
          allTransitiveDependencies: YoutubeVideoControllerImplementationFamily
              ._allTransitiveDependencies,
        );

  final String id;
  final YoutubeVideoNavigationService navigationService;
  final YoutubeVideoYoutubeService youtubeService;

  @override
  bool operator ==(Object other) {
    return other is YoutubeVideoControllerImplementationProvider &&
        other.id == id &&
        other.navigationService == navigationService &&
        other.youtubeService == youtubeService;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);
    hash = _SystemHash.combine(hash, navigationService.hashCode);
    hash = _SystemHash.combine(hash, youtubeService.hashCode);

    return _SystemHash.finish(hash);
  }

  @override
  YoutubeVideoModel runNotifierBuild(
    covariant YoutubeVideoControllerImplementation notifier,
  ) {
    return notifier.build(
      id: id,
      navigationService: navigationService,
      youtubeService: youtubeService,
    );
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
