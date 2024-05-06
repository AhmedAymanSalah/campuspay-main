// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: file_names

import 'package:campuspay/core/helpers/extentions.dart';
import 'package:campuspay/core/theme/colors.dart';
import 'package:campuspay/features/pay_screens/ui/widgets/pay_photo.dart';
import 'package:campuspay/features/services/data/models/services_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/routes/routes.dart';
import '../../../../core/widgets/custom_text_widget.dart';
import '../widgets/custom_info_container.dart';
import '../widgets/pay_contanier.dart';
import '../widgets/payment_button.dart';

class PayScreen extends StatelessWidget {
  final ServicesModel service;
  const PayScreen({
    super.key,
    required this.service,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: ThemeData.dark().primaryColor),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 25.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const PayPhoto(),
              verticalSpace(25),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    child: Image.asset(
                      service.image,
                    ),
                  ),
                  horizontalSpace(8),
                  CustomTextWidget(
                    text: service.title,
                    color: ColorsManager.darkBlue,
                    fontWeight: FontWeight.bold,
                  ),
                ],
              ),
              verticalSpace(40),
              const PayContainer(
                titel: "PROVIDER",
                assetImagePath: "assets/images/fayoum_logo.png",
                text: "Fayoum university ",
              ),
              verticalSpace(30),
              const PayContainer(
                titel: "identity number",
                text: "3362049413216549402 ",
              ),
              verticalSpace(30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const PayContainer(
                    titel: "AMOUNT",
                    text: "1355.9 ",
                  ),
                  horizontalSpace(20),
                  const PayContainer(
                    titel: "FEE / TAxes",
                    text: "0.00 ",
                  )
                ],
              ),
              verticalSpace(20),
              const CustomInfoContainer(
                title: 'Student Information',
                content: '''
                    احمد ايمن صلاح 
                    - حاسبات وذكاء اصطناعي
                    - المستوي الرابع 2023/2024
                    مصروفات دراسية 
                    number of bills: 1
                    amount due: 1350.9
                    EFinance fees: 0.00
                  ''',
              ),
              verticalSpace(30),
              CustomPaymentButton(
                amountToPay: 50.0, // Example amount to be paid
                onTap: () {
                  context.navigateTo(Routes.doneScreen);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
