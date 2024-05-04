// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:campuspay/core/helpers/extentions.dart';
import 'package:campuspay/core/routes/routes.dart';
import 'package:campuspay/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:campuspay/core/widgets/app_button.dart';

import '../../../core/helpers/spacing.dart';
import '../../../core/widgets/custom_text_form_filed.dart';
import '../../../core/widgets/custom_text_widget.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 50.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          //mainAxisAlignment: MainAxisAlignment.start,
          children: [
            verticalSpace(65),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomTextWidget(
                  text: "Reset Password",
                  fontSize: 24.sp,
                  color: ColorsManager.darkBlue,
                  fontWeight: FontWeight.bold,
                ),
                verticalSpace(8),
                CustomTextWidget(
                  text:
                      "Enter your email, we will send a verification code to email",
                  fontSize: 14.sp,
                  color: ColorsManager.gray,
                  fontWeight: FontWeight.bold,
                ),
              ],
            ),
            verticalSpace(50),
            CustomTextFormFiled(
              textInputType: TextInputType.emailAddress,
              titel: "Email..",
              prefixIcon: Icon(
                Icons.email_outlined,
                size: 18.sp,
              ),
              hintText: "Enter Your Email Address",
            ),
            const Spacer(),
            AppTextButton(
                text: "Go",
                onPressed: () {
                  context.navigateTo(Routes.verificationScreen);
                })
          ],
        ),
      ),
    );
  }
}
