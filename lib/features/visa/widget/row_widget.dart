// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:campuspay/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/widgets/custom_text_widget.dart';

class RowWidget extends StatelessWidget {
  const RowWidget({
    super.key,
    required this.text,
    required this.data,
  });
  final String text;
  final String data;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomTextWidget(
            text: text,
            color: ColorsManager.darkBlue,
            fontWeight: FontWeight.bold,
          ),
          CustomTextWidget(text: data),
        ],
      ),
    );
  }
}
