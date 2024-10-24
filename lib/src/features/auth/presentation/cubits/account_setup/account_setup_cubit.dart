import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AccountSetupCubit extends Cubit<AutovalidateMode> {
  AccountSetupCubit() : super(AutovalidateMode.disabled) {
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

  void continueToSetFingerprint(VoidCallback continueCallback) {
    if (formKey.currentState!.validate()) {
      continueCallback();
    } else {
      emit(AutovalidateMode.always);
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
