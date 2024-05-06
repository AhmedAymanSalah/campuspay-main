import 'package:campuspay/core/helpers/app_images.dart';
import 'package:campuspay/core/helpers/spacing.dart';
import 'package:campuspay/core/theme/colors.dart';
import 'package:campuspay/core/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ClenderContainer extends StatelessWidget {
  const ClenderContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 150.h,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: const Color(0xfff4f7fe)),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(Icons.calendar_today_rounded),
                horizontalSpace(10),
                const CustomTextWidget(
                  text: "This Manth",
                  fontSize: 14,
                ),
                horizontalSpace(20),
                const Image(image: AssetImage(Assets.imagesVector13)),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                horizontalSpace(25),
                const Column(
                  children: [
                    CustomTextWidget(
                        text: "\$548.4",
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: ColorsManager.darkBlue),
                    CustomTextWidget(
                      text: "This Manth",
                      fontSize: 14,
                    ),
                  ],
                ),
                horizontalSpace(45),
                const Image(image: AssetImage(Assets.imagesVector14)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
