import 'package:campuspay/core/theme/colors.dart';
import 'package:campuspay/features/services/data/models/services_list_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/widgets/custom_text_widget.dart';

class BuildItemServicesScreen extends StatelessWidget {
  final int index;

  const BuildItemServicesScreen({super.key, required this.index});

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
                width: 64,
                height: 64,
                decoration: ShapeDecoration(
                  color: const Color(0xFFEFF5FF),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32),
                  ),
                ),
                child: Image.asset(servicesList[index].image),
              ),
              horizontalSpace(8),
              CustomTextWidget(
                text: servicesList[index].title,
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
