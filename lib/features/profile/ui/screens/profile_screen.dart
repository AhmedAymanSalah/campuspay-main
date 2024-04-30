import 'package:campuspay/core/helpers/extentions.dart';
import 'package:campuspay/core/helpers/spacing.dart';
import 'package:campuspay/core/routes/routes.dart';
import 'package:campuspay/features/profile/ui/widgets/info_list_tile_user.dart';
import 'package:campuspay/features/profile/ui/widgets/list_service_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 80.h),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Profile',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: const Color(0xFF111827),
                      fontSize: 20.sp,
                      fontFamily: 'Alexandria',
                      fontWeight: FontWeight.w700,
                      height: 0.07,
                    ),
                  ),
                ],
              ),
              verticalSpace(22.h),
              const InfoListTileUser(),
              verticalSpace(16.h),
              const ListItemsAllServices(),
              verticalSpace(24.h),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 8.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        context.navigateToReplacement(Routes.loginScreen);
                      },
                      child: const Text(
                        'Logout',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFFFC6C6B),
                          fontSize: 16,
                          fontFamily: 'Alexandria',
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0.30,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
