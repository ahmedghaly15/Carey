import 'package:carey/src/features/home/data/datasource/home_local_datasource.dart';
import 'package:dio/dio.dart';

import 'package:carey/src/core/api/api_result.dart';
import 'package:carey/src/core/utils/functions/execute_and_handle_errors.dart';
import 'package:carey/src/features/home/data/api/home_api_service.dart';
import 'package:carey/src/features/home/data/models/fetch_home_response.dart';
import 'package:flutter/material.dart';

class HomeRepo {
  final HomeApiService _homeApiService;
  final HomeLocalDataSource _homeLocalDataSource;

  HomeRepo(this._homeApiService, this._homeLocalDataSource);

  Future<ApiResult<HomeResponseData>> fetchHome([
    CancelToken? cancelToken,
  ]) async {
    final cachedHomeData = await _homeLocalDataSource.retrieveCachedHomeData();
    if (cachedHomeData == null) {
      debugPrint('*#*#*#*#* NO CACHED HOME DATA TO RETRIEVE *#*#*#*#*');
      return executeAndHandleErrors<HomeResponseData>(() async {
        final response = await _homeApiService.fetchHome(cancelToken);
        await _homeLocalDataSource.cacheHomeData(response.data);
        return response.data;
      });
    } else {
      return ApiResult.success(cachedHomeData);
    }
  }
}
