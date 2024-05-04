import 'package:campuspay/core/helpers/spacing.dart';
import 'package:campuspay/core/theme/colors.dart';
import 'package:campuspay/core/widgets/custom_text_widget.dart';
import 'package:campuspay/features/profile/ui/widgets/info_list_tile_user.dart';
import 'package:campuspay/features/profile/ui/widgets/list_service_profile.dart';
import 'package:campuspay/features/profile/ui/widgets/log_out_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 80.h, horizontal: 25.h),
          child: Column(
            children: [
              const CustomTextWidget(
                text: "Profile",
                color: ColorsManager.darkBlue,
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
              verticalSpace(22.h),
              const InfoListTileUser(),
              verticalSpace(16.h),
              const ListItemsAllServices(),
              verticalSpace(100.h),
              const LogOut(),
            ],
          ),
        ),
      ),
    );
  }
}
