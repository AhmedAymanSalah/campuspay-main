import 'package:campuspay/core/theme/colors.dart';
import 'package:campuspay/core/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/helpers/spacing.dart';

class DisplayServiceDataContainer extends StatelessWidget {
  final String? titel;
  final String? text;
  final double? height;
  const DisplayServiceDataContainer({
    super.key,
    this.titel,
    this.text,
    this.height = 50,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomTextWidget(
          text: titel!,
          fontSize: 12.sp,
          color: ColorsManager.darkGrey,
        ),
        verticalSpace(8),
        Container(
          height: height,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: ColorsManager.darkBlue, width: 2),
          ),
          child: Row(
            children: [
              horizontalSpace(15),
              Expanded(
                child: CustomTextWidget(
                  text: text!,
                  fontSize: 16.sp,
                  color: ColorsManager.darkBlue,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
