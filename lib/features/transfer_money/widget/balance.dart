import 'package:flutter/material.dart';

import '../../../core/theme/colors.dart';
import '../../../core/widgets/custom_text_widget.dart';

class BalanceWidget extends StatelessWidget {
  const BalanceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         CustomTextWidget(
          text: "Balance",
          color: ColorsManager.gray,
        ),
         CustomTextWidget(
          text: "5555  \$",
          color: ColorsManager.lightGray,
          fontWeight: FontWeight.bold,
          fontSize: 25,
        ),
      ],
    );
  }
}
