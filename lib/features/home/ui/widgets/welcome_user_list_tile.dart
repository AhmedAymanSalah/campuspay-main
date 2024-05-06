import 'package:campuspay/core/theme/colors.dart';
import 'package:campuspay/core/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WelcomeUserListTile extends StatelessWidget {
  const WelcomeUserListTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: CustomTextWidget(
          text: "Good morning,", fontSize: 12.sp, color: ColorsManager.gray),
      subtitle: CustomTextWidget(
        text: "Ahmed Ayman\n",
        fontSize: 16.sp,
        fontWeight: FontWeight.bold,
        color: ColorsManager.darkBlue,
      ),
      trailing: Container(
        width: 48.h,
        height: 48.w,
        decoration: const ShapeDecoration(
          color: Colors.white,
          shape: OvalBorder(
            side: BorderSide(width: 1, color: Color(0xFFE5E7EB)),
          ),
        ),
        child: const Icon(
          Icons.watch_later_outlined,
          color: ColorsManager.darkBlue,
        ),
      ),
    );
  }
}
