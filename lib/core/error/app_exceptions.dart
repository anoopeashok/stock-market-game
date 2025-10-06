
class ResponseError implements Exception {
  final String message;

  ResponseError(this.message);
}

class NotFoundError implements Exception {
  final String message;
  NotFoundError({this.message = "Not found"});
}

class NetworkError implements Exception {
  final String message;
  NetworkError(this.message);
}

class UnKnownError implements Exception {
  final String message;
  UnKnownError({this.message = "Something went wrong"});
}

class UnAuthorisedError implements Exception {
  final String message;
  UnAuthorisedError({this.message = "User not authorised"});
}
