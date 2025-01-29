// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../data/services/api_client.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$apiClientHash() => r'919399ab9c204fdd8de6c32b769f4c8aa0a8edcf';

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

/// See also [apiClient].
@ProviderFor(apiClient)
const apiClientProvider = ApiClientFamily();

/// See also [apiClient].
class ApiClientFamily extends Family<ApiClient> {
  /// See also [apiClient].
  const ApiClientFamily();

  /// See also [apiClient].
  ApiClientProvider call({
    required APIConfigName apiConfigName,
  }) {
    return ApiClientProvider(
      apiConfigName: apiConfigName,
    );
  }

  @override
  ApiClientProvider getProviderOverride(
    covariant ApiClientProvider provider,
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
  String? get name => r'apiClientProvider';
}

/// See also [apiClient].
class ApiClientProvider extends AutoDisposeProvider<ApiClient> {
  /// See also [apiClient].
  ApiClientProvider({
    required APIConfigName apiConfigName,
  }) : this._internal(
          (ref) => apiClient(
            ref as ApiClientRef,
            apiConfigName: apiConfigName,
          ),
          from: apiClientProvider,
          name: r'apiClientProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$apiClientHash,
          dependencies: ApiClientFamily._dependencies,
          allTransitiveDependencies: ApiClientFamily._allTransitiveDependencies,
          apiConfigName: apiConfigName,
        );

  ApiClientProvider._internal(
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
    ApiClient Function(ApiClientRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ApiClientProvider._internal(
        (ref) => create(ref as ApiClientRef),
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
  AutoDisposeProviderElement<ApiClient> createElement() {
    return _ApiClientProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ApiClientProvider && other.apiConfigName == apiConfigName;
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
mixin ApiClientRef on AutoDisposeProviderRef<ApiClient> {
  /// The parameter `apiConfigName` of this provider.
  APIConfigName get apiConfigName;
}

class _ApiClientProviderElement extends AutoDisposeProviderElement<ApiClient>
    with ApiClientRef {
  _ApiClientProviderElement(super.provider);

  @override
  APIConfigName get apiConfigName =>
      (origin as ApiClientProvider).apiConfigName;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
