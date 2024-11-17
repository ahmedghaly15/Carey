import 'dart:io';

import 'package:carey/src/core/utils/app_assets.dart';
import 'package:carey/src/core/widgets/account_default_image.dart';
import 'package:carey/src/features/auth/presentation/cubits/account_setup/account_setup_cubit.dart';
import 'package:carey/src/features/auth/presentation/cubits/account_setup/account_setup_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AccountImage extends StatelessWidget {
  const AccountImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomEnd,
      children: [
        BlocSelector<AccountSetupCubit, AccountSetupState, File?>(
          selector: (state) => state.pickedProfileImg,
          builder: (context, pickedProfileImg) => pickedProfileImg == null
              ? const AccountDefaultImage()
              : CircleAvatar(
                  radius: 65.r,
                  backgroundImage: FileImage(pickedProfileImg) as ImageProvider,
                ),
        ),
        IconButton(
          onPressed: () => context.read<AccountSetupCubit>().pickProfileImg(),
          icon: SvgPicture.asset(Assets.svgsEditImageIcon),
        ),
      ],
    );
  }
}
