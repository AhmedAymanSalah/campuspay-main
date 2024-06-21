import 'package:campuspay/core/helpers/spacing.dart';
import 'package:campuspay/core/theme/colors.dart';
import 'package:campuspay/core/widgets/custom_text_widget.dart';
import 'package:campuspay/features/profile/ui/widgets/info_list_tile_user.dart';
import 'package:campuspay/features/profile/ui/widgets/log_out_container.dart';
import 'package:campuspay/moderator/features/mod_profile/ui/widgets/mod_list_service_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ModProfileScreen extends StatelessWidget {
  const ModProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:
      EdgeInsets.symmetric(vertical: 20.h, horizontal: 25.h),
      child: SingleChildScrollView(
        child: Column(
          children: [
            verticalSpace(50),
            const CustomTextWidget(
              text: "Profile",
              color: ColorsManager.darkBlue,
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
            verticalSpace(22),
            const InfoListTileUser(),
            verticalSpace(22),
            const Divider(),
            verticalSpace(16),
            const ModListServiceProfile(),
            verticalSpace(40),
            const Divider(),
            verticalSpace(70),
            const LogOut()
          ],
        ),
      ),
    );
  }
}
