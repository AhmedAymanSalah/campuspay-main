import 'package:flutter/material.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/widgets/app_text_form_field.dart';

class SignupForm extends StatefulWidget {
  const SignupForm({super.key});

  @override
  State<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  var nameController=TextEditingController();
  var phoneController=TextEditingController();
  var emailController=TextEditingController();
  var passwordController=TextEditingController();
  var passwordConfirmationController=TextEditingController();

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
              return 'Please enter a valid name';
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
          validator: (p0) {},
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
          validator: (value) {},
          controller: emailController,
        ),
        verticalSpace(18),
        AppTextFormField(
          textInputType: TextInputType.visiblePassword,
          controller: passwordController,
          hintText: 'Password',
          isObscureText: true,
          prefixIcon: const Icon(
            Icons.lock_outline,
            size: 22,
          ),
          suffixIcon: GestureDetector(
            onTap: () {},
            child: const Icon(
              Icons.visibility_off,
            ),
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter a valid password';
            }
          },
        ),
        verticalSpace(18),
        AppTextFormField(
          textInputType: TextInputType.visiblePassword,
          controller:passwordConfirmationController,
          hintText: 'Password Confirmation',
          isObscureText: true,
          prefixIcon: const Icon(
            Icons.lock_outline,
            size: 22,
          ),
          suffixIcon: GestureDetector(
            onTap: () {},
            child: const Icon(Icons.visibility,),
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter a valid password';
            }
          },
        ),
      ],
    );
  }
}
