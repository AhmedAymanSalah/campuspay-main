import 'package:campuspay/core/helpers/extentions.dart';
import 'package:campuspay/core/theme/colors.dart';
import 'package:campuspay/core/utils/constant.dart';
import 'package:campuspay/core/widgets/custom_text_widget.dart';
import 'package:campuspay/features/home/ui/screen/recent_transaction_screen.dart';
import 'package:campuspay/features/home/ui/widgets/build_item_recent_transactions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/routes/routes.dart';

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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomTextWidget(
                      text: "Recent Transactions",
                      fontWeight: FontWeight.bold,
                      fontSize: 16.sp,
                      color: ColorsManager.darkBlue,
                    ),
                    GestureDetector(
                      onTap: () {
                        navigateTo(context, const RecentTransactionScreen());
                      },
                      child: CustomTextWidget(
                        text: "View all",
                        fontWeight: FontWeight.bold,
                        fontSize: 16.sp,
                        color: ColorsManager.mainBlue,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
           const BuildItemRecentTransactions(),
        ],
      ),
    );
  }
}
