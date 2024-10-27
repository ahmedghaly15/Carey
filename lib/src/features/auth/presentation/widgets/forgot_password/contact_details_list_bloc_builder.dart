import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:carey/src/core/utils/app_constants.dart';
import 'package:carey/src/features/auth/presentation/cubits/forgot_password/forgot_password_cubit.dart';
import 'package:carey/src/features/auth/presentation/cubits/forgot_password/forgot_password_state.dart';
import 'package:carey/src/features/auth/presentation/widgets/forgot_password/contact_details_item.dart';

class ContactDetailsListBlocBuilder extends StatelessWidget {
  const ContactDetailsListBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ForgotPasswordCubit, ForgotPasswordState>(
      buildWhen: (_, current) =>
          current.status ==
          ForgotPasswordStateStatus.updateSelectedContactDetails,
      builder: (_, state) => Wrap(
        spacing: 23.h,
        runSpacing: 23.w,
        alignment: WrapAlignment.start,
        runAlignment: WrapAlignment.start,
        verticalDirection: VerticalDirection.down,
        children: List.generate(
          AppConstants.forgotPassContactDetails.length,
          (index) => ContactDetailsItem(
            contact: AppConstants.forgotPassContactDetails[index],
            index: index,
            isSelected: state.selectedContactDetailsIndex == index,
          ),
        ),
      ),
    );
  }
}
