import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

import 'package:carey/src/core/helpers/extensions.dart';
import 'package:carey/src/core/helpers/text_form_validator.dart';
import 'package:carey/src/core/themes/app_colors.dart';
import 'package:carey/src/core/themes/app_text_styles.dart';
import 'package:carey/src/core/utils/app_constants.dart';
import 'package:carey/src/core/utils/app_strings.dart';
import 'package:carey/src/core/widgets/custom_text_form_field.dart';
import 'package:carey/src/core/widgets/my_sized_box.dart';
import 'package:carey/src/features/auth/presentation/cubits/account_setup/account_setup_cubit.dart';

class AccountSetupForm extends StatelessWidget {
  const AccountSetupForm({super.key});

  @override
  Widget build(BuildContext context) {
    final accountSetupCubit = context.read<AccountSetupCubit>();
    return Padding(
      padding: AppConstants.screenHorizontalPadding,
      child: BlocBuilder<AccountSetupCubit, AutovalidateMode>(
        buildWhen: (_, current) => current != AutovalidateMode.disabled,
        builder: (_, state) => Form(
          key: accountSetupCubit.formKey,
          autovalidateMode: state,
          child: Column(
            children: [
              CustomTextFormField(
                controller: accountSetupCubit.fullNameController,
                focusNode: accountSetupCubit.fullNameFocusNode,
                textCapitalization: TextCapitalization.words,
                hintText: AppStrings.fullName,
                autofillHints: const [AutofillHints.name],
                onEditingComplete: () => context.requestFocus(
                  accountSetupCubit.nickNameFocusNode,
                ),
                validate: (value) => TextFormValidator.validateField(value,
                    fieldName: AppStrings.fullName),
              ),
              MySizedBox.height16,
              CustomTextFormField(
                controller: accountSetupCubit.nickNameController,
                focusNode: accountSetupCubit.nickNameFocusNode,
                hintText: AppStrings.nickName,
                autofillHints: const [AutofillHints.nickname],
                onEditingComplete: () => context.requestFocus(
                  accountSetupCubit.addressFocusNode,
                ),
                validate: (value) => TextFormValidator.validateField(value,
                    fieldName: AppStrings.nickName),
              ),
              MySizedBox.height16,
              CustomTextFormField(
                controller: accountSetupCubit.addressController,
                focusNode: accountSetupCubit.addressFocusNode,
                textCapitalization: TextCapitalization.words,
                keyboardType: TextInputType.streetAddress,
                hintText: AppStrings.address,
                autofillHints: const [AutofillHints.addressCityAndState],
                onEditingComplete: () => context.requestFocus(
                  accountSetupCubit.phoneFocusNode,
                ),
                validate: (value) => TextFormValidator.validateField(value,
                    fieldName: AppStrings.address),
              ),
              MySizedBox.height16,
              InternationalPhoneNumberInput(
                onInputChanged: (phoneNumber) {
                  accountSetupCubit.updatePhoneNumber(phoneNumber.phoneNumber!);
                },
                // initialValue: PhoneNumber(isoCode: 'EG'), TODO: handle initial value
                selectorConfig: const SelectorConfig(
                  selectorType: PhoneInputSelectorType.DIALOG,
                  showFlags: true,
                  useEmoji: true,
                  trailingSpace: false,
                  setSelectorButtonAsPrefixIcon: false,
                ),
                inputDecoration: InputDecoration(
                  filled: true,
                  fillColor: AppColors.textFormFieldFillColor,
                  border: AppConstants.textFormFieldOutlineBorder,
                  enabledBorder: AppConstants.textFormFieldOutlineBorder,
                  focusedBorder: AppConstants.textFormFieldOutlineBorder,
                  errorBorder: AppConstants.textFormFieldOutlineBorder,
                  focusedErrorBorder: AppConstants.textFormFieldOutlineBorder,
                  disabledBorder: AppConstants.textFormFieldOutlineBorder,
                  contentPadding: AppConstants.textFormFieldHorizontalPadding,
                  hintText: AppStrings.phone,
                  hintStyle: AppTextStyles.hintTextStyle,
                ),
                focusNode: accountSetupCubit.phoneFocusNode,
                autofillHints: const [AutofillHints.telephoneNumber],
                autoValidateMode: state,
                ignoreBlank: false,
                formatInput: true,
                validator: (value) => TextFormValidator.validateField(
                  value,
                  fieldName: AppStrings.phone,
                ),
              ),
              MySizedBox.height16,
              DropdownButtonFormField<String>(
                hint: Text(
                  AppStrings.gender,
                  style: AppTextStyles.hintTextStyle,
                ),
                autovalidateMode: state,
                items: AppConstants.genderDropdownItems,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: AppColors.textFormFieldFillColor,
                  border: AppConstants.textFormFieldOutlineBorder,
                  enabledBorder: AppConstants.textFormFieldOutlineBorder,
                  focusedBorder: AppConstants.textFormFieldOutlineBorder,
                  errorBorder: AppConstants.textFormFieldOutlineBorder,
                  focusedErrorBorder: AppConstants.textFormFieldOutlineBorder,
                  disabledBorder: AppConstants.textFormFieldOutlineBorder,
                  contentPadding: AppConstants.textFormFieldHorizontalPadding,
                ),
                iconEnabledColor: AppColors.primaryColor.withOpacity(0.25),
                style: AppTextStyles.font13Regular.copyWith(
                  color: Colors.black,
                ),
                onChanged: (gender) => accountSetupCubit.updateGender(gender!),
                validator: (value) => TextFormValidator.validateField(
                  value,
                  fieldName: AppStrings.gender,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
