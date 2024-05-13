// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:campuspay/core/helpers/extentions.dart';
import 'package:campuspay/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:campuspay/core/widgets/app_button.dart';
import 'package:campuspay/features/services/data/models/services_model.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/routes/routes.dart';
import '../../../../../core/widgets/custom_text_widget.dart';
import '../widgets/display_services_data_container.dart';

class AdminServicresInfoScreen extends StatelessWidget {
  final ServicesModel service;

  const AdminServicresInfoScreen({
    super.key,
    required this.service,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: const CustomTextWidget(
          text: "Service Info",
          color: ColorsManager.darkBlue,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 50.h),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              verticalSpace(5),
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
              DisplayServiceDataContainer(
                titel: "Service Name",
                text: service.title,
              ),
              verticalSpace(20),
              const DisplayServiceDataContainer(
                titel: "Cost",
                text: "500 L.E",
              ),
              verticalSpace(20),
              DisplayServiceDataContainer(
                titel: "info",
                height: 140.sp,
                text:
                    "xxxxxxxxxdddddddddddddddddddddddddddxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
              ),
              //const Spacer(),
              verticalSpace(50),
              Column(
                children: [
                  AppTextButton(
                    text: "Update Service",
                    buttonColor: ColorsManager.darkBlue,
                    onPressed: () {
                      context.navigateTo(Routes.updateServiceScreen);
                    },
                  ),
                  AppTextButton(
                    text: "Delete Service",
                    buttonColor: ColorsManager.red,
                    onPressed: () {},
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
