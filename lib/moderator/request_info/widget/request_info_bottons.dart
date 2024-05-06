import 'package:campuspay/core/helpers/extentions.dart';
import 'package:campuspay/core/theme/colors.dart';
import 'package:flutter/material.dart';

import '../../../../core/routes/routes.dart';
import '../../../../core/widgets/app_button.dart';

class RequestInfoBotton extends StatelessWidget {
  const RequestInfoBotton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: AppTextButton(
            onPressed: () {
              context.navigateTo(Routes.requestAcceptScreen);
            },
            text: "Accept",
            buttonColor: ColorsManager.green,
          ),
        ),
        Expanded(
          child: AppTextButton(
            onPressed: () {
              context.navigateTo(Routes.requestRefusedScreen);
            },
            text: "Refuse",
            buttonColor: ColorsManager.red,
          ),
        ),
      ],
    );
  }
}
