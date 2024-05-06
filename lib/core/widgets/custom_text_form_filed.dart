// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:campuspay/core/helpers/spacing.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/widgets/app_text_form_field.dart';
import 'custom_text_widget.dart';

class CustomTextFormFiled extends StatelessWidget {
  final String hintText;
  final String? titel;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final bool? isObscureText;
  final Color color;
  final TextInputType textInputType;

  final TextEditingController? controller;
  const CustomTextFormFiled({
    super.key,
    required this.hintText,
    this.titel = "",
    required this.textInputType,
    this.suffixIcon,
    this.prefixIcon,
    this.isObscureText,
    this.controller,  this.color=ColorsManager.darkBlue,
  });

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
        AppTextFormField(

          controller: controller ,
          backGroundColorHint: Colors.white,
          isObscureText: isObscureText,
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          enabledBorder: OutlineInputBorder(
            borderSide:  BorderSide(
              color: color,
              width: 1.3,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: ColorsManager.mainBlue,
              width: 1.3,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          hintText: hintText,
          textInputType: textInputType,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter a valid code';
            }
          },
        ),
      ],
    );
  }
}
