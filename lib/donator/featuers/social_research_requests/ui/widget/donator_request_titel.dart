import 'package:campuspay/core/helpers/spacing.dart';
import 'package:campuspay/core/theme/colors.dart';
import 'package:campuspay/core/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DonatorRequestTitel extends StatelessWidget {
  const DonatorRequestTitel({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 25),
      child: Column(
        children: [
          const Center(
            child: CustomTextWidget(
              text: "Social Research Requests",
              color: ColorsManager.mainBlue,
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
          verticalSpace(30),
        ],
      ),
    );
  }
}
