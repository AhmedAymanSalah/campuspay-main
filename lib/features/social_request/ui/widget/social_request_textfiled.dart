import 'package:campuspay/core/helpers/extentions.dart';
import 'package:campuspay/core/helpers/spacing.dart';
import 'package:campuspay/core/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';
import '../../../../core/routes/routes.dart';
import '../../../../core/theme/colors.dart';
import '../../../../core/widgets/app_button.dart';
import '../../../../core/widgets/custom_text_form_filed.dart';

class SocialRequestTextFiled extends StatelessWidget {
  const SocialRequestTextFiled({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomTextWidget(
          text: "Social Request",
          color: ColorsManager.mainBlue,
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
        verticalSpace(25),
        const CustomTextFormFiled(
          hintText: "Name..",
          textInputType: TextInputType.name,
          titel: "Your father's name..",
          prefixIcon: Icon(
            Icons.person_2_outlined,
            size: 22,
          ),
        ),
        verticalSpace(15),
        const CustomTextFormFiled(
          hintText: "true Or fales",
          textInputType: TextInputType.name,
          titel: "your father dead",
          prefixIcon: Icon(
            Icons.person_2_outlined,
            size: 20,
          ),
        ),
        verticalSpace(15),
        const CustomTextFormFiled(
          hintText: "Job..",
          textInputType: TextInputType.number,
          titel: "father's job",
          prefixIcon: Icon(
            Icons.person_2_outlined,
            size: 20,
          ),
        ),
        verticalSpace(20),
        const CustomTextFormFiled(
          hintText: "State..",
          textInputType: TextInputType.number,
          titel: "father's state",
          prefixIcon: Icon(
            Icons.person_2_outlined,
            size: 20,
          ),
        ),
        verticalSpace(20),
        const CustomTextFormFiled(
          hintText: "Incom..",
          textInputType: TextInputType.number,
          titel: "father's Incom",
          prefixIcon: Icon(
            Icons.person_2_outlined,
            size: 20,
          ),
        ),
        verticalSpace(20),
        const CustomTextFormFiled(
          hintText: "Number..",
          textInputType: TextInputType.number,
          titel: "Num of your family members",
          prefixIcon: Icon(
            Icons.person_2_outlined,
            size: 20,
          ),
        ),
        verticalSpace(20),
        const CustomTextFormFiled(
          hintText: "Number..",
          textInputType: TextInputType.number,
          titel: "Number of your family members in Education",
          prefixIcon: Icon(
            Icons.person_2_outlined,
            size: 20,
          ),
        ),
        verticalSpace(20),
        AppTextButton(
          onPressed: () {
            context.navigateTo(Routes.submetSccessScreen);
          },
          text: "Submit",
          buttonColor: ColorsManager.darkBlue,
        ),
      ],
    );
  }
}
