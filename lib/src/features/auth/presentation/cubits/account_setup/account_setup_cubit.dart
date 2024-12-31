import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:carey/src/core/services/location_service.dart';
import 'package:carey/src/core/usecase/api_usecase.dart';
import 'package:carey/src/core/utils/app_constants.dart';
import 'package:carey/src/features/auth/data/models/update_profile_params.dart';
import 'package:carey/src/features/auth/domain/usecases/fetch_my_profile.dart';
import 'package:carey/src/features/auth/domain/usecases/pick_compressed_img.dart';
import 'package:carey/src/features/auth/domain/usecases/update_profile_details.dart';
import 'package:carey/src/features/auth/domain/usecases/update_profile_img.dart';
import 'package:carey/src/features/auth/presentation/cubits/account_setup/account_setup_state.dart';

class AccountSetupCubit extends Cubit<AccountSetupState> {
  final UpdateProfileDetails updateProfileDetailsUseCase;
  final UpdateProfileImg updateProfileImgUseCase;
  final PickCompressedImg pickCompressedImgUseCase;
  final FetchMyProfile fetchMyProfileUseCase;

  AccountSetupCubit({
    required this.updateProfileDetailsUseCase,
    required this.updateProfileImgUseCase,
    required this.pickCompressedImgUseCase,
    required this.fetchMyProfileUseCase,
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
  late final FocusNode nickNameFocusNode;
  late final FocusNode addressFocusNode;
  late final FocusNode phoneFocusNode;

  void getCountryCode() async {
    final countryCode = await LocationService.getAndCacheCountryCode();
    emit(state.copyWith(
      status: AccountSetupStateStatus.getCountryCode,
      countryCode: countryCode,
    ));
  }

  Future<void> _updateProfileDetails() async {
    emit(state.copyWith(status: AccountSetupStateStatus.updateProfileLoading));
    final result = await updateProfileDetailsUseCase(
      UpdateProfileParams(
        fullName: fullNameController.text.trim(),
        nickName: nickNameController.text.trim(),
        address: addressController.text.trim(),
        phone: phoneNumber,
        gender: genderController.text,
      ),
      _cancelToken,
    );
    result.when(
      success: (_) => emit(state.copyWith(
        careyUser: currentUserData!.user.copyWith(
          fullName: fullNameController.text.trim(),
          nickName: nickNameController.text.trim(),
          address: addressController.text.trim(),
          phone: phoneNumber,
          gender: genderController.text,
        ),
        status: AccountSetupStateStatus.updateProfileSuccess,
      )),
      failure: (failure) => emit(state.copyWith(
        status: AccountSetupStateStatus.updateProfileError,
        error: failure.error[0],
      )),
    );
  }

  void pickProfileImg() async {
    final pickedCompressedImg =
        await pickCompressedImgUseCase(const NoParams());
    if (pickedCompressedImg != null) {
      emit(state.copyWith(
        status: AccountSetupStateStatus.pickProfileImg,
        pickedProfileImg: File(pickedCompressedImg.path),
      ));
    }
  }

  Future<void> _fetchMyProfile() async {
    emit(state.copyWith(
      status: AccountSetupStateStatus.fetchMyProfileLoading,
    ));
    final result = await fetchMyProfileUseCase(const NoParams(), _cancelToken);
    result.when(
      success: (user) => emit(state.copyWith(
        status: AccountSetupStateStatus.fetchMyProfileSuccess,
        careyUser: user,
      )),
      failure: (failure) => emit(state.copyWith(
        status: AccountSetupStateStatus.fetchMyProfileError,
        error: failure.error[0],
      )),
    );
  }

  Future<void> updateProfileImg() async {
    emit(state.copyWith(
      status: AccountSetupStateStatus.updateProfileImgLoading,
    ));
    final result = await updateProfileImgUseCase(
      state.pickedProfileImg!,
      _cancelToken,
    );
    result.when(
      success: (_) async {
        await _fetchMyProfile();
        emit(state.copyWith(
          status: AccountSetupStateStatus.updateProfileImgSuccess,
        ));
      },
      failure: (failure) => emit(state.copyWith(
        status: AccountSetupStateStatus.updateProfileImgError,
        error: failure.error[0],
      )),
    );
  }

  void validateFormAndUpdateProfile() async {
    if (formKey.currentState!.validate()) {
      await _updateProfileDetails();
    } else {
      _alwaysAutovalidateMode();
    }
  }

  void _alwaysAutovalidateMode() {
    emit(state.copyWith(
      status: AccountSetupStateStatus.alwaysAutovalidateMode,
      autovalidateMode: AutovalidateMode.always,
    ));
  }

  void updatePhoneNumber(String phone) {
    phoneNumber = phone;
  }

  void updateGender(String gender) {
    genderController.text = gender;
  }

  void _initFormAttributes() {
    formKey = GlobalKey<FormState>();
    fullNameController = TextEditingController();
    nickNameController = TextEditingController();
    addressController = TextEditingController();
    genderController = TextEditingController();
    nickNameFocusNode = FocusNode();
    addressFocusNode = FocusNode();
    phoneFocusNode = FocusNode();
  }

  void _disposeFormAttributes() {
    fullNameController.dispose();
    nickNameController.dispose();
    addressController.dispose();
    genderController.dispose();
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
