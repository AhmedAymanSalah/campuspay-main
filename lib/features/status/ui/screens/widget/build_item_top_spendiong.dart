// ignore_for_file: must_be_immutable

import 'package:campuspay/core/theme/colors.dart';
import 'package:campuspay/core/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BuildItemTopSpending extends StatelessWidget {
  BuildItemTopSpending({
    super.key,
  });

  List<TopSpendingModel> model = topspendinglist;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220.h,
      width: double.infinity,
      child: ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: model.length,
        separatorBuilder: (context, index) => Container(
          height: 1,
          color: const Color(0xFFF2F2F2),
        ),
        itemBuilder: (context, index) => ListTile(
            leading: Container(
              width: 48,
              height: 48,
              decoration: ShapeDecoration(
                color: const Color(0xFFEFF5FF),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32),
                ),
              ),
              child: Image.asset(model[index].image),
            ),
            title: CustomTextWidget(
              text: model[index].name,
              fontSize: 12.sp,
              color: ColorsManager.darkGrey,
            ),
            trailing: CustomTextWidget(
              text: model[index].price,
              fontSize: 12.sp,
              color: ColorsManager.darkGrey,
            )),
      ),
    );
  }
}

class TopSpendingModel {
  final String name;
  final String image;
  final String price;

  TopSpendingModel({
    required this.name,
    required this.image,
    required this.price,
  });
}

List<TopSpendingModel> topspendinglist = [
  TopSpendingModel(
    name: 'University expenses',
    image: 'assets/images/University.png',
    price: '-108 L.E',
  ),
  TopSpendingModel(
    name: 'University expenses',
    image: 'assets/images/University.png',
    price: '-3150 L.E',
  ),
  TopSpendingModel(
    name: 'University expenses',
    image: 'assets/images/University.png',
    price: '-3150 L.E',
  ),
];
