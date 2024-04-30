import 'package:campuspay/core/helpers/extentions.dart';
import 'package:campuspay/core/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helpers/app_images.dart';
import '../../../core/helpers/spacing.dart';
import '../../../core/routes/routes.dart';
import '../../../core/theme/colors.dart';
import '../../../core/widgets/app_button.dart';

class PasswordGhangeedScreen extends StatelessWidget {
  const PasswordGhangeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        height: double.infinity.h,
        width: double.infinity.h,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(Assets.imagesBackgrond), fit: BoxFit.cover)),
        child: Padding(
          padding:
              EdgeInsets.only(top: 65.h, left: 25.h, bottom: 30.h, right: 25.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              Image.asset(Assets.imagesCorrect),
              verticalSpace(25),
              CustomTextWidget(
                text: "Password Changed",
                color: Colors.white,
                fontSize: 22.sp,
                fontWeight: FontWeight.bold,
              ),
              verticalSpace(25),
              CustomTextWidget(
                text:
                    "Password changed successfully, you can login again with a new password",
                color: ColorsManager.lightGray,
                fontSize: 16.sp,
              ),
              const Spacer(),
              AppTextButton(
                onPressed: () {
                  context.navigateTo(Routes.loginScreen);
                },
                text: "Login",
              )
            ],
          ),
        ),
      ),
    );
  }
}