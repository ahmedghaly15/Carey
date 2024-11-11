import 'dart:io';

import 'package:dio/dio.dart';
import 'package:image_picker/image_picker.dart';

import 'package:carey/src/core/api/api_error_handler.dart';
import 'package:carey/src/core/api/api_error_message.dart';
import 'package:carey/src/core/api/api_result.dart';
import 'package:carey/src/core/di/dependency_injection.dart';
import 'package:carey/src/core/usecase/base_usecase.dart';
import 'package:carey/src/features/auth/data/models/update_profile_img_params.dart';
import 'package:carey/src/features/auth/data/repositories/account_setup_repo.dart';

class UpdateProfileImg implements BaseUseCase<void, NoParams, CancelToken?> {
  final AccountSetupRepo _accountSetupRepo;

  UpdateProfileImg(this._accountSetupRepo);

  @override
  Future<ApiResult<void>> call(
    NoParams noParams, [
    CancelToken? cancelToken,
  ]) async {
    final pickedImage =
        await getIt.get<ImagePicker>().pickImage(source: ImageSource.gallery);

    if (pickedImage == null) {
      return ApiResult.failure(
        ApiErrorHandler.handle(ApiErrorMessage.defaultError),
      );
    } else {
      return await _accountSetupRepo.updateProfileImg(
        UpdateProfileImgParams(File(pickedImage.path)),
        cancelToken,
      );
    }
  }
}
