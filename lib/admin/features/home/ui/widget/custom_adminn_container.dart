import 'package:campuspay/core/theme/colors.dart';
import 'package:campuspay/core/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAdminContainer extends StatelessWidget {
  final Color? color;
  final String text;
  const CustomAdminContainer({super.key, this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10, top: 10, left: 15, right: 50),
      child: Container(
        height: 50.h,
        width: 150,
        decoration: BoxDecoration(
          color: color,
          borderRadius: const BorderRadius.only(
              topRight: Radius.circular(50),
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
              topLeft: Radius.circular(10)),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: CustomTextWidget(
              text: text,
              color: ColorsManager.darkBlue,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
