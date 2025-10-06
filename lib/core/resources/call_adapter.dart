  import 'package:retrofit/call_adapter.dart';

import 'result.dart';

class MyCallAdapter<T> extends CallAdapter<Future<T>, Future<Result<T>>> {
    @override
    Future<Result<T>> adapt(Future<T> Function() call) async {
      try {
        final response = await call();
        return Result<T>.ok(response);
      } catch (e) {
        return Result.error(Exception(e.toString()));
      }
    }
  }