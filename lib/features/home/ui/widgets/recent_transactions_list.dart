import 'package:campuspay/core/theme/colors.dart';
import 'package:campuspay/core/widgets/custom_text_widget.dart';
import 'package:campuspay/features/home/ui/widgets/build_item_recent_transactions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RecentTransactionsList extends StatelessWidget {
  const RecentTransactionsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: CustomTextWidget(
                  text: "Recent Transactions",
                  fontWeight: FontWeight.bold,
                  fontSize: 16.sp,
                  color: ColorsManager.darkBlue,
                ),
              ),
            ],
          ),
          BuildItemRecentTransactions(),
        ],
      ),
    );
  }
}
