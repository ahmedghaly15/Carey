import 'package:carey/src/core/themes/app_colors.dart';
import 'package:carey/src/core/themes/app_text_styles.dart';
import 'package:carey/src/core/utils/app_strings.dart';
import 'package:carey/src/core/widgets/my_sized_box.dart';
import 'package:carey/src/features/auth/data/models/social_login_method.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginViaSocialButton extends StatelessWidget {
  const LoginViaSocialButton({
    super.key,
    required this.method,
  });

  final SocialLoginMethod method;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadiusDirectional.circular(20.0.r),
        border: Border.all(
          color: AppColors.primaryColor.withAlpha(26),
          width: 1.w,
        ),
      ),
      child: MaterialButton(
        onPressed: method.onPressed,
        padding: EdgeInsetsDirectional.symmetric(
          vertical: 14.0.h,
          horizontal: 14.0.w,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusDirectional.circular(20.0.r),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(method.svgIcon),
            MySizedBox.width7,
            Text(
              method.name == AppStrings.google
                  ? "${AppStrings.continueWith} ${method.name}    "
                  : "${AppStrings.continueWith} ${method.name}",
              style: AppTextStyles.font18Regular,
            )
          ],
        ),
      ),
    );
  }
}
