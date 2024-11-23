import 'package:dio/dio.dart';

import 'package:carey/src/core/api/api_result.dart';
import 'package:carey/src/core/utils/functions/execute_and_handle_errors.dart';
import 'package:carey/src/features/home/data/api/home_api_service.dart';
import 'package:carey/src/features/home/data/models/fetch_home_response.dart';

class HomeRepo {
  final HomeApiService _homeApiService;

  HomeRepo(this._homeApiService);

  Future<ApiResult<HomeResponseData>> fetchHome([
    CancelToken? cancelToken,
  ]) {
    return executeAndHandleErrors<HomeResponseData>(() async {
      final homeResponse = await _homeApiService.fetchHome(cancelToken);
      return homeResponse.data;
    });
  }
}
