import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:carey/src/core/helpers/auth_validator_regex.dart';
import 'package:carey/src/core/helpers/extensions.dart';
import 'package:carey/src/core/themes/app_colors.dart';
import 'package:carey/src/core/themes/app_text_styles.dart';
import 'package:carey/src/core/utils/app_strings.dart';
import 'package:carey/src/core/widgets/my_sized_box.dart';
import 'package:carey/src/features/auth/data/models/contact_details.dart';
import 'package:carey/src/features/auth/presentation/cubits/forgot_password/forgot_password_cubit.dart';

class ContactDetailsItem extends StatelessWidget {
  const ContactDetailsItem({
    super.key,
    required this.contact,
    required this.isSelected,
    required this.index,
  });

  final ContactDetails contact;
  final bool isSelected;
  final int index;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      decoration: BoxDecoration(
        color: AppColors.grey.withOpacity(0.25),
        borderRadius: BorderRadius.circular(10.r),
        border: Border.all(
          color: isSelected
              ? AppColors.primaryColor
              : Colors.black.withOpacity(0.1),
          width: isSelected ? 2.5.w : 1.w,
        ),
      ),
      child: MaterialButton(
        onPressed: contact.contact.isNullOrEmpty
            ? null
            : () => context
                .read<ForgotPasswordCubit>()
                .updateSelectedContactDetails(index),
        padding: EdgeInsets.symmetric(
          vertical: 34.h,
          horizontal: 26.w,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 31.r,
              backgroundColor: AppColors.colorD9D9D9,
              child: SvgPicture.asset(contact.icon),
            ),
            MySizedBox.width27,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${AppStrings.via} ${contact.name}:',
                    style: AppTextStyles.font13Regular.copyWith(
                      color: Colors.black.withOpacity(0.56),
                    ),
                  ),
                  MySizedBox.height8,
                  Text(
                    _contactText(),
                    style: AppTextStyles.font13Regular,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  String _contactText() {
    return contact.contact.isNullOrEmpty
        ? AppStrings.youDontHavePhoneNumber
        : (_isEmail(contact.contact!)
            ? _maskEmail(contact.contact!)
            : _maskPhoneNumber(contact.contact!));
  }

  bool _isEmail(String text) => AuthValidatorRegex.isEmailValid(text);

  String _maskPhoneNumber(String phoneNumber) {
    if (phoneNumber.length < 5) return phoneNumber; // Ensuring minimum length
    return '${phoneNumber.substring(0, 5)}*****${phoneNumber.substring(phoneNumber.length - 2)}';
  }

  String _maskEmail(String email) {
    final parts = email.split('@');
    final namePart = parts[0];
    final domainPart = parts[1];
    final visiblePart =
        '${namePart.substring(0, 4)}*****${namePart.substring(namePart.length - 2)}'; // Show first 4 characters
    return '$visiblePart@$domainPart';
  }
}
