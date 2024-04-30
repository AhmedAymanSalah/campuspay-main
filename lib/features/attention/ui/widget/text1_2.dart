import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/colors.dart';

class AttentionText extends StatelessWidget {
  const AttentionText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text:
            '     You must use your college email to log in or sign up for Campus',
        style: TextStyle(
          fontSize: 18.sp,
          color: ColorsManager.darkGrey,
          fontFamily: "Roboto Slab",
          fontWeight: FontWeight.bold,
        ),
        children: const [
          TextSpan(
            text: 'Pay ',
            style: TextStyle(
              color: ColorsManager.mainBlue, // Specify the color you want
              fontWeight: FontWeight.bold,
            ),
          ),
          TextSpan(
            text: 'and for all mail transactions in this app !!.',
          ),
        ],
      ),
    );
  }
}
