import 'package:campuspay/core/theme/colors.dart';
import 'package:flutter/material.dart';

import '../../../../../core/widgets/app_button.dart';

class DonatorRequestInfoBotton extends StatelessWidget {
  const DonatorRequestInfoBotton({super.key, required this.function});
  final Function function;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: AppTextButton(
            onPressed: () {
              function();
              //navigateTo(context, const DoneScreen());
            },
            text: "Pay",
            buttonColor: ColorsManager.green,
          ),
        ),
      ],
    );
  }
}
