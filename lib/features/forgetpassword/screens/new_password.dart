import 'package:campuspay/core/helpers/extentions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helpers/spacing.dart';
import '../../../core/routes/routes.dart';
import '../../../core/theme/colors.dart';
import '../../../core/widgets/app_button.dart';
import '../../../core/widgets/custom_text_form_filed.dart';
import '../../../core/widgets/custom_text_widget.dart';

class NewPasswordScreen extends StatefulWidget {
  const NewPasswordScreen({super.key});

  @override
  State<NewPasswordScreen> createState() => _NewPasswordScreenState();
}

class _NewPasswordScreenState extends State<NewPasswordScreen> {
  bool isObscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 50.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            verticalSpace(65),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomTextWidget(
                  text: "New Password",
                  fontSize: 24.sp,
                  color: ColorsManager.darkBlue,
                  fontWeight: FontWeight.bold,
                ),
                verticalSpace(10),
                CustomTextWidget(
                  text:
                      "Create a new password that is safe and easy to remember",
                  fontSize: 14.sp,
                  color: ColorsManager.gray,
                  fontWeight: FontWeight.bold,
                ),
              ],
            ),
            verticalSpace(50),
            CustomTextFormFiled(
              textInputType: TextInputType.visiblePassword,
              isObscureText: isObscureText,
              suffixIcon: GestureDetector(
                onTap: () {
                  setState(() {
                    isObscureText = !isObscureText;
                  });
                },
                child: Icon(
                  isObscureText ? Icons.visibility_off : Icons.visibility,
                ),
              ),
              titel: "New Password",
              prefixIcon: Icon(
                Icons.lock_outline,
                size: 18.sp,
              ),
              hintText: "Enter New Password",
            ),
            verticalSpace(25),
            CustomTextFormFiled(
              textInputType: TextInputType.visiblePassword,
              isObscureText: isObscureText,
              suffixIcon: GestureDetector(
                onTap: () {
                  setState(() {
                    isObscureText = !isObscureText;
                  });
                },
                child: Icon(
                  isObscureText ? Icons.visibility_off : Icons.visibility,
                ),
              ),
              titel: "Confirm Password",
              prefixIcon: Icon(
                Icons.lock_outline,
                size: 18.sp,
              ),
              hintText: "Password Confirmation",
            ),
            const Spacer(),
            AppTextButton(
              text: "Confirm New Password",
              onPressed: () {
                context.navigateTo(Routes.passwordGhangeedScreen);
              },
            )
          ],
        ),
      ),
    );
  }
}
