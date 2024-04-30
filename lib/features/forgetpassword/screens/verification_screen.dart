import 'package:campuspay/core/helpers/extentions.dart';
import 'package:campuspay/core/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helpers/app_images.dart';
import '../../../core/helpers/spacing.dart';
import '../../../core/routes/routes.dart';
import '../../../core/theme/colors.dart';
import '../../../core/widgets/app_button.dart';
import '../widget/otp_form.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({super.key});

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
            children: [
              verticalSpace(25),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomTextWidget(
                    text: "Verify Code",
                    fontSize: 24.sp,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  verticalSpace(20),
                  CustomTextWidget(
                    text:
                        "Please enter the code we just sent to email ak***@fayoum.edu.eg",
                    fontSize: 14.sp,
                    color: ColorsManager.lightGray,
                    fontWeight: FontWeight.bold,
                  ),
                ],
              ),
              verticalSpace(35),
              const OtpForm(),
              verticalSpace(20),
              CustomTextWidget(
                text: "Resend code in : 00:48",
                fontSize: 14.sp,
                color: ColorsManager.lightGray,
                fontWeight: FontWeight.bold,
              ),
              const Spacer(),
              AppTextButton(
                onPressed: () {
                  context.navigateTo(Routes.newPasswordScreen);
                },
                text: "Continue",
              )
            ],
          ),
        ),
      ),
    );
  }
}
