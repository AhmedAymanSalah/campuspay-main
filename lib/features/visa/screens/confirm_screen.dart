// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: file_names

import 'package:campuspay/core/helpers/app_images.dart';
import 'package:flutter/material.dart';

import 'package:campuspay/core/theme/colors.dart';
import 'package:campuspay/core/widgets/custom_text_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../data/model/card_model.dart';
import '../widget/Container.dart';

class ConformScreen extends StatelessWidget {
  final CardData card;
  const ConformScreen({
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
            text: "Confirm",
            color: ColorsManager.darkBlue,
            fontWeight: FontWeight.bold,
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(Assets.imagesBluePay),
              CustomTextWidget(text: "50.00 L.E"),
              CustomTextWidget(text: "Below is your top up summary"),
              ContainerWidget(),
            ],
          ),
        ));
  }
}
