import 'package:campuspay/core/helpers/app_images.dart';
import 'package:campuspay/core/helpers/spacing.dart';
import 'package:campuspay/core/theme/colors.dart';
import 'package:campuspay/core/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DeletAndExportContainer extends StatelessWidget {
  const DeletAndExportContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomTextWidget(
          text: "Student Information",
          color: ColorsManager.mainBlue,
          fontWeight: FontWeight.bold,
          fontSize: 25,
        ),
        verticalSpace(30),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 60.h,
              width: 120.h,
              decoration: BoxDecoration(
                border: Border.all(
                  color: ColorsManager.whitblue,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Image(image: AssetImage(Assets.imagesExport)),
                  horizontalSpace(8),
                  const CustomTextWidget(
                    text: "Export",
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: ColorsManager.darkBlue,
                  ),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
