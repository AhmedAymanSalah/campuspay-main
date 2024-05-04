import 'package:flutter/material.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/widgets/custom_text_widget.dart';
import 'widget/build_item_top_spendiong.dart';

class TopSpendingScreen extends StatelessWidget {
  const TopSpendingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const CustomTextWidget(
            text: "Recent Transactions",
            color: ColorsManager.darkBlue,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        body: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            BuildItemTopSpending(),
          ],
        ));
  }
}
