import 'package:flutter/material.dart';

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
         const CustomTextWidget(
          text: "Balance",
          color: ColorsManager.gray,
        ),
         CustomTextWidget(
          text: '$balance  L.E',
          color: ColorsManager.lightGray,
          fontWeight: FontWeight.bold,
          fontSize: 25,
        ),
      ],
    );
  }
}
