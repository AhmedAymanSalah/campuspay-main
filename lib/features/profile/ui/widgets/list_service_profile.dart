import 'package:campuspay/chat/ui/screens/chatPage.dart';
import 'package:campuspay/core/helpers/spacing.dart';
import 'package:campuspay/core/utils/constant.dart';
import 'package:campuspay/features/feedback/ui/screens/feedback_screen.dart';
import 'package:campuspay/features/profile/ui/screens/update_profile_screen.dart';
import 'package:campuspay/features/profile/ui/widgets/setting_box.dart';
import 'package:flutter/material.dart';

class ListItemsAllServices extends StatelessWidget {
  const ListItemsAllServices({super.key});

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
          title: "Add Feedback",
          icon: Icons.feedback,
          onTap: () {
            navigateTo(context, const FeedbackPage());
          },
        ),
        verticalSpace(25),
        SettingsTile(
          color: Colors.blueAccent,
          title: "Contact us",
          icon: Icons.contact_phone_sharp,
          onTap: () {
            navigateTo(context,  ChatPage());
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
