import 'package:campuspay/core/widgets/custom_text_widget.dart';
import 'package:campuspay/moderator/features/layout/presentation/view/layout_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/app_images.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/theme/colors.dart';
import '../../../../core/widgets/app_button.dart';
import '../../../core/utils/constant.dart';

class RequestAcceptScreen extends StatelessWidget {
  const RequestAcceptScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        height: double.infinity.h,
        width: double.infinity.h,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(Assets.imagesBackgrond), fit: BoxFit.cover)),
        child: Padding(
          padding:
              EdgeInsets.only(top: 65.h, left: 25.h, bottom: 30.h, right: 25.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              Image.asset(Assets.imagesCorrect),
              verticalSpace(25),
              CustomTextWidget(
                text: "Request accepted ",
                color: Colors.white,
                fontSize: 22.sp,
                fontWeight: FontWeight.bold,
              ),
              CustomTextWidget(
                text: "successfully",
                color: Colors.white,
                fontSize: 22.sp,
                fontWeight: FontWeight.bold,
              ),
              const Spacer(),
              AppTextButton(
                onPressed: () {
                  navigateAndFinish(context, const ModeratorLayoutView());
                },
                text: "Back To Home",
                buttonColor: ColorsManager.green,
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
