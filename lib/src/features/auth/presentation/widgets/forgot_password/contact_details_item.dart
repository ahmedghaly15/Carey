import 'package:carey/src/core/themes/app_colors.dart';
import 'package:carey/src/core/themes/app_text_styles.dart';
import 'package:carey/src/core/utils/app_assets.dart';
import 'package:carey/src/core/utils/app_strings.dart';
import 'package:carey/src/core/widgets/my_sized_box.dart';
import 'package:carey/src/features/auth/data/models/contact_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ContactDetailsItem extends StatelessWidget {
  const ContactDetailsItem({
    super.key,
    required this.contact,
  });

  final ContactDetails contact;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.grey.withOpacity(0.25),
        borderRadius: BorderRadius.circular(10.r),
        border: Border.all(
          color: Colors.black.withOpacity(0.1),
          width: 1.w,
        ),
      ),
      child: MaterialButton(
        onPressed: () {},
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
              child: SvgPicture.asset(Assets.svgsSmsIcon),
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
                    '+2010977****85',
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
}
