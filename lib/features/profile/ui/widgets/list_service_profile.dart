import 'package:campuspay/core/helpers/extentions.dart';
import 'package:campuspay/core/routes/routes.dart';
import 'package:campuspay/features/profile/ui/widgets/build_item_service_profile.dart';
import 'package:flutter/material.dart';

class ListItemsAllServices extends StatelessWidget {
  const ListItemsAllServices({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        MyAccountProfileService(),
        AddressProfileService(),
        SettingsProfileService(),
        ExemptionRequestProfileService(),
        HelpCenterProfileService(),
      ],
    );
  }
}

//? My Account

class MyAccountProfileService extends StatelessWidget {
  const MyAccountProfileService({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BuildItemServiceProfile(
      title: 'My Account',
      onPressed: () {
        context.navigateTo(Routes.myAccountScreen);
      },
      image: 'assets/icons/Profile.png',
    );
  }
}

//! Address

class AddressProfileService extends StatelessWidget {
  const AddressProfileService({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BuildItemServiceProfile(
      title: 'Address',
      onPressed: () {},
      image: 'assets/icons/Location.png',
    );
  }
}

//* Settings

class SettingsProfileService extends StatelessWidget {
  const SettingsProfileService({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BuildItemServiceProfile(
      title: 'Settings',
      onPressed: () {},
      image: 'assets/icons/settings.png',
    );
  }
}

//* Exemption request

class ExemptionRequestProfileService extends StatelessWidget {
  const ExemptionRequestProfileService({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BuildItemServiceProfile(
      title: 'Exemption request',
      onPressed: () {},
      image: 'assets/icons/user-heart.png',
    );
  }
}

//? Help Center

class HelpCenterProfileService extends StatelessWidget {
  const HelpCenterProfileService({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BuildItemServiceProfile(
      title: 'Help Center',
      onPressed: () {},
      image: 'assets/icons/helpCenter.png',
    );
  }
}
