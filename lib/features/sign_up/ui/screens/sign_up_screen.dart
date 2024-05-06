import 'package:campuspay/features/sign_up/presentation/manage/cubit/signup_cubit.dart';
import 'package:campuspay/features/sign_up/presentation/manage/cubit/signup_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utils/constant.dart';
import '../widgets/icon_and_Text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/widgets/app_button.dart';
import '../../../login/ui/widgets/terms_and_conditions_text.dart';
import '../widgets/already_have_account_text.dart';
import '../widgets/sign_up_form.dart';
import 'verification_screen_signup.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  var formKey = GlobalKey<FormState>();
  var nameController = TextEditingController();
  var phoneController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var passwordConfirmationController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpCubit, SignUpStates>(
      listener: (BuildContext context, state) {
        if (state is SignUpSuccessStates) {
          showToast(
            text: state.signUpModel.massage!,
            color: Colors.green,
          );
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const VerificationScreenSignUp()));
        }
        if (state is SignUpErrorStates) {
          showToast(
            text: state.error,
            color: Colors.red,
          );
        }
      },
      builder: (BuildContext context, Object? state) {
        var cubit = SignUpCubit().get(context);
        return Form(
          key: formKey,
          child: Scaffold(
            backgroundColor: Colors.grey.shade300,
            body: SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20.w,
                ),
                child: SingleChildScrollView(
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 20.h),
                      child: Column(
                        children: [
                          verticalSpace(10),
                          const IconAndTextSiginUp(),
                          verticalSpace(30),
                          Column(
                            children: [
                              SignupForm(
                                emailController: emailController,
                                passwordController: passwordController,
                                nameController: nameController,
                                phoneController: phoneController,
                                passwordConfirmationController:
                                    passwordConfirmationController,
                                cubit: cubit,
                              ),
                              verticalSpace(30),
                              AppTextButton(
                                text: "Create Account",
                                onPressed: () {
                                  if (formKey.currentState!.validate()) {
                                    if (passwordController.text ==
                                        passwordConfirmationController.text) {
                                      cubit.createUser(
                                        email: emailController.text,
                                        name: nameController.text,
                                        ssn: phoneController.text,
                                        password: passwordController.text,
                                        confirmPassword:
                                            passwordConfirmationController.text,
                                      );
                                    } else {
                                      showToast(
                                        text: 'Password Mismatch',
                                        color: Colors.red,
                                      );
                                    }
                                  }
                                },
                              ),
                              verticalSpace(14),
                              const TermsAndConditionsText(),
                              verticalSpace(20),
                              const AlreadyHaveAccountText(),
                              //const SignupBlocListener(),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
