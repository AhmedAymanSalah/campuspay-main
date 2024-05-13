import 'package:campuspay/core/helpers/app_images.dart';
import 'package:campuspay/core/helpers/spacing.dart';
import 'package:campuspay/core/theme/colors.dart';
import 'package:campuspay/core/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChartPhoto extends StatelessWidget {
  const ChartPhoto({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: Column(
        children: [
          const CustomTextWidget(
            text: "statistics",
            color: ColorsManager.mainBlue,
          ),
          verticalSpace(15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 100.h,
                width: 100.h,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(Assets.imagesStates2),
                      fit: BoxFit.cover),
                ),
              ),
              Row(
                children: [
                  Column(
                    children: [
                      const CircleAvatar(
                        backgroundColor: ColorsManager.green,
                        radius: 10,
                      ),
                      verticalSpace(7),
                      const CircleAvatar(
                        backgroundColor: ColorsManager.mainBlue,
                        radius: 10,
                      ),
                      verticalSpace(7),
                      const CircleAvatar(
                        backgroundColor: ColorsManager.red,
                        radius: 10,
                      )
                    ],
                  ),
                  horizontalSpace(10),
                  const Column(
                    children: [
                      CustomTextWidget(
                        text: "Low active",
                        fontWeight: FontWeight.bold,
                        color: ColorsManager.green,
                      ),
                      CustomTextWidget(
                        text: "Medium active",
                        fontWeight: FontWeight.bold,
                        color: ColorsManager.mainBlue,
                      ),
                      CustomTextWidget(
                        text: "High active",
                        fontWeight: FontWeight.bold,
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
