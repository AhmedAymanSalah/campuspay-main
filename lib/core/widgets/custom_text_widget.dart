// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:campuspay/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextWidget extends StatelessWidget {
  final String text;
  final Color color;
  final double fontSize;
  final FontWeight fontWeight;
  final String? fontFamily; // Font family parameter
  final TextAlign? textAlign;
  final TextDecoration? decoration;
  final int? maxLines;

  const CustomTextWidget({
    super.key,
    required this.text,
    this.color = ColorsManager.darkGrey,
    this.fontSize = 18,
    this.fontWeight = FontWeight.normal,
    this.fontFamily = 'Roboto Slab',
    this.textAlign,
    this.decoration,
    this.maxLines=1,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        decoration: decoration,
        color: color,
        fontSize: fontSize.sp,
        fontWeight: fontWeight,
        fontFamily: fontFamily,
      ),
    );
  }
}
