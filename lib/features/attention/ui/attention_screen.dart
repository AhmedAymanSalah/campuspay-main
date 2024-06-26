// ignore_for_file: file_names

import 'package:campuspay/core/utils/constant.dart';
import 'package:campuspay/features/attention/ui/widget/text1_2.dart';
import 'package:campuspay/features/login/ui/screen/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:campuspay/core/theme/colors.dart';
import '../../../core/widgets/app_button.dart';
import '../../../core/widgets/custom_text_widget.dart';

class AttentionScreen extends StatelessWidget {
  const AttentionScreen({super.key});
  static String id = "AttentionPage";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              /////////////  text Attention

              CustomTextWidget(
                text: "Attention!!",
                decoration: TextDecoration.underline,
                fontSize: 20.sp,
                fontWeight: FontWeight.bold,
              ),

              /////////// text one
              const AttentionText(),

              //////////////// icon warnning and text
              CustomTextWidget(
                text:
                    "⚠️ You can find your college email in your university card OR request it from your building college.",
                fontSize: 18.sp,
                color: ColorsManager.mainBlue,
                fontWeight: FontWeight.bold,
                textAlign: TextAlign.start,
              ),
              AppTextButton(
                text: "Start",
                onPressed: () {
                  navigateTo(context, const LoginScreen());
                },
                textColor: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
