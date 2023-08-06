// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'youtube_videos_controller_implementation.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$youtubeVideosControllerImplementationHash() =>
    r'c98a668217f55c56e91f8ae100bdfe09a6746fe8';

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
  late final YoutubeVideosYoutubeService youtubeService;

  YoutubeVideosModel build({
    required YoutubeVideosYoutubeService youtubeService,
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
    required YoutubeVideosYoutubeService youtubeService,
  }) {
    return YoutubeVideosControllerImplementationProvider(
      youtubeService: youtubeService,
    );
  }

  @override
  YoutubeVideosControllerImplementationProvider getProviderOverride(
    covariant YoutubeVideosControllerImplementationProvider provider,
  ) {
    return call(
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
  String? get name => r'youtubeVideosControllerImplementationProvider';
}

/// See also [YoutubeVideosControllerImplementation].
class YoutubeVideosControllerImplementationProvider
    extends AutoDisposeNotifierProviderImpl<
        YoutubeVideosControllerImplementation, YoutubeVideosModel> {
  /// See also [YoutubeVideosControllerImplementation].
  YoutubeVideosControllerImplementationProvider({
    required this.youtubeService,
  }) : super.internal(
          () => YoutubeVideosControllerImplementation()
            ..youtubeService = youtubeService,
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
        );

  final YoutubeVideosYoutubeService youtubeService;

  @override
  bool operator ==(Object other) {
    return other is YoutubeVideosControllerImplementationProvider &&
        other.youtubeService == youtubeService;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, youtubeService.hashCode);

    return _SystemHash.finish(hash);
  }

  @override
  YoutubeVideosModel runNotifierBuild(
    covariant YoutubeVideosControllerImplementation notifier,
  ) {
    return notifier.build(
      youtubeService: youtubeService,
    );
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
