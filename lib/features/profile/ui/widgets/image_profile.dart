import 'package:campuspay/core/helpers/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
            onPressed: () {},
            child: Text(
              'Change Picture',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: const Color(0xFF3784FA),
                fontSize: 16.h,
                fontFamily: 'Alexandria',
                fontWeight: FontWeight.w400,
                height: 0.09.h,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
