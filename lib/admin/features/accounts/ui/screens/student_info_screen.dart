import 'package:campuspay/core/helpers/extentions.dart';
import 'package:campuspay/core/helpers/spacing.dart';
import 'package:campuspay/core/theme/colors.dart';
import 'package:campuspay/core/widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/routes/routes.dart';
import '../widget/delet_and_expert_container.dart';
import '../widget/student_info_display_data.dart';

class StudentInfoScreen extends StatelessWidget {
  const StudentInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.h, vertical: 15.h),
        child: ListView(
          children: [
            const DeletAndExportContainer(),
            verticalSpace(15),
            const StudentInfoDisplayData(),
            verticalSpace(15),
            AppTextButton(
              buttonColor: ColorsManager.red,
              text: "Stop Email",
              onPressed: () {
                context.navigateTo(Routes.stopedEmailScreen);
              },
            ),
          ],
        ),
      ),
    );
  }
}
