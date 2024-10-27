import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:carey/src/core/utils/app_constants.dart';
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
        AppConstants.forgotPassContactDetails.length,
        (index) => ContactDetailsItem(
          contact: AppConstants.forgotPassContactDetails[index],
        ),
      ),
    );
  }
}
