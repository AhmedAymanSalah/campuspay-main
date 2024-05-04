import 'package:campuspay/core/helpers/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/widgets/custom_text_widget.dart';

class ImageProfile extends StatelessWidget {
  const ImageProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CircleAvatar(
          radius: 90,
          backgroundColor: Color(0xffDCE9FE),
          backgroundImage: AssetImage(Assets.imagesPngStudent),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 24.h),
          child: TextButton(
            autofocus: true,
            onPressed: () {},
            child: const CustomTextWidget(
              text: "Change Picture",
              color: ColorsManager.mainBlue,
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
        ),
      ],
    );
  }
}
