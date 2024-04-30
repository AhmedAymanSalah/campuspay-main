import '../widgets/icon_and_Text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/widgets/app_button.dart';
import '../../../login/ui/widgets/terms_and_conditions_text.dart';
import '../../logic/sign_up_cubit.dart';
import '../widgets/already_have_account_text.dart';
import '../widgets/sign_up_bloc_listener.dart';
import '../widgets/sign_up_form.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                        const SignupForm(),
                        verticalSpace(30),
                        AppTextButton(
                          text: "Create Account",
                          onPressed: () {
                            validateThenDoSignup(context);
                          },
                        ),
                        verticalSpace(14),
                        const TermsAndConditionsText(),
                        verticalSpace(20),
                        const AlreadyHaveAccountText(),
                        const SignupBlocListener(),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void validateThenDoSignup(BuildContext context) {
    if (context.read<SignupCubit>().formKey.currentState!.validate()) {
      context.read<SignupCubit>().emitSignupStates();
    }
  }
}
