import 'package:campuspay/features/forgetpassword/widget/otp.dart';
import 'package:flutter/material.dart';


class OtpForm extends StatelessWidget {
  const OtpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Form(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          OtpWidget(),
          OtpWidget(),
          OtpWidget(),
          OtpWidget(),
        ],
      ),
    );
  }
}
