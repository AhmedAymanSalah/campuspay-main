import 'package:campuspay/core/theme/colors.dart';
import 'package:campuspay/core/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.w,
      width: double.infinity.h,
      decoration: BoxDecoration(
          color: const Color(0xfff0f5ff),
          borderRadius: BorderRadius.circular(20)),
      child: Row(
        children: [
          const Icon(
            Icons.error_outline_outlined,
            color: ColorsManager.darkBlue,
          ),
          CustomTextWidget(
            text: "Top up with Campuspay will not cost any fee!",
            color: ColorsManager.darkBlue,
            fontSize: 10.sp,
          )
        ],
      ), //Alt
    );
  }
}
