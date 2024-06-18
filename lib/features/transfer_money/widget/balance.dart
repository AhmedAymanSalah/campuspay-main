import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theme/colors.dart';
import '../../../core/widgets/custom_text_widget.dart';

class BalanceWidget extends StatelessWidget {
  const BalanceWidget({super.key, required this.balance});

  final double balance;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomTextWidget(
          text: "Balance",
          color: ColorsManager.lightGray,
          fontSize: 20.sp,
        ),
        CustomTextWidget(
          text: '$balance  L.E',
          color: ColorsManager.morelighterGray,
          fontWeight: FontWeight.bold,
          fontSize: 26.sp,
        ),
      ],
    );
  }
}
