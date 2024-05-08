// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:campuspay/core/helpers/app_images.dart';
import 'package:campuspay/core/helpers/spacing.dart';
import 'package:campuspay/core/theme/colors.dart';
import 'package:campuspay/core/widgets/app_button.dart';
import 'package:campuspay/core/widgets/custom_text_widget.dart';

import '../../../core/widgets/custom_text_form_filed.dart';

typedef OnCardAdded = void Function(
    String cardNumber, String cardHolder, String cvv);

class AddNewCard extends StatelessWidget {
  final OnCardAdded onCardAdded;

  AddNewCard({
    super.key,
    required this.onCardAdded,
  });

  final TextEditingController cardNumberController = TextEditingController();
  final TextEditingController cardHolderController = TextEditingController();
  final TextEditingController cvvController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: const CustomTextWidget(
          text: "Add New Card",
          color: ColorsManager.lightGray,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: Container(
        height: double.infinity.h,
        width: double.infinity.h,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(Assets.imagesBackgrond), fit: BoxFit.cover)),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.only(
              top: 65.h,
              left: 25.h,
              bottom: 30.h,
              right: 25.h,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                verticalSpace(100),
                Container(
                  height: 500.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25)),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.h),
                    child: Column(
                      children: [
                        const Spacer(),
                        CustomTextFormFiled(
                          textInputType: TextInputType.number,
                          titel: "Card Number",
                          hintText: "**** **** **** ****",
                          controller: cardNumberController,
                        ),
                        verticalSpace(40),
                        CustomTextFormFiled(
                          textInputType: TextInputType.name,
                          titel: "Card Holder",
                          hintText: "Card Holder",
                          controller: cardHolderController,
                        ),
                        verticalSpace(40),
                        CustomTextFormFiled(
                          textInputType: TextInputType.name,
                          titel: "CVV/CVC",
                          hintText: "CVV/CVC",
                          controller: cvvController,
                        ),
                        //verticalSpace(50),
                        const Spacer(),
                        AppTextButton(
                          text: "Add",
                          onPressed: () {
                            // Retrieve input values from text fields
                            String cardNumber = cardNumberController.text;
                            String cardHolder = cardHolderController.text;
                            String cvv = cvvController.text;

                            // Call the callback function with the card data
                            onCardAdded(cardNumber, cardHolder, cvv);
                            // Navigate back to the outer page if needed
                            Navigator.pop(context);
                          },
                          buttonColor: ColorsManager.darkBlue,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
