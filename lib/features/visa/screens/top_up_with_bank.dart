// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: file_names

import 'package:campuspay/features/visa/widget/card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:campuspay/core/helpers/app_images.dart';
import 'package:campuspay/core/helpers/spacing.dart';
import 'package:campuspay/core/theme/colors.dart';
import 'package:campuspay/core/widgets/app_button.dart';
import 'package:campuspay/core/widgets/custom_text_widget.dart';

import '../../transfer_money/widget/balance.dart';
import '../data/model/card_model.dart';
import '../widget/amount_topup.dart';
import 'confirm_screen.dart';

class TopUpWithBank extends StatelessWidget {
  final CardData card;
  const TopUpWithBank({
    super.key,
    required this.card,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: const CustomTextWidget(
          text: "Top Up with Bank",
          color: ColorsManager.lightGray,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: Container(
        height: double.infinity.h,
        width: double.infinity.h,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(Assets.imagesBackgrond), fit: BoxFit.cover),
        ),
        child: Padding(
          padding: EdgeInsets.only(
            top: 100.h,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.h),
                child: const BalanceWidget(balance: 0,),
              ),
              verticalSpace(45),
              Expanded(
                child: Container(
                  //height: 500.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 25.h,
                    ),
                    child: ListView(
                      children: [
                        const CustomTextWidget(
                          text: "Selected bank",
                          color: ColorsManager.darkBlue,
                          fontWeight: FontWeight.bold,
                        ),
                        verticalSpace(10),
                        CardWidget(card: card),
                        verticalSpace(35),
                        const CustomNumberTextField(),
                        verticalSpace(50),
                        const Spacer(),
                        AppTextButton(
                          text: "Continue",
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ConformScreen(
                                        card: card,
                                      )),
                            );
                          },
                          buttonColor: ColorsManager.darkBlue,
                        ),
                        const Spacer(),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
