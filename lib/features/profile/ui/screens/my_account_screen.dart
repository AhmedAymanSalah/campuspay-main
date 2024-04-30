import 'package:campuspay/core/helpers/extentions.dart';
import 'package:campuspay/core/helpers/spacing.dart';
import 'package:campuspay/core/widgets/app_button.dart';
import 'package:campuspay/features/profile/ui/widgets/data_of_profile.dart';
import 'package:campuspay/features/profile/ui/widgets/image_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyAccountScreen extends StatelessWidget {
  const MyAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 60.h, horizontal: 16),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        context.pop();
                      },
                      child: const Icon(
                        Icons.arrow_back,
                        size: 28,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      'My Account',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: const Color(0xFF111827),
                        fontSize: 20.sp,
                        fontFamily: 'Alexandria',
                        fontWeight: FontWeight.w700,
                        height: 0.0,
                      ),
                    ),
                    const Spacer(),
                    const SizedBox.shrink(),
                    horizontalSpace(30),
                  ],
                ),
                verticalSpace(16),
                const ImageProfile(),
                DataProfileFormField(),
                verticalSpace(60),
                AppTextButton(
                  text: 'Save Changes',
                  onPressed: () {},
                  elevation: 0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
