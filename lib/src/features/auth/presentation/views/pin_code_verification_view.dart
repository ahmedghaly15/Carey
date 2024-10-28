import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';

import 'package:carey/src/core/themes/app_colors.dart';
import 'package:carey/src/core/themes/app_text_styles.dart';
import 'package:carey/src/core/utils/app_constants.dart';
import 'package:carey/src/core/utils/app_strings.dart';
import 'package:carey/src/core/widgets/custom_sliver_app_bar.dart';
import 'package:carey/src/core/widgets/my_sized_box.dart';
import 'package:carey/src/core/widgets/primary_button.dart';

@RoutePage()
class PinCodeVerificationView extends StatelessWidget {
  const PinCodeVerificationView({
    super.key,
    this.contactType = AppStrings.email,
  });

  final String contactType;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          const CustomSliverAppBar(titleText: AppStrings.verification),
          SliverPadding(
            padding: AppConstants.screenHorizontalPadding,
            sliver: SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Spacer(),
                  Text(
                    '${AppStrings.pinCodeHasBeenSent}. ${AppStrings.checkYour} $contactType',
                    style: AppTextStyles.font16Regular,
                  ),
                  MySizedBox.height53,
                  Pinput(
                    // controller: controller,
                    pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
                    showCursor: true,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    defaultPinTheme: PinTheme(
                      textStyle: AppTextStyles.font25SemiBold,
                      height: 60.0.h,
                      width: 60.0.w,
                      decoration: BoxDecoration(
                        color: AppColors.colorD9D9D9.withOpacity(0.6),
                        borderRadius: BorderRadiusDirectional.circular(15.0),
                      ),
                    ),
                    focusedPinTheme: PinTheme(
                      textStyle: AppTextStyles.font25SemiBold,
                      height: 60.0.h,
                      width: 60.0.w,
                      decoration: BoxDecoration(
                        color: AppColors.colorD9D9D9.withOpacity(0.6),
                        borderRadius: BorderRadiusDirectional.circular(15.0),
                        border: Border.all(
                          color: AppColors.primaryColor,
                          width: 2.w,
                        ),
                      ),
                    ),
                    // onCompleted: (onCompleted),
                    length: 6,
                  ),
                  const Spacer(flex: 2),
                  PrimaryButton(
                    margin: EdgeInsets.only(bottom: 24.h),
                    onPressed: () {},
                    text: AppStrings.verify,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
