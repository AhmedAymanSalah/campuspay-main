import 'package:campuspay/core/helpers/app_images.dart';
import 'package:campuspay/core/helpers/spacing.dart';
import 'package:campuspay/core/theme/colors.dart';
import 'package:campuspay/core/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';

class PieCharte extends StatelessWidget {
  const PieCharte({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: const Color(0xfff4f7fe),
      ),
      child: Column(
        children: [
          const CustomTextWidget(
            text: "Your Pie Chart",
            color: ColorsManager.darkBlue,
            fontWeight: FontWeight.bold,
          ),
          verticalSpace(20),
          const Image(image: AssetImage(Assets.imagesPiChart)),
          verticalSpace(20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        backgroundColor: Color(0xff6AD2FF),
                        radius: 7,
                      ),
                      horizontalSpace(7),
                      const CustomTextWidget(text: "System")
                    ],
                  ),
                  const CustomTextWidget(
                    text: "30%",
                    color: ColorsManager.darkBlue,
                    fontWeight: FontWeight.bold,
                  )
                ],
              ),
              Column(
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        backgroundColor: Color(0xff4318FF),
                        radius: 7,
                      ),
                      horizontalSpace(7),
                      const CustomTextWidget(text: "Your files")
                    ],
                  ),
                  const CustomTextWidget(
                    text: "60%",
                    color: ColorsManager.darkBlue,
                    fontWeight: FontWeight.bold,
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
