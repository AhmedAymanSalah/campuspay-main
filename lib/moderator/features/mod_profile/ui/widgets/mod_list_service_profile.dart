import 'package:campuspay/core/helpers/spacing.dart';
import 'package:campuspay/core/utils/constant.dart';
import 'package:campuspay/features/feedback/ui/screens/feedback_screen.dart';
import 'package:campuspay/features/profile/ui/screens/update_profile_screen.dart';
import 'package:campuspay/features/profile/ui/widgets/setting_box.dart';
import 'package:flutter/material.dart';

class ModListServiceProfile extends StatelessWidget {
  const ModListServiceProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        verticalSpace(25),
        SettingsTile(
          color: Colors.teal,
          title: "Update Profile",
          icon: Icons.person,
          onTap: () {
            navigateTo(context, const UpdateProfileScreen());
          },
        ),
        verticalSpace(25),
        SettingsTile(
          color: Colors.blueAccent,
          title: "Get All Feedback",
          icon: Icons.feedback,
          onTap: () {
            navigateTo(context, const FeedbackPage());
          },
        ),
        verticalSpace(25),
       
        SettingsTile(
          color: Colors.deepOrange,
          title: "Help Center",
          icon: Icons.help_center_rounded,
          onTap: () {},
        ),
      ],
    );
  }
}
