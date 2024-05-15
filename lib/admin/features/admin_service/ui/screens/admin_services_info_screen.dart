import 'package:campuspay/core/theme/colors.dart';
import 'package:campuspay/core/widgets/custom_text_form_filed.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:campuspay/core/widgets/app_button.dart';
import 'package:campuspay/features/services/data/models/services_model.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/widgets/custom_text_widget.dart';

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
              verticalSpace(40),
              CustomTextFormFiled(titel:"Service Name" ,hintText: service.title, textInputType: TextInputType.text),
              verticalSpace(20),
              CustomTextFormFiled(titel:"Cost" ,hintText: "500 L.E", textInputType: TextInputType.text),

              verticalSpace(20),
              CustomTextFormFiled(titel:"Squad Year" ,hintText: "SquadYear", textInputType: TextInputType.number),
              verticalSpace(20),


              CustomTextFormFiled(titel:"College Name" ,hintText: "CollegeName", textInputType: TextInputType.text),
              verticalSpace(20),

              CustomTextFormFiled(titel:"Type" ,hintText: "Type", textInputType: TextInputType.text),
              verticalSpace(20),
              CustomTextFormFiled(maxLines: 7,titel:"Description" ,hintText: "wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", textInputType: TextInputType.text),


              verticalSpace(50),
              Column(
                children: [
                  AppTextButton(
                    text: "Update Service",
                    buttonColor: ColorsManager.darkBlue,
                    onPressed: () {
                      //navigateTo(context, UpdateServiceScreen());
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
