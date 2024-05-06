import 'package:campuspay/core/theme/colors.dart';
import 'package:campuspay/core/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helpers/spacing.dart';

class DisplayDataContainer extends StatelessWidget {
  final String? titel;
  final String? text;
  final Icon? prefixIcon;
  const DisplayDataContainer(
      {super.key, this.titel, this.text, this.prefixIcon});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomTextWidget(
          text: titel!,
          fontSize: 10.sp,
          color: ColorsManager.darkGrey,
        ),
        verticalSpace(8),
        Container(
          height: 50.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: ColorsManager.darkBlue, width: 2),
          ),
          child: Row(
            children: [
              horizontalSpace(5),
              prefixIcon!,
              horizontalSpace(15),
              CustomTextWidget(
                text: text!,
                fontSize: 14.sp,
                color: ColorsManager.darkGrey,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
