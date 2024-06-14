// ignore_for_file: file_names

import 'package:campuspay/core/helpers/app_images.dart';
import 'package:campuspay/core/helpers/spacing.dart';
import 'package:campuspay/moderator/features/home/ui/widget/custom_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../features/home/ui/widgets/welcome_user_list_tile.dart';
import '../widget/pie_chart.dart';

class DonatorHomeScreen extends StatelessWidget {
  const DonatorHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(10.h),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            const WelcomeUserListTile(),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomContainer(
                  titel: "Paid donate",
                  text: "\$ 50.4",
                  assetImagePath: Image(image: AssetImage(Assets.imagesPaid)),
                ),
                CustomContainer(
                  titel: "What we need",
                  text: "\$ 524.4",
                  assetImagePath: Image(image: AssetImage(Assets.imagesPaid)),
                ),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomContainer(
                  titel: "Total Requests",
                  text: "5412",
                  assetImagePath: Image(image: AssetImage(Assets.imagesTotal)),
                ),
                CustomContainer(
                  titel: "  New Requests",
                  text: "145",
                  assetImagePath:
                      Image(image: AssetImage(Assets.imagesNewTask)),
                ),
              ],
            ),
            verticalSpace(30),
            const PieCharte(),
          ],
        ),
      ),
    );
  }
}
