import 'package:carey/src/core/api/api_result.dart';
import 'package:dio/dio.dart';

abstract class BaseUseCase<Type, Params, CancelRequest extends CancelToken?> {
  Future<ApiResult<Type>> call(
    Params params, [
    CancelRequest? cancelToken,
  ]);
}

class NoParams {
  const NoParams();
}
