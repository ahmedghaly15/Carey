import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:carey/src/features/auth/presentation/cubits/forgot_password/forgot_password_cubit.dart';
import 'package:carey/src/features/auth/presentation/cubits/forgot_password/forgot_password_state.dart';
import 'package:carey/src/features/auth/presentation/widgets/forgot_password/contact_details_item.dart';

class ContactDetailsList extends StatelessWidget {
  const ContactDetailsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 23.h,
      runSpacing: 23.w,
      alignment: WrapAlignment.start,
      runAlignment: WrapAlignment.start,
      verticalDirection: VerticalDirection.down,
      children: List.generate(
        context.read<ForgotPasswordCubit>().contactDetails!.length,
        (index) => BlocSelector<ForgotPasswordCubit, ForgotPasswordState, int>(
          selector: (state) => state.selectedContactDetailsIndex,
          builder: (context, selectedContactDetailsIndex) => ContactDetailsItem(
            contact: context.read<ForgotPasswordCubit>().contactDetails![index],
            index: index,
            isSelected: selectedContactDetailsIndex == index,
          ),
        ),
      ),
    );
  }
}
