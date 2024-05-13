import 'package:campuspay/core/helpers/spacing.dart';
import 'package:campuspay/core/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theme/colors.dart';

class WelcomeAdmin extends StatelessWidget {
  const WelcomeAdmin({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTextWidget(
            text: "Good Morning,",
            fontSize: 12.sp,
            color: ColorsManager.gray,
          ),
          CustomTextWidget(
            text: "Ahmed Ayman",
            fontSize: 18.sp,
            color: ColorsManager.darkBlue,
            fontWeight: FontWeight.bold,
          ),
          verticalSpace(7),
          CustomTextWidget(
            text: "Administrator",
            color: ColorsManager.mainBlue,
            fontSize: 14.sp,
          ),
        ],
      ),
    );
  }
}
