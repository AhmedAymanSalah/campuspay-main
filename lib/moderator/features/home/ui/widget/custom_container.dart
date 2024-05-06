import 'package:campuspay/core/theme/colors.dart';
import 'package:campuspay/core/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomContainer extends StatelessWidget {
  final String titel;
  final String text;
  final Image assetImagePath;

  const CustomContainer(
      {super.key,
      required this.titel,
      required this.text,
      required this.assetImagePath});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 100.h,
        width: 200.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          children: [
            assetImagePath,
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomTextWidget(
                  text: titel,
                  color: ColorsManager.darkGrey,
                  fontSize: 14,
                ),
                CustomTextWidget(
                  text: text,
                  color: ColorsManager.darkBlue,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
