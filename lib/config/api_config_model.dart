class ApiConfigModel {
  final Map<String, String>? _header;
  final String? _hostURL;
  ApiConfigModel({Map<String, String>? header,String? hostURL})
      : _header = header,
        _hostURL = hostURL;

  Map<String, String>? get getHeader {
    return _header;
  }

  String? get getHostUrl {
    return _hostURL;
  }
}
