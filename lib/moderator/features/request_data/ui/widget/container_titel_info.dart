import 'package:campuspay/core/theme/colors.dart';
import 'package:campuspay/core/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TitelData extends StatelessWidget {
  const TitelData({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: ColorsManager.whitblue, width: 3)),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomTextWidget(text: "ID"),
          VerticalDivider(),
          CustomTextWidget(text: "Name"),
          VerticalDivider(),
          CustomTextWidget(text: "Email Address"),
          VerticalDivider(),
          CustomTextWidget(text: "ID_Number"),
        ],
      ),
    );
  }
}
