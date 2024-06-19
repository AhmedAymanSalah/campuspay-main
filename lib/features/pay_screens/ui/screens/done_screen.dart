// ignore_for_file: file_names

import 'package:campuspay/core/helpers/app_images.dart';
import 'package:campuspay/core/theme/colors.dart';
import 'package:campuspay/core/utils/constant.dart';
import 'package:campuspay/core/widgets/app_button.dart';
import 'package:campuspay/donator/featuers/layout/presentation/view/layout_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class DoneScreen extends StatelessWidget {
  const DoneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              const Image(image: AssetImage(Assets.imagesDone)),
              const Spacer(),
              AppTextButton(
                text: "Done",
                onPressed: () {
               //   context.navigateTo(Routes.errorScreen);
                  navigateTo(context, const DonatorLayoutView());
                },
                buttonColor: ColorsManager.green,
              )
            ],
          ),
        ),
      ),
    );
  }
}
