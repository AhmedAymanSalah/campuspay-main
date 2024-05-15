import 'package:campuspay/core/helpers/spacing.dart';
import 'package:campuspay/core/theme/colors.dart';
import 'package:campuspay/core/widgets/custom_text_form_filed.dart';
import 'package:campuspay/core/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AdminSearch extends StatelessWidget {
  const AdminSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          const CustomTextFormFiled(
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
                  text: "Total user",
                  fontWeight: FontWeight.bold,
                  color: ColorsManager.darkBlue,
                ),
                horizontalSpace(25),
                const CustomTextWidget(
                  text: "50",
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
