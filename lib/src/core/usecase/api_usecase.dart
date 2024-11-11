import 'package:carey/src/core/api/api_result.dart';
import 'package:dio/dio.dart';

class NoParams {
  const NoParams();
}

abstract class ApiUseCase<Type, Params, CancelRequest extends CancelToken?> {
  Future<ApiResult<Type>> call(
    Params params, [
    CancelRequest? cancelToken,
  ]);
}

abstract class BaseUseCase<Type, Params> {
  Future<Type> call(Params params);
}
