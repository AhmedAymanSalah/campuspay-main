// ignore_for_file: file_names

import 'package:campuspay/core/helpers/app_images.dart';
import 'package:campuspay/core/helpers/extentions.dart';
import 'package:campuspay/core/helpers/spacing.dart';
import 'package:campuspay/core/routes/routes.dart';
import 'package:campuspay/core/theme/colors.dart';
import 'package:campuspay/core/widgets/app_button.dart';
import 'package:campuspay/core/widgets/custom_text_widget.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TransferSuccess extends StatelessWidget {
  const TransferSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        height: double.infinity.h,
        width: double.infinity.h,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(Assets.imagesBackgrond), fit: BoxFit.cover),
        ),
        child: Padding(
          padding:
              EdgeInsets.only(top: 65.h, left: 25.h, bottom: 30.h, right: 25.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              verticalSpace(45),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: 500.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25)),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 50.h, horizontal: 20.h),
                      child: Column(
                        children: [
                          verticalSpace(40),
                          const CustomTextWidget(
                            text: "Great!",
                            color: Colors.blue,
                          ),
                          const CustomTextWidget(
                            text: "Transfer Success",
                            color: ColorsManager.darkBlue,
                            fontWeight: FontWeight.bold,
                          ),
                          verticalSpace(40),
                          const Divider(),
                          verticalSpace(40),
                          const CustomTextWidget(
                            text: "Total Transfer",
                            color: ColorsManager.gray,
                          ),
                          const CustomTextWidget(
                            text: "50.00 L.E",
                            color: ColorsManager.mainBlue,
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          ),
                          const Spacer(),
                          AppTextButton(
                            text: "Back to Home",
                            onPressed: () {
                              context.navigateTo(Routes.bottomNavBar);
                            },
                            buttonColor: ColorsManager.darkBlue,
                          )
                        ],
                      ),
                    ),
                  ),
                  const Positioned(
                    bottom: 430,
                    right: 120,
                    child: Image(
                      image: AssetImage(Assets.imagesIcon1),
                      fit: BoxFit.cover,
                      width: 130,
                      height: 130,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
