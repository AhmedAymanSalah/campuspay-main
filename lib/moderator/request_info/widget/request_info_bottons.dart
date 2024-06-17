import 'package:campuspay/core/theme/colors.dart';
import 'package:flutter/material.dart';

import '../../../../core/widgets/app_button.dart';

class RequestInfoBotton extends StatelessWidget {
  const RequestInfoBotton({super.key, required this.acceptFunction, required this.rejectFunction});
  final Function acceptFunction;
  final Function rejectFunction;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: AppTextButton(
            onPressed: () {
              acceptFunction();
            },
            text: "Accept",
            buttonColor: ColorsManager.green,
          ),
        ),
        Expanded(
          child: AppTextButton(
            onPressed: () {
              rejectFunction();
            },
            text: "Refuse",
            buttonColor: ColorsManager.red,
          ),
        ),
      ],
    );
  }
}
