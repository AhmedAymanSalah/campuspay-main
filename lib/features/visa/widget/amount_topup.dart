// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:campuspay/core/helpers/spacing.dart';
import 'package:campuspay/core/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theme/colors.dart';

class CustomNumberTextField extends StatelessWidget {
  final String labelText;

  const CustomNumberTextField({
    super.key,
    this.labelText = "",
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomTextWidget(
          text: "set Amount..",
          fontWeight: FontWeight.bold,
          //fontSize: 14.sp,
        ),
        verticalSpace(10),
        CustomTextWidget(
          text: "How much would you like to top up?",
          fontSize: 14.sp,
          color: ColorsManager.gray,
        ),
        verticalSpace(20),
        TextFormField(
          onChanged: (value) {
            if (value.length == 4) {
              FocusScope.of(context).nextFocus();
            }
          },
          decoration: const InputDecoration(
            fillColor: Colors.white,
            filled: true,
            counterStyle: TextStyle(color: ColorsManager.darkGrey),
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: ColorsManager.darkGrey)),
            enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: ColorsManager.lightGray)),
          ),
          style: TextStyle(
              fontSize: 35.0.sp,
              color: ColorsManager.darkBlue,
              fontWeight: FontWeight.bold),
          keyboardType: TextInputType.number,
          textAlign: TextAlign.center,
          inputFormatters: [
            LengthLimitingTextInputFormatter(4),
            FilteringTextInputFormatter.digitsOnly,
          ],
        ),
      ],
    );
  }
}
