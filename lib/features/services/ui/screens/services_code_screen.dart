// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:campuspay/core/theme/colors.dart';
import 'package:campuspay/features/pay_screens/ui/screens/pay_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:campuspay/core/widgets/app_button.dart';
import 'package:campuspay/features/services/data/models/services_model.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/widgets/custom_text_form_filed.dart';
import '../../../../core/widgets/custom_text_widget.dart';

class PayServicesSceen extends StatelessWidget {
  final ServicesModel service;

  const PayServicesSceen({
    super.key,
    required this.service,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: CustomTextWidget(
          text: service.title,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 50.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            verticalSpace(80),
            Row(
              children: [
                CircleAvatar(
                  child: Image.asset(
                    service.image,
                  ),
                ),
                horizontalSpace(8),
                CustomTextWidget(
                  text: service.title,
                  color: ColorsManager.darkBlue,
                  fontWeight: FontWeight.bold,
                ),
              ],
            ),
            verticalSpace(50),
             CustomTextFormFiled(
              textInputType: TextInputType.number,
              hintText: "Enter your code",
            ),
            const Spacer(),
            AppTextButton(
              text: "Go",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PayScreen(
                      service: service,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
