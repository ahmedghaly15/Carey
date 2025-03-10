import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:carey/src/core/themes/app_text_styles.dart';
import 'package:carey/src/core/utils/app_assets.dart';
import 'package:carey/src/core/widgets/decorated_list_tile.dart';
import 'package:carey/src/features/checkout/presentation/widgets/selectable_circular_indicator.dart';
import 'package:carey/src/features/payment_methods/data/models/payment_method.dart';
import 'package:carey/src/features/payment_methods/presentation/cubit/payment_methods_cubit.dart';
import 'package:carey/src/features/payment_methods/presentation/cubit/payment_methods_state.dart';

class PaymentMethodsSliverList extends StatelessWidget {
  const PaymentMethodsSliverList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: _paymentMethods.length,
      itemBuilder: (_, index) => Container(
        margin: EdgeInsets.only(
          bottom: index != _paymentMethods.length - 1 ? 8.h : 0,
        ),
        child: BackInUp(
          delay: Duration(milliseconds: index * 250),
          child: BlocSelector<PaymentMethodsCubit, PaymentMethodsState, bool>(
            selector: (state) {
              return state.selectedPaymentMethod == _paymentMethods[index];
            },
            builder: (context, isSelected) => DecoratedListTile(
              onTap: () => context
                  .read<PaymentMethodsCubit>()
                  .selectPaymentMethod(_paymentMethods[index]),
              leading: SvgPicture.asset(_paymentMethods[index].img),
              title: isSelected
                  ? Row(
                      children: [
                        Expanded(child: Text(_paymentMethods[index].name)),
                        FadeIn(
                          duration: const Duration(milliseconds: 400),
                          child: Text(
                            '\$${(_paymentMethods[index].price).toStringAsFixed(3)}',
                            style: AppTextStyles.poppinsFont15SemiBold,
                          ),
                        ),
                      ],
                    )
                  : Text(_paymentMethods[index].name),
              trailing: SelectableCircularIndicator(isSelected: isSelected),
            ),
          ),
        ),
      ),
    );
  }
}

List<PaymentMethod> _paymentMethods = const [
  PaymentMethod(name: 'My Wallet', img: Assets.svgsWallet, price: 299.644),
  PaymentMethod(name: 'PayPal', img: Assets.svgsPaypal, price: 299.644),
  PaymentMethod(name: 'Google Pay', img: Assets.svgsGooglePay, price: 299.644),
  PaymentMethod(name: 'Apple Pay', img: Assets.svgsApplyPay, price: 299.644),
  PaymentMethod(name: 'MasterCard', img: Assets.svgsMastercard, price: 299.644),
];
