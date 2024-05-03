// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:campuspay/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:campuspay/core/helpers/spacing.dart';
import 'package:campuspay/core/widgets/custom_text_widget.dart';

class CustomContainer extends StatelessWidget {
  final String titel;
  final String text;
  final String? assetImagePath;
  const CustomContainer({
    super.key,
    required this.titel,
    required this.text,
    this.assetImagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomTextWidget(
          text: titel,
          fontSize: 10.sp,
          color: ColorsManager.gray,
        ),
        verticalSpace(5),
        Container(
          //width: double.infinity.h,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.circular(
                8.0), // Adjust the value for rounded corners
          ),
          padding: EdgeInsets.symmetric(
              horizontal: 15.w, vertical: 15.h,), // Adjust the padding as needed
          child: Row(
            children: [
              if (assetImagePath !=
                  null) // Conditionally show avatar image if provided
                CircleAvatar(
                  radius: 22.0
                      .dg, // Adjust the radius of the circle avatar as needed
                  backgroundImage: AssetImage(assetImagePath!),
                ),
              horizontalSpace(8),
              CustomTextWidget(
                text: text,
                fontWeight: FontWeight.bold,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
