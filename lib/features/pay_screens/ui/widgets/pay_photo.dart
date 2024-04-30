import 'package:campuspay/core/helpers/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PayPhoto extends StatelessWidget {
  const PayPhoto({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.w,
      width: 100.h,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(Assets.imagesGreenpay),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
