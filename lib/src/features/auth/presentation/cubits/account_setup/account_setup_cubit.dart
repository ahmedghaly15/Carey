import 'package:auto_route/auto_route.dart';
import 'package:carey/src/core/router/app_router.dart';
import 'package:carey/src/core/services/location_service.dart';
import 'package:carey/src/features/auth/data/models/update_profile_params.dart';
import 'package:carey/src/features/auth/presentation/cubits/account_setup/account_setup_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AccountSetupCubit extends Cubit<AccountSetupState> {
  AccountSetupCubit() : super(AccountSetupState.initial()) {
    _initFormAttributes();
  }

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

  void getCountryCode() async {
    final countryCode = await LocationService.getAndCacheCountryCode();
    emit(state.copyWith(
      status: AccountSetupStateStatus.getCountryCode,
      countryCode: countryCode,
    ));
  }

  void continueToSetFingerprint(BuildContext context) {
    if (formKey.currentState!.validate()) {
      final updateProfileParams = UpdateProfileParams(
        fullName: fullNameController.text.trim(),
        nickName: nickNameController.text.trim(),
        address: addressController.text,
        phone: phoneNumber,
        gender: genderController.text,
      );
      context.pushRoute(
        SetFingerprintRoute(updateProfileParams: updateProfileParams),
      );
    } else {
      emit(state.copyWith(
        status: AccountSetupStateStatus.alwaysAutovalidateMode,
        autovalidateMode: AutovalidateMode.always,
      ));
    }
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
    return super.close();
  }
}
