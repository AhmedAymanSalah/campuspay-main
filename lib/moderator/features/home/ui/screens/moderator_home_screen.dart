// ignore_for_file: file_names

import 'package:campuspay/core/helpers/app_images.dart';
import 'package:campuspay/core/helpers/spacing.dart';
import 'package:campuspay/moderator/features/home/ui/widget/custom_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../features/home/ui/widgets/welcome_user_list_tile.dart';
import '../widget/clender_container.dart';
import '../widget/customer_satisfaction.dart';
import '../widget/pie_chart.dart';
import '../widget/visitor_container.dart';

class ModeratorHomeScreen extends StatelessWidget {
  const ModeratorHomeScreen({super.key});

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
                  titel: "Paid Expense",
                  text: "\$ 50.4",
                  assetImagePath: Image(image: AssetImage(Assets.imagesPaid)),
                ),
                CustomContainer(
                  titel: "Earnings",
                  text: "\$ 524.4",
                  assetImagePath: Image(image: AssetImage(Assets.imagesPaid)),
                ),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomContainer(
                  titel: "Total Projects",
                  text: "5412",
                  assetImagePath: Image(image: AssetImage(Assets.imagesTotal)),
                ),
                CustomContainer(
                  titel: "  New Task",
                  text: "145",
                  assetImagePath:
                      Image(image: AssetImage(Assets.imagesNewTask)),
                ),
              ],
            ),
            const ClenderContainer(),
            verticalSpace(35),
            const VisitorContainer(),
            verticalSpace(30),
            const PieCharte(),
            verticalSpace(35),
            const CustomerSatisfaction(),
          ],
        ),
      ),
    );
  }
}
