import 'package:campuspay/core/helpers/app_images.dart';
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
                Text(
                  '763 L.E',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: const Color(0xFF132647),
                    fontSize: 21.82.sp,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                    height: 0.04.h,
                    letterSpacing: 0.31,
                  ),
                ),
                Positioned(
                  bottom: 40.h,
                  child: Text(
                    'Total cash',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: const Color(0xFF132647),
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w300,
                      letterSpacing: 0.28.w,
                    ),
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
                    color: const Color(0xFF132647),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6)),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Recent Deposit',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.sp,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.28,
                        ),
                      ),
                      Text(
                        '3913 L.E',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.sp,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          height: 0.07.h,
                          letterSpacing: 0.31.w,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: 148.91.w,
                  height: 60.12.h,
                  decoration: ShapeDecoration(
                    color: const Color(0xFF132647),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6)),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Recent Deposit',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.sp,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.28.w,
                        ),
                      ),
                      Text(
                        '3150 L.E',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.sp,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          height: 0.07.h,
                          letterSpacing: 0.31.w,
                        ),
                      )
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
