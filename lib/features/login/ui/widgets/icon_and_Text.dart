// ignore_for_file: file_names

import 'package:campuspay/core/helpers/spacing.dart';
import 'package:flutter/material.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/widgets/custom_text_widget.dart';

class IconAndText extends StatelessWidget {
  const IconAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Icon(
          Icons.lock,
          size: 100,
          color: ColorsManager.darkGrey,
        ),
        verticalSpace(30),
        // text
        CustomTextWidget(
          text: "Welcome Back you've been missed!",
          color: Colors.grey.shade700,
          fontFamily: "Pacifico",
        ),
      ],
    );
  }
}
