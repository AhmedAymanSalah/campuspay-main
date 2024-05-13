import 'package:campuspay/core/helpers/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StatisticImage extends StatelessWidget {
  const StatisticImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        height: 250.h,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(Assets.imagesNBcharts), fit: BoxFit.cover),
        ),
      ),
    );
  }
}
