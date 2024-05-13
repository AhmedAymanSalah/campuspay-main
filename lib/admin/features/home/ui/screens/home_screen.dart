import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widget/chart_photo.dart';
import '../widget/custom_adminn_container.dart';
import '../widget/statistics_image.dart';
import '../widget/total_num_widget.dart';
import '../widget/welcom_admin.dart';

class AdminHomeScreen extends StatelessWidget {
  const AdminHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(10.h),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: const [
            WelcomeAdmin(),
            CustomAdminContainer(
              text: "Users Activation",
              color: Color(0xff8bb3f1),
            ),
            ChartPhoto(),
            CustomAdminContainer(
              text: "Total Numders",
              color: Color(0xffd5f0db),
            ),
            TotalNumberWidget(),
            CustomAdminContainer(
              text: "Statistics",
              color: Color(0xfff0efd5),
            ),
            StatisticImage()
          ],
        ),
      ),
    );
  }
}
