import 'package:flutter/material.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/widgets/custom_text_widget.dart';
import '../widgets/build_item_recent_transactions.dart';

class RecentTransactionScreen extends StatelessWidget {
  const RecentTransactionScreen({super.key});

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
            BuildItemRecentTransactions(),
          ],
        ));
  }
}
