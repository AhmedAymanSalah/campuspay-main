import 'package:campuspay/core/helpers/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/widgets/custom_text_widget.dart';

class CustomInfoContainer extends StatelessWidget {
  final String title;
  final String content;

  const CustomInfoContainer({
    super.key,
    required this.title,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextWidget(
          text: title,
          fontSize: 10.sp,
          color: ColorsManager.gray,
        ),
        verticalSpace(8),
        SizedBox(
          height: 200.0.w,
          width: 200.w, // Fixed height for the container
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: ColorsManager.green, width: 2.5.h),
              borderRadius: BorderRadius.circular(25),
              color: Colors.white,
            ),
            padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                verticalSpace(10),
                Expanded(
                  // Use Expanded to allow content to take up remaining space
                  child: SingleChildScrollView(
                    child: CustomTextWidget(
                      text: content,
                      fontSize: 12.sp,
                      textAlign: TextAlign.center,
                      color: ColorsManager.darkBlue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
