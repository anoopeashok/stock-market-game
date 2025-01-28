// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../data/repository/repository_helper.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$repositoryHelperHash() => r'f0a02291113a832cee728b5f43e256b96465594c';

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

/// See also [repositoryHelper].
@ProviderFor(repositoryHelper)
const repositoryHelperProvider = RepositoryHelperFamily();

/// See also [repositoryHelper].
class RepositoryHelperFamily extends Family<RepositoryHelper> {
  /// See also [repositoryHelper].
  const RepositoryHelperFamily();

  /// See also [repositoryHelper].
  RepositoryHelperProvider call({
    required APIConfigName apiConfigName,
  }) {
    return RepositoryHelperProvider(
      apiConfigName: apiConfigName,
    );
  }

  @override
  RepositoryHelperProvider getProviderOverride(
    covariant RepositoryHelperProvider provider,
  ) {
    return call(
      apiConfigName: provider.apiConfigName,
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
  String? get name => r'repositoryHelperProvider';
}

/// See also [repositoryHelper].
class RepositoryHelperProvider extends AutoDisposeProvider<RepositoryHelper> {
  /// See also [repositoryHelper].
  RepositoryHelperProvider({
    required APIConfigName apiConfigName,
  }) : this._internal(
          (ref) => repositoryHelper(
            ref as RepositoryHelperRef,
            apiConfigName: apiConfigName,
          ),
          from: repositoryHelperProvider,
          name: r'repositoryHelperProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$repositoryHelperHash,
          dependencies: RepositoryHelperFamily._dependencies,
          allTransitiveDependencies:
              RepositoryHelperFamily._allTransitiveDependencies,
          apiConfigName: apiConfigName,
        );

  RepositoryHelperProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.apiConfigName,
  }) : super.internal();

  final APIConfigName apiConfigName;

  @override
  Override overrideWith(
    RepositoryHelper Function(RepositoryHelperRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: RepositoryHelperProvider._internal(
        (ref) => create(ref as RepositoryHelperRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        apiConfigName: apiConfigName,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<RepositoryHelper> createElement() {
    return _RepositoryHelperProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is RepositoryHelperProvider &&
        other.apiConfigName == apiConfigName;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, apiConfigName.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin RepositoryHelperRef on AutoDisposeProviderRef<RepositoryHelper> {
  /// The parameter `apiConfigName` of this provider.
  APIConfigName get apiConfigName;
}

class _RepositoryHelperProviderElement
    extends AutoDisposeProviderElement<RepositoryHelper>
    with RepositoryHelperRef {
  _RepositoryHelperProviderElement(super.provider);

  @override
  APIConfigName get apiConfigName =>
      (origin as RepositoryHelperProvider).apiConfigName;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
