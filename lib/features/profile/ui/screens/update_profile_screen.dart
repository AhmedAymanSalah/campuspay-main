import 'package:campuspay/core/helpers/spacing.dart';
import 'package:campuspay/core/widgets/app_button.dart';
import 'package:campuspay/features/profile/ui/widgets/data_of_profile.dart';
import 'package:campuspay/features/profile/ui/widgets/image_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/widgets/custom_text_widget.dart';

class UpdateProfileScreen extends StatelessWidget {
  const UpdateProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const CustomTextWidget(
            text: "Update Profile",
            color: ColorsManager.darkBlue,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 60.h, horizontal: 16),
            child: Column(
              children: [
                verticalSpace(16),
                const ImageProfile(),
                verticalSpace(20),
                DataProfileFormField(),
                verticalSpace(100),
                AppTextButton(
                  buttonColor: ColorsManager.darkBlue,
                  text: 'Update',
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
