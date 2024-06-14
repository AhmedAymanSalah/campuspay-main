import 'package:campuspay/core/helpers/spacing.dart';
import 'package:campuspay/core/theme/colors.dart';
import 'package:campuspay/core/widgets/custom_text_form_filed.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/constant.dart';

class DataProfileFormField extends StatelessWidget {
  const DataProfileFormField({super.key,required this.cubit});

  final cubit;
  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        CustomTextFormFiled(
          textInputType: TextInputType.name,
          controller: nameController,
          titel: "Full Name",
          hintText: "Ahmed Ayman",
          prefixIcon: const Icon(
            Icons.person,
            color: ColorsManager.mainBlue,
            size: 20,
          ),
        ),
        verticalSpace(20),
        CustomTextFormFiled(
          textInputType: TextInputType.emailAddress,
          controller: emailController,
          titel: "Email Address",
          hintText: "aa3901@fayoum.edu.eg",
          prefixIcon: const Icon(
            Icons.person,
            color: ColorsManager.mainBlue,
            size: 20,
          ),
        ),
        verticalSpace(20),
        CustomTextFormFiled(
          textInputType: TextInputType.number,
          controller: ssnController,
          titel: "SSN",
          hintText: "30208025462814",
          prefixIcon: const Icon(
            Icons.person,
            color: ColorsManager.mainBlue,
            size: 20,
          ),
        ),
      ],
    );
  }
}
