import 'package:campuspay/core/helpers/spacing.dart';
import 'package:campuspay/core/theme/colors.dart';
import 'package:campuspay/core/utils/constant.dart';
import 'package:campuspay/core/widgets/custom_text_widget.dart';
import 'package:campuspay/features/login/ui/screen/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/shared_preference.dart';

class LogOut extends StatelessWidget {
  const LogOut({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        SharedPreference.removeData(key: 'token').then((value) => {
          if (value)
            navigateAndFinish(context, const LoginScreen()),
        });
      },
      child: Container(
        height: 60.h,
        width: 200.h,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CustomTextWidget(
              text: "LogOut",
              color: ColorsManager.red,
              fontWeight: FontWeight.bold,
            ),
            horizontalSpace(15),
            const Icon(
              Icons.logout,
              color: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}
