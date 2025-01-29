// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../ui/stock/stock_detail_vm.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getCompanyInformationHash() =>
    r'54a705a46d43cc8f64228e886566ae699f682ed5';

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

/// See also [getCompanyInformation].
@ProviderFor(getCompanyInformation)
const getCompanyInformationProvider = GetCompanyInformationFamily();

/// See also [getCompanyInformation].
class GetCompanyInformationFamily extends Family<AsyncValue<CompanyFullData>> {
  /// See also [getCompanyInformation].
  const GetCompanyInformationFamily();

  /// See also [getCompanyInformation].
  GetCompanyInformationProvider call({
    required String symbol,
  }) {
    return GetCompanyInformationProvider(
      symbol: symbol,
    );
  }

  @override
  GetCompanyInformationProvider getProviderOverride(
    covariant GetCompanyInformationProvider provider,
  ) {
    return call(
      symbol: provider.symbol,
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
  String? get name => r'getCompanyInformationProvider';
}

/// See also [getCompanyInformation].
class GetCompanyInformationProvider
    extends AutoDisposeFutureProvider<CompanyFullData> {
  /// See also [getCompanyInformation].
  GetCompanyInformationProvider({
    required String symbol,
  }) : this._internal(
          (ref) => getCompanyInformation(
            ref as GetCompanyInformationRef,
            symbol: symbol,
          ),
          from: getCompanyInformationProvider,
          name: r'getCompanyInformationProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getCompanyInformationHash,
          dependencies: GetCompanyInformationFamily._dependencies,
          allTransitiveDependencies:
              GetCompanyInformationFamily._allTransitiveDependencies,
          symbol: symbol,
        );

  GetCompanyInformationProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.symbol,
  }) : super.internal();

  final String symbol;

  @override
  Override overrideWith(
    FutureOr<CompanyFullData> Function(GetCompanyInformationRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetCompanyInformationProvider._internal(
        (ref) => create(ref as GetCompanyInformationRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        symbol: symbol,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<CompanyFullData> createElement() {
    return _GetCompanyInformationProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetCompanyInformationProvider && other.symbol == symbol;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, symbol.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetCompanyInformationRef
    on AutoDisposeFutureProviderRef<CompanyFullData> {
  /// The parameter `symbol` of this provider.
  String get symbol;
}

class _GetCompanyInformationProviderElement
    extends AutoDisposeFutureProviderElement<CompanyFullData>
    with GetCompanyInformationRef {
  _GetCompanyInformationProviderElement(super.provider);

  @override
  String get symbol => (origin as GetCompanyInformationProvider).symbol;
}

String _$getHistoricalBarDataHash() =>
    r'6304080ca03621057e2c2d26ad33c94a73dd75d2';

/// See also [getHistoricalBarData].
@ProviderFor(getHistoricalBarData)
const getHistoricalBarDataProvider = GetHistoricalBarDataFamily();

/// See also [getHistoricalBarData].
class GetHistoricalBarDataFamily extends Family<AsyncValue<List<double>>> {
  /// See also [getHistoricalBarData].
  const GetHistoricalBarDataFamily();

  /// See also [getHistoricalBarData].
  GetHistoricalBarDataProvider call({
    required StockInformationRequest request,
  }) {
    return GetHistoricalBarDataProvider(
      request: request,
    );
  }

  @override
  GetHistoricalBarDataProvider getProviderOverride(
    covariant GetHistoricalBarDataProvider provider,
  ) {
    return call(
      request: provider.request,
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
  String? get name => r'getHistoricalBarDataProvider';
}

/// See also [getHistoricalBarData].
class GetHistoricalBarDataProvider
    extends AutoDisposeFutureProvider<List<double>> {
  /// See also [getHistoricalBarData].
  GetHistoricalBarDataProvider({
    required StockInformationRequest request,
  }) : this._internal(
          (ref) => getHistoricalBarData(
            ref as GetHistoricalBarDataRef,
            request: request,
          ),
          from: getHistoricalBarDataProvider,
          name: r'getHistoricalBarDataProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getHistoricalBarDataHash,
          dependencies: GetHistoricalBarDataFamily._dependencies,
          allTransitiveDependencies:
              GetHistoricalBarDataFamily._allTransitiveDependencies,
          request: request,
        );

  GetHistoricalBarDataProvider._internal(
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
  Override overrideWith(
    FutureOr<List<double>> Function(GetHistoricalBarDataRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetHistoricalBarDataProvider._internal(
        (ref) => create(ref as GetHistoricalBarDataRef),
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
  AutoDisposeFutureProviderElement<List<double>> createElement() {
    return _GetHistoricalBarDataProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetHistoricalBarDataProvider && other.request == request;
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
mixin GetHistoricalBarDataRef on AutoDisposeFutureProviderRef<List<double>> {
  /// The parameter `request` of this provider.
  StockInformationRequest get request;
}

class _GetHistoricalBarDataProviderElement
    extends AutoDisposeFutureProviderElement<List<double>>
    with GetHistoricalBarDataRef {
  _GetHistoricalBarDataProviderElement(super.provider);

  @override
  StockInformationRequest get request =>
      (origin as GetHistoricalBarDataProvider).request;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
