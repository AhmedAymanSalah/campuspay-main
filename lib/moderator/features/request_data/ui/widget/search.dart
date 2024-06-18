import 'package:campuspay/core/helpers/spacing.dart';
import 'package:campuspay/core/theme/colors.dart';
import 'package:campuspay/core/widgets/custom_text_form_filed.dart';
import 'package:campuspay/core/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Search extends StatelessWidget {
  const Search({super.key, required this.num});
  final int num;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
           CustomTextFormFiled(
            color: ColorsManager.whitblue,
            hintText: "Search",
            textInputType: TextInputType.name,
            prefixIcon: Icon(Icons.search),
          ),
          verticalSpace(20),
          Container(
            height: 60.h,
            width: 250.h,
            decoration: BoxDecoration(
                border: Border.all(color: ColorsManager.whitblue),
                borderRadius: BorderRadius.circular(16)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CustomTextWidget(
                  text: "Total Requests",
                  fontWeight: FontWeight.bold,
                  color: ColorsManager.darkBlue,
                ),
                horizontalSpace(25),
                 CustomTextWidget(
                  text: '$num',
                  fontWeight: FontWeight.bold,
                  color: ColorsManager.darkGrey,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
