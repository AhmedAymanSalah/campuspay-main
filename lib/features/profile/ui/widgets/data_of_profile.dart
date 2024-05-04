import 'package:campuspay/core/helpers/spacing.dart';
import 'package:campuspay/core/theme/colors.dart';
import 'package:campuspay/core/widgets/custom_text_form_filed.dart';
import 'package:flutter/material.dart';

class DataProfileFormField extends StatelessWidget {
  DataProfileFormField({super.key});

  final TextEditingController emailController = TextEditingController();
  final TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextFormFiled(
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
          controller: nameController,
          titel: "Email",
          hintText: "aa****@fayoum.edu.eg",
          prefixIcon: const Icon(
            Icons.email,
            color: ColorsManager.mainBlue,
            size: 20,
          ),
        ),
      ],
    );
  }
}
