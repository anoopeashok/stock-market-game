// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../data/data_source/remote/stock_api_service.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers,unused_element,unnecessary_string_interpolations,unused_element_parameter

class _StockApiService implements StockApiService {
  _StockApiService(this._dio, {this.baseUrl, this.errorLogger});

  final Dio _dio;

  String? baseUrl;

  final ParseErrorLogger? errorLogger;

  Future<ActiveStockListModel> _getActiveStocks(
    String sortby,
    int count,
  ) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'by': sortby, r'top': count};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<Result<ActiveStockListModel>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/v1beta1/screener/stocks/most-actives',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late ActiveStockListModel _value;
    try {
      _value = ActiveStockListModel.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<Result<ActiveStockListModel>> getActiveStocks(
    String sortby,
    int count,
  ) {
    return MyCallAdapter<ActiveStockListModel>().adapt(
      () => _getActiveStocks(sortby, count),
    );
  }

  Future<TopMarketMoversModel> _getTopGainersAndlosers(
    String parameter,
    int count,
  ) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'top': count};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<Result<TopMarketMoversModel>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/v1beta1/screener/${parameter}/movers',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late TopMarketMoversModel _value;
    try {
      _value = TopMarketMoversModel.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<Result<TopMarketMoversModel>> getTopGainersAndlosers(
    String parameter,
    int count,
  ) {
    return MyCallAdapter<TopMarketMoversModel>().adapt(
      () => _getTopGainersAndlosers(parameter, count),
    );
  }

  Future<StockData> _getStockData(String symbols) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'symbols': symbols};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<Result<StockData>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/v2/stocks/snapshots',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late StockData _value;
    try {
      _value = StockData.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<Result<StockData>> getStockData(String symbols) {
    return MyCallAdapter<StockData>().adapt(() => _getStockData(symbols));
  }

  Future<HistoricalBarDataModel> _getHistoricalBarData(
    String symbols,
    String timeFrame,
    String startDate,
    String endDate,
  ) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'symbols': symbols,
      r'timeFrame': timeFrame,
      r'startDate': startDate,
      r'endDate': endDate,
    };
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<Result<HistoricalBarDataModel>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/v2/stocks/bars?limit=1000&adjustment=raw&feed=iex&sort=asc',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late HistoricalBarDataModel _value;
    try {
      _value = HistoricalBarDataModel.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<Result<HistoricalBarDataModel>> getHistoricalBarData(
    String symbols,
    String timeFrame,
    String startDate,
    String endDate,
  ) {
    return MyCallAdapter<HistoricalBarDataModel>().adapt(
      () => _getHistoricalBarData(symbols, timeFrame, startDate, endDate),
    );
  }

  Future<MultiHistoricalBar> _getMultitHistoricalBarData(
    String symbols,
    String timeFrame,
    String startDate,
    String endDate,
  ) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'symbols': symbols,
      r'timeFrame': timeFrame,
      r'startDate': startDate,
      r'endDate': endDate,
    };
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<Result<MultiHistoricalBar>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/v2/stocks/bars?limit=1000&adjustment=raw&feed=iex&sort=asc',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late MultiHistoricalBar _value;
    try {
      _value = MultiHistoricalBar.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<Result<MultiHistoricalBar>> getMultitHistoricalBarData(
    String symbols,
    String timeFrame,
    String startDate,
    String endDate,
  ) {
    return MyCallAdapter<MultiHistoricalBar>().adapt(
      () => _getMultitHistoricalBarData(symbols, timeFrame, startDate, endDate),
    );
  }

  Future<LatestBarDataModel> _getLatestBarData(String symbol) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'symbol': symbol};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<Result<LatestBarDataModel>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/v2/stocks/bars/latest',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late LatestBarDataModel _value;
    try {
      _value = LatestBarDataModel.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<Result<LatestBarDataModel>> getLatestBarData(String symbol) {
    return MyCallAdapter<LatestBarDataModel>().adapt(
      () => _getLatestBarData(symbol),
    );
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }

  String _combineBaseUrls(String dioBaseUrl, String? baseUrl) {
    if (baseUrl == null || baseUrl.trim().isEmpty) {
      return dioBaseUrl;
    }

    final url = Uri.parse(baseUrl);

    if (url.isAbsolute) {
      return url.toString();
    }

    return Uri.parse(dioBaseUrl).resolveUri(url).toString();
  }
}
