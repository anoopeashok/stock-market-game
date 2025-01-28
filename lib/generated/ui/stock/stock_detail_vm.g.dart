// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../ui/stock/stock_detail_vm.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$stockDetailVMHash() => r'1e1035e94b208010cd2cb149f377eca267abc985';

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

abstract class _$StockDetailVM
    extends BuildlessAutoDisposeNotifier<StockDetailState> {
  late final StockInformationRequest request;

  StockDetailState build(
    StockInformationRequest request,
  );
}

/// See also [StockDetailVM].
@ProviderFor(StockDetailVM)
const stockDetailVMProvider = StockDetailVMFamily();

/// See also [StockDetailVM].
class StockDetailVMFamily extends Family<StockDetailState> {
  /// See also [StockDetailVM].
  const StockDetailVMFamily();

  /// See also [StockDetailVM].
  StockDetailVMProvider call(
    StockInformationRequest request,
  ) {
    return StockDetailVMProvider(
      request,
    );
  }

  @override
  StockDetailVMProvider getProviderOverride(
    covariant StockDetailVMProvider provider,
  ) {
    return call(
      provider.request,
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
  String? get name => r'stockDetailVMProvider';
}

/// See also [StockDetailVM].
class StockDetailVMProvider
    extends AutoDisposeNotifierProviderImpl<StockDetailVM, StockDetailState> {
  /// See also [StockDetailVM].
  StockDetailVMProvider(
    StockInformationRequest request,
  ) : this._internal(
          () => StockDetailVM()..request = request,
          from: stockDetailVMProvider,
          name: r'stockDetailVMProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$stockDetailVMHash,
          dependencies: StockDetailVMFamily._dependencies,
          allTransitiveDependencies:
              StockDetailVMFamily._allTransitiveDependencies,
          request: request,
        );

  StockDetailVMProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.request,
  }) : super.internal();

  final StockInformationRequest request;

  @override
  StockDetailState runNotifierBuild(
    covariant StockDetailVM notifier,
  ) {
    return notifier.build(
      request,
    );
  }

  @override
  Override overrideWith(StockDetailVM Function() create) {
    return ProviderOverride(
      origin: this,
      override: StockDetailVMProvider._internal(
        () => create()..request = request,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        request: request,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<StockDetailVM, StockDetailState>
      createElement() {
    return _StockDetailVMProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is StockDetailVMProvider && other.request == request;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, request.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin StockDetailVMRef on AutoDisposeNotifierProviderRef<StockDetailState> {
  /// The parameter `request` of this provider.
  StockInformationRequest get request;
}

class _StockDetailVMProviderElement
    extends AutoDisposeNotifierProviderElement<StockDetailVM, StockDetailState>
    with StockDetailVMRef {
  _StockDetailVMProviderElement(super.provider);

  @override
  StockInformationRequest get request =>
      (origin as StockDetailVMProvider).request;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
