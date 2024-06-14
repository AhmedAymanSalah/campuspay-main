import 'package:campuspay/core/theme/colors.dart';
import 'package:campuspay/core/utils/constant.dart';
import 'package:campuspay/moderator/request_info/screens/accept_screen.dart';
import 'package:flutter/material.dart';

import '../../../../core/widgets/app_button.dart';
import '../screens/request_refused.dart';

class RequestInfoBotton extends StatelessWidget {
  const RequestInfoBotton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: AppTextButton(
            onPressed: () {
              navigateTo(context, const RequestAcceptScreen());
            },
            text: "Accept",
            buttonColor: ColorsManager.green,
          ),
        ),
        Expanded(
          child: AppTextButton(
            onPressed: () {
              navigateTo(context, const RequestRefusedScreen());
            },
            text: "Refuse",
            buttonColor: ColorsManager.red,
          ),
        ),
      ],
    );
  }
}
