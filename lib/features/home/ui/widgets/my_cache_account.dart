import 'package:campuspay/core/helpers/app_images.dart';
import 'package:campuspay/core/theme/colors.dart';
import 'package:campuspay/core/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyCacheAccount extends StatelessWidget {
  const MyCacheAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.h),
      child: Container(
        height: 267.h,
        decoration: ShapeDecoration(
          color: const Color(0xFF428BFB),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: 320.58.w,
                  height: 172.95.h,
                  alignment: Alignment.bottomCenter,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(Assets.imagesCccc1),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                const CustomTextWidget(
                  text: "763 L.E",
                  color: ColorsManager.darkBlue,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
                Positioned(
                  bottom: 40.h,
                  child: const CustomTextWidget(
                    text: "Total Cash",
                    color: ColorsManager.darkBlue,
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 148.91.w,
                  height: 60.12.h,
                  decoration: ShapeDecoration(
                    color: ColorsManager.darkBlue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6)),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CustomTextWidget(
                        text: "Recent Deposit",
                        color: ColorsManager.morelighterGray,
                        fontWeight: FontWeight.bold,
                        fontSize: 14.sp,
                      ),
                      CustomTextWidget(
                        text: "3913 L.E",
                        color: ColorsManager.lightGray,
                        fontWeight: FontWeight.bold,
                        fontSize: 14.sp,
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 148.91.w,
                  height: 60.12.h,
                  decoration: ShapeDecoration(
                    color: ColorsManager.darkBlue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6)),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CustomTextWidget(
                        text: "Recent Payment",
                        color: ColorsManager.morelighterGray,
                        fontWeight: FontWeight.bold,
                        fontSize: 14.sp,
                      ),
                      CustomTextWidget(
                        text: "3913 L.E",
                        color: ColorsManager.lightGray,
                        fontWeight: FontWeight.bold,
                        fontSize: 14.sp,
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
