import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:carey/src/core/themes/app_colors.dart';
import 'package:carey/src/core/themes/app_text_styles.dart';
import 'package:carey/src/core/utils/app_strings.dart';

class AppThemes {
  AppThemes._();

  static ThemeData get lightTheme => ThemeData(
        colorScheme: const ColorScheme.light(primary: AppColors.primaryColor),
        primaryColor: AppColors.primaryColor,
        useMaterial3: true,
        fontFamily: AppStrings.interFontFamily,
        scaffoldBackgroundColor: AppColors.scaffoldBackgroundLightColor,
        brightness: Brightness.light,
        appBarTheme: AppBarTheme(
          backgroundColor: AppColors.scaffoldBackgroundLightColor,
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: AppColors.scaffoldBackgroundLightColor,
            statusBarBrightness: Brightness.light,
            statusBarIconBrightness: Brightness.dark,
          ),
          titleTextStyle: AppTextStyles.poppinsFont25Medium.copyWith(
            color: Colors.black,
          ),
          iconTheme: const IconThemeData(
            color: AppColors.primaryColor,
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: AppColors.primaryColor,
            textStyle: AppTextStyles.poppinsFont14SemiBold,
          ),
        ),
        navigationBarTheme: NavigationBarThemeData(
          backgroundColor: AppColors.colorD9D9D9,
          elevation: 0,
          labelTextStyle: WidgetStateTextStyle.resolveWith((states) {
            if (states.contains(WidgetState.selected)) {
              return AppTextStyles.font15Bold;
            }
            return AppTextStyles.font15Bold
                .copyWith(color: Colors.black.withAlpha(153));
          }),
        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: AppColors.primaryColor,
        ),
        bottomSheetTheme: BottomSheetThemeData(
          backgroundColor: Colors.white,
          showDragHandle: true,
          dragHandleColor: AppColors.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24.r),
          ),
        ),
      );
}
