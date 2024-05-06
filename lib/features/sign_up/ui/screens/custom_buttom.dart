import 'package:flutter/material.dart';

import '../../../../core/utils/constant.dart';
import '../../../../core/widgets/app_button.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.formKey, this.emailController, this.nameController, this.phoneController, this.passwordController, this.passwordConfirmationController, this.cubit});

  final formKey;
  final emailController;
  final nameController;
  final phoneController;
  final passwordController;
  final passwordConfirmationController;
  final cubit;
  @override
  Widget build(BuildContext context) {
    return AppTextButton(
      text: "Create Account",
      onPressed: () {
        if (formKey.currentState!.validate()) {
          if (passwordController.text ==
              passwordConfirmationController.text) {
            if (cubit.type != null) {
              if(cubit.type =='Student') {
                cubit.createStudentUser(
                email: emailController.text,
                name: nameController.text,
                ssn: phoneController.text,
                password: passwordController.text,
                confirmPassword:
                passwordConfirmationController
                    .text,
                context: context,
              );
              }else if(cubit.type =='Donor'){
                cubit.createDonorUser(
                  email: emailController.text,
                  name: nameController.text,
                  ssn: phoneController.text,
                  password: passwordController.text,
                  confirmPassword:
                  passwordConfirmationController
                      .text,
                  context: context,
                );
              }
            } else {
              showToast(
                text: 'Choose the account type',
                color: Colors.red,
              );
            }
          } else {
            showToast(
              text: 'Password Mismatch',
              color: Colors.red,
            );
          }
        }
      },
    );
  }
}
