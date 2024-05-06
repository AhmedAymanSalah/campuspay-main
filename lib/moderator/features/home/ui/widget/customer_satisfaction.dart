import 'package:campuspay/core/helpers/app_images.dart';
import 'package:campuspay/core/helpers/spacing.dart';
import 'package:campuspay/core/theme/colors.dart';
import 'package:campuspay/core/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';

class CustomerSatisfaction extends StatelessWidget {
  const CustomerSatisfaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomTextWidget(
          text: "Customer Satisfaction",
          color: ColorsManager.darkBlue,
          fontWeight: FontWeight.bold,
        ),
        const Image(image: AssetImage(Assets.imagesCustomerSatisfaction)),
        verticalSpace(15),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Row(
                  children: [
                    const Image(image: AssetImage(Assets.imagesLastManth)),
                    horizontalSpace(7),
                    const CustomTextWidget(text: "last Manth")
                  ],
                ),
                const CustomTextWidget(
                  text: "\$5.364",
                  color: ColorsManager.darkBlue,
                  fontWeight: FontWeight.bold,
                )
              ],
            ),
            Column(
              children: [
                Row(
                  children: [
                    const Image(image: AssetImage(Assets.imagesThisManth)),
                    horizontalSpace(7),
                    const CustomTextWidget(text: "This Manth")
                  ],
                ),
                const CustomTextWidget(
                  text: "\$3.004",
                  color: ColorsManager.darkBlue,
                  fontWeight: FontWeight.bold,
                )
              ],
            )
          ],
        )
      ],
    );
  }
}
