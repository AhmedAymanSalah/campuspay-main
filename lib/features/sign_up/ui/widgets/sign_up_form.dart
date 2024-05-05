import 'package:flutter/material.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/widgets/app_text_form_field.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({super.key, this.nameController, this.phoneController, this.emailController, this.passwordController, this.passwordConfirmationController, this.cubit});
  final nameController;
  final phoneController;
  final emailController;
  final passwordController;
  final passwordConfirmationController;
  final cubit;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppTextFormField(
          textInputType: TextInputType.name,
          hintText: 'User Name',
          prefixIcon: const Icon(
            Icons.person_2_outlined,
            size: 22,
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter name';
            }
          },
          controller: nameController,
        ),
        verticalSpace(18),
        AppTextFormField(
          textInputType: TextInputType.phone,
          prefixIcon: const Icon(
            Icons.person_2_outlined,
            size: 22,
          ),
          hintText: 'ID number',
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter name';
            }
          },
          controller: phoneController,
        ),
        verticalSpace(18),
        AppTextFormField(
          textInputType: TextInputType.emailAddress,
          hintText: 'Email',
          prefixIcon: const Icon(
            Icons.email_outlined,
            size: 22,
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter name';
            }
          },
          controller: emailController,
        ),
        verticalSpace(18),
        AppTextFormField(
          textInputType: TextInputType.visiblePassword,
          controller: passwordController,
          hintText: 'Password',
          isObscureText: cubit.obscureText,
          prefixIcon: const Icon(
            Icons.lock_outline,
            size: 22,
          ),
          suffixIcon: GestureDetector(
            onTap: () {
              cubit.changeObscureText();
            },
            child:  Icon(
              cubit.obscureText? Icons.visibility:Icons.visibility_off,
            ),
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter password';
            }
          },
        ),
        verticalSpace(18),
        AppTextFormField(
          textInputType: TextInputType.visiblePassword,
          controller:passwordConfirmationController,
          hintText: 'Password Confirmation',
          isObscureText: cubit.obscureText1,
          prefixIcon: const Icon(
            Icons.lock_outline,
            size: 22,
          ),
          suffixIcon: GestureDetector(
            onTap: () {
              cubit.changeObscureText1();
            },
            child: Icon(
              cubit.obscureText1? Icons.visibility:Icons.visibility_off,
            ),
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter password';
            }
          },
        ),
      ],
    );
  }
}
