import '../theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_text_widget.dart';

class AppTextButton extends StatelessWidget {
  final String text;
  final Function()? onPressed;
  final Color? buttonColor;
  final Color textColor;
  final double borderRadius;
  final double elevation;
  final double shadowSpread;
  final Color shadowColor;

  const AppTextButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.buttonColor = ColorsManager.mainBlue,
    this.textColor = Colors.white,
    this.borderRadius = 12,
    this.elevation = 0,
    this.shadowSpread = 5,
    this.shadowColor = Colors.grey,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 10.w),
      child: SizedBox(
        width: double.infinity.w, // Make the button take up full width
        height: 60.h,
        child: TextButton(
          onPressed: onPressed,
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(buttonColor),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(borderRadius),
              ),
            ),
            elevation: MaterialStateProperty.all(elevation),
            shadowColor: MaterialStateProperty.all(shadowColor),
          ),
          child: CustomTextWidget(
            text: text,
            color: textColor,
            fontSize: 16.sp,
          ),
        ),
      ),
    );
  }
}

class MyButten extends StatelessWidget {
  const MyButten({
    super.key,
    this.onTap,
    required this.text,
  });
  final Function()? onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(23),
        margin: const EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
          color: ColorsManager.mainBlue,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade500,
              blurRadius: 10,
              spreadRadius: 5,
              offset: const Offset(-2, 2),
            ),
          ],
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
              fontFamily: "Roboto Slab",
            ),
          ),
        ),
      ),
    );
  }
}
