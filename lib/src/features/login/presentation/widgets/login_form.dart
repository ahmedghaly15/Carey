import 'package:flutter/material.dart';

import 'package:carey/src/core/widgets/custom_text_form_field.dart';
import 'package:carey/src/core/widgets/my_sized_box.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Form(
      child: Column(
        children: [
          CustomTextFormField(),
          MySizedBox.height13,
          CustomTextFormField(),
        ],
      ),
    );
  }
}
