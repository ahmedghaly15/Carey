import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:image_picker/image_picker.dart';

import 'package:carey/src/core/di/dependency_injection.dart';
import 'package:carey/src/core/utils/app_constants.dart';
import 'package:carey/src/features/auth/data/datasources/auth_local_data_source.dart';
import 'package:carey/src/features/auth/data/models/update_profile_params.dart';
import 'package:carey/src/features/auth/domain/usecases/update_profile_details.dart';
import 'package:carey/src/features/auth/domain/usecases/update_profile_img.dart';
import 'package:carey/src/features/auth/presentation/cubits/account_setup/account_setup_state.dart';

class AccountSetupCubit extends Cubit<AccountSetupState> {
  final UpdateProfileDetails updateProfileDetailsUseCase;
  final UpdateProfileImg updateProfileImgUseCase;

  AccountSetupCubit({
    required this.updateProfileDetailsUseCase,
    required this.updateProfileImgUseCase,
  }) : super(AccountSetupState.initial()) {
    _initFormAttributes();
  }

  final CancelToken _cancelToken = CancelToken();

  late final GlobalKey<FormState> formKey;
  late final TextEditingController fullNameController;
  String? phoneNumber;
  late final TextEditingController nickNameController;
  late final TextEditingController addressController;
  late final TextEditingController genderController;
  late final FocusNode fullNameFocusNode;
  late final FocusNode nickNameFocusNode;
  late final FocusNode addressFocusNode;
  late final FocusNode phoneFocusNode;

  Future<void> _updateProfileDetails() async {
    emit(state.copyWith(status: AccountSetupStateStatus.updateProfileLoading));
    final updateProfileParams = UpdateProfileParams(
      fullName: fullNameController.text.trim(),
      nickName: nickNameController.text.trim(),
      address: addressController.text.trim(),
      phone: phoneNumber,
      gender: genderController.text,
    );
    final result = await updateProfileDetailsUseCase(
      updateProfileParams,
      _cancelToken,
    );
    result.when(
      success: (_) async {
        await _updateCurrentUserDataAndSecureIt();
        emit(
          state.copyWith(
            status: AccountSetupStateStatus.updateProfileSuccess,
            currentUserData: currentUserData,
          ),
        );
      },
      failure: (failure) => emit(
        state.copyWith(
          status: AccountSetupStateStatus.updateProfileError,
          error: failure.error[0],
        ),
      ),
    );
  }

  Future<void> _updateCurrentUserDataAndSecureIt() async {
    currentUserData = currentUserData!.copyWith(
      user: currentUserData!.user.copyWith(
        fullName: fullNameController.text.trim(),
        nickName: nickNameController.text.trim(),
        address: addressController.text.trim(),
        phone: phoneNumber,
        gender: genderController.text,
      ),
    );
    await AuthLocalDataSource.secureUserData(currentUserData!);
  }

  void pickProfileImg() async {
    final pickedImg =
        await getIt.get<ImagePicker>().pickImage(source: ImageSource.gallery);
    if (pickedImg != null) {
      final compressedImg = await FlutterImageCompress.compressAndGetFile(
        pickedImg.path,
        '${pickedImg.path}_compressed.jpg',
        format: CompressFormat.jpeg,
        quality: 70,
      );
      emit(state.copyWith(
        status: AccountSetupStateStatus.pickProfileImg,
        pickedProfileImg: File(compressedImg!.path),
      ));
    }
  }

  Future<void> updateProfileImg() async {
    if (state.pickedProfileImg != null) {
      emit(state.copyWith(
        status: AccountSetupStateStatus.updateProfileImgLoading,
      ));
      final result = await updateProfileImgUseCase(
        state.pickedProfileImg!,
        _cancelToken,
      );
      result.when(
        success: (_) => emit(state.copyWith(
          status: AccountSetupStateStatus.updateProfileImgSuccess,
        )),
        failure: (failure) => emit(state.copyWith(
          status: AccountSetupStateStatus.updateProfileImgError,
          error: failure.error[0],
        )),
      );
    }
  }

  void validateFormAndUpdateProfile() async {
    if (formKey.currentState!.validate()) {
      await _updateProfileDetails();
    } else {
      _alwaysAutovalidateMode();
    }
  }

  void _alwaysAutovalidateMode() {
    emit(
      state.copyWith(
        status: AccountSetupStateStatus.alwaysAutovalidateMode,
        autovalidateMode: AutovalidateMode.always,
      ),
    );
  }

  void updatePhoneNumber(String phone) {
    phoneNumber = phone;
  }

  void updateGender(String gender) {
    genderController.text = gender;
  }

  void _initFormAttributes() {
    formKey = GlobalKey<FormState>();
    _initControllers();
    _initFocusNodes();
  }

  void _initFocusNodes() {
    fullNameFocusNode = FocusNode();
    nickNameFocusNode = FocusNode();
    addressFocusNode = FocusNode();
    phoneFocusNode = FocusNode();
  }

  void _initControllers() {
    fullNameController = TextEditingController();
    nickNameController = TextEditingController();
    addressController = TextEditingController();
    genderController = TextEditingController();
  }

  void _disposeFormAttributes() {
    _disposeControllers();
    _disposeFocusNodes();
  }

  void _disposeControllers() {
    fullNameController.dispose();
    nickNameController.dispose();
    addressController.dispose();
    genderController.dispose();
  }

  void _disposeFocusNodes() {
    fullNameFocusNode.dispose();
    nickNameFocusNode.dispose();
    addressFocusNode.dispose();
    phoneFocusNode.dispose();
  }

  @override
  Future<void> close() {
    _disposeFormAttributes();
    _cancelToken.cancel();
    return super.close();
  }
}
