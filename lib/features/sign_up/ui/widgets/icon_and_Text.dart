// ignore_for_file: file_names

import 'package:campuspay/core/helpers/spacing.dart';
import 'package:flutter/material.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/widgets/custom_text_widget.dart';

class IconAndTextSiginUp extends StatelessWidget {
  const IconAndTextSiginUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Icon(
          Icons.lock,
          size: 100,
          color: ColorsManager.darkGrey,
        ),
        verticalSpace(25),
        // text
        CustomTextWidget(
          text: "Let's create an account for you!",
          color: Colors.grey.shade700,
          fontFamily: "Pacifico",
        ),
      ],
    );
  }
}
