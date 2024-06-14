// ignore_for_file: must_be_immutable

import 'package:campuspay/admin/features/admin_service/data/models/service/get_service_model.dart';
import 'package:campuspay/core/helpers/app_images.dart';
import 'package:campuspay/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/widgets/custom_text_widget.dart';


class BuildItemServicesScreen extends StatelessWidget {

   BuildItemServicesScreen({super.key,required this.model});

  GetServiceModel model;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 15.h),
      child: SizedBox(
        height: 70.h,
        child: Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: ShapeDecoration(
                  color: const Color(0xFFEFF5FF),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32),
                  ),
                ),
                child:model.filePath !=null? Image.network(model.filePath!):Image.asset(Assets.imagesUniversity),
              ),
              horizontalSpace(8),
              CustomTextWidget(
                text: model.name,
                fontWeight: FontWeight.bold,
                color: ColorsManager.darkBlue,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
