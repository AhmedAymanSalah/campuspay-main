import 'package:campuspay/core/helpers/app_images.dart';
import 'package:campuspay/core/helpers/spacing.dart';
import 'package:campuspay/core/theme/colors.dart';
import 'package:campuspay/core/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';

class VisitorContainer extends StatelessWidget {
  const VisitorContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomTextWidget(text: "Daily Traffic"),
        const CustomTextWidget(
          text: "2500 Visitors",
          color: ColorsManager.darkBlue,
          fontWeight: FontWeight.bold,
        ),
        verticalSpace(15),
        const Image(image: AssetImage(Assets.imagesV33))
      ],
    );
  }
}
