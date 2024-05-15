import 'package:campuspay/core/helpers/spacing.dart';
import 'package:campuspay/core/theme/colors.dart';
import 'package:campuspay/core/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContainerTotalNum extends StatelessWidget {
  final String text;
  final String number;
  const ContainerTotalNum(
      {super.key, required this.text, required this.number});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.h,
      width: 170.h,
      decoration: BoxDecoration(
        border: Border.all(color: ColorsManager.mainBlue),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Expanded(
        child: Column(
          children: [
            verticalSpace(7),
            CustomTextWidget(
              text: number,
              color: ColorsManager.darkBlue,
              fontWeight: FontWeight.bold,
            ),
            verticalSpace(8),
            Expanded(
              child: CustomTextWidget(
                text: text,
                color: ColorsManager.gray,
                fontSize: 13.sp,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
