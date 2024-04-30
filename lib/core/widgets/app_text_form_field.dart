import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theme/colors.dart';

class AppTextFormField extends StatelessWidget {
  final String hintText;
  final Widget? suffixIcon;

  final Widget? prefixIcon;
  final Widget? prefix;
  final bool? isObscureText;
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final TextStyle? inputTextStyle;
  final TextStyle? hintTextStyle;
  final Color? backGroundColorHint;
  final TextInputType textInputType;
  final TextEditingController? controller;
  final Function(String?) validator;

  const AppTextFormField({
    super.key,
    required this.hintText,
    this.suffixIcon,
    this.prefixIcon,
    this.isObscureText,
    this.focusedBorder,
    this.enabledBorder,
    this.inputTextStyle,
    this.contentPadding,
    this.hintTextStyle,
    this.backGroundColorHint,
    required this.textInputType,
    this.controller,
    required this.validator,
    this.prefix,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: textInputType,
      style: TextStyle(
        fontFamily: "Roboto Slab",
        fontSize: 14.sp,
        fontWeight: FontWeight.bold,
      ),
      decoration: InputDecoration(
        isDense: true,
        contentPadding: contentPadding ??
            EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
        focusedBorder: focusedBorder ??
            OutlineInputBorder(
              borderSide: const BorderSide(
                color: ColorsManager.lightGray,
                width: 1.3,
              ),
              borderRadius: BorderRadius.circular(5),
            ),
        enabledBorder: enabledBorder ??
            OutlineInputBorder(
              borderSide: const BorderSide(
                color: Colors.grey,
                width: 1.3,
              ),
              borderRadius: BorderRadius.circular(5),
            ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.red,
            width: 1.3,
          ),
          borderRadius: BorderRadius.circular(5),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.red,
            width: 1.3,
          ),
          borderRadius: BorderRadius.circular(5),
        ),
        hintText: hintText,
        hintStyle: hintTextStyle ??
            TextStyle(
              fontFamily: "Roboto Slab",
              fontSize: 14.sp,
              fontWeight: FontWeight.w300,
              color: ColorsManager.gray,
            ),
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        fillColor: backGroundColorHint ?? ColorsManager.moreLightGray,
        filled: true,
      ),
      obscureText: isObscureText ?? false,
      validator: (value) {
        return validator(value);
      },
    );
  }
}
