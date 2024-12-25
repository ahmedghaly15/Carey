import 'package:auto_route/auto_route.dart';
import 'package:carey/src/core/themes/app_text_styles.dart';
import 'package:carey/src/core/widgets/primary_button.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class OrdersView extends StatefulWidget {
  const OrdersView({super.key});

  @override
  State<OrdersView> createState() => _OrdersViewState();
}

class _OrdersViewState extends State<OrdersView> {
  String deviceToken = 'Device Token';
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 24.h,
        children: [
          Center(
            child: Text(
              deviceToken,
              style: AppTextStyles.font20Regular,
            ),
          ),
          PrimaryButton(
            text: "Get Device Token",
            onPressed: () async {
              FirebaseMessaging messaging = FirebaseMessaging.instance;
              String? token = await messaging.getToken();
              setState(() {
                deviceToken = token ?? 'Device Token';
              });
            },
          ),
          PrimaryButton(
            isOutlined: true,
            text: "Copy Device Token",
            onPressed: () async {
              await Clipboard.setData(ClipboardData(text: deviceToken));
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Device Token copied to clipboard'),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
