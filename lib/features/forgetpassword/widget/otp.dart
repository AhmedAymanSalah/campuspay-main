import 'package:campuspay/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OtpWidget extends StatelessWidget {
  const OtpWidget({super.key, this.controller});

  final controller;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(
          right: 2,
        ),
        child: SizedBox(
          height: 68.w,
          width: 68.h,
          child: TextFormField(
            onChanged: (value) {
              if (value.length == 1) {
                FocusScope.of(context).nextFocus();
              }
            },
            controller: controller,
            decoration: InputDecoration(
              fillColor: ColorsManager.hintBlue,
              filled: true,
              counterStyle: const TextStyle(color: ColorsManager.lighterGray),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: ColorsManager.mainBlue,
                  width: 1.3,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: ColorsManager.darkBlue,
                  width: 1.5,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            style:
                TextStyle(fontSize: 20.0.sp, color: ColorsManager.morelighterGray),
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            inputFormatters: [
              LengthLimitingTextInputFormatter(1),
              FilteringTextInputFormatter.digitsOnly,
            ],
          ),
        ),
      ),
    );
  }
}
