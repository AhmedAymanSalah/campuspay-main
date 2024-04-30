import '../../../../core/theme/colors.dart';
import 'package:flutter/material.dart';


class TermsAndConditionsText extends StatelessWidget {
  const TermsAndConditionsText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: const TextSpan(
        children: [
          TextSpan(
            text: 'By logging, you agree to our',
            style: TextStyle(
              color: ColorsManager.gray,
              fontFamily: "Roboto Slab",
            ),
          ),
          TextSpan(
            text: ' Terms & Conditions',
            style: TextStyle(color: Colors.black, fontFamily: "Roboto Slab"),
          ),
          TextSpan(
            text: ' and',
            style: TextStyle(
              color: ColorsManager.gray,
              fontFamily: "Roboto Slab",
            ),
          ),
          TextSpan(
            text: ' Privacy Policy',
            style: TextStyle(
              color: Colors.black,
              fontFamily: "Roboto Slab",
            ),
          ),
        ],
      ),
    );
  }
}
