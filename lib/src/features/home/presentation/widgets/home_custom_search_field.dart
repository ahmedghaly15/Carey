import 'package:flutter/material.dart';

import 'package:carey/src/core/themes/app_colors.dart';
import 'package:carey/src/core/utils/app_strings.dart';
import 'package:carey/src/core/widgets/custom_text_form_field.dart';

class HomeCustomSearchField extends StatelessWidget {
  const HomeCustomSearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      borderRadius: 15,
      fillColor: AppColors.grey.withOpacity(0.76),
      borderColor: AppColors.grey.withOpacity(0.76),
      prefixIcon: const Icon(Icons.search),
      hintText: AppStrings.search,
      suffixIcon: IconButton(
        onPressed: () {},
        icon: const Icon(Icons.tune),
      ),
    );
  }
}
