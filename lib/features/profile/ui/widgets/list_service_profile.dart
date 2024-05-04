import 'package:campuspay/core/helpers/extentions.dart';
import 'package:campuspay/core/helpers/spacing.dart';
import 'package:campuspay/core/routes/routes.dart';
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
          title: "My Account",
          icon: Icons.person,
          onTap: () {
            context.navigateTo(Routes.myAccountScreen);
          },
        ),
        verticalSpace(25),
        SettingsTile(
          color: Colors.blueAccent,
          title: "Settings",
          icon: Icons.settings,
          onTap: () {
            context.navigateTo(Routes.myAccountScreen);
          },
        ),
        verticalSpace(25),
        SettingsTile(
          color: Colors.deepOrange,
          title: "Help Center",
          icon: Icons.help_center_rounded,
          onTap: () {
            context.navigateTo(Routes.myAccountScreen);
          },
        ),
      ],
    );
  }
}

