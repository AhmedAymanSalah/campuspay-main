import 'package:campuspay/features/sign_up/presentation/manage/cubit/signup_cubit.dart';
import 'package:campuspay/features/sign_up/presentation/manage/cubit/signup_states.dart';
import 'package:campuspay/features/sign_up/ui/screens/custom_buttom.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utils/components.dart';
import '../../../../core/utils/constant.dart';
import '../widgets/icon_and_Text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../login/ui/widgets/terms_and_conditions_text.dart';
import '../widgets/already_have_account_text.dart';
import '../widgets/sign_up_form.dart';
import 'radio_list.dart';
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
        if (state is SignUpSuccessStates || state is SignUpDonorSuccessStates) {
          buildShowLoading(context);
          if (state is SignUpSuccessStates) {
            showToast(
            text: state.signUpModel.massage!,
            color: Colors.green,
          );
          }
          if(state is SignUpDonorSuccessStates){
            showToast(
              text: state.signUpModel.massage!,
              color: Colors.green,
            );
          }
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const VerificationScreenSignUp()));
        }
        if (state is SignUpErrorStates || state is SignUpDonorErrorStates) {
          if (state is SignUpErrorStates) {
            showToast(
            text: state.error,
            color: Colors.red,
          );
          }
          if(state is SignUpDonorErrorStates){
            showToast(
              text: state.error,
              color: Colors.red,
            );
          }
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
                              CustomRadioListTitle(cubit: cubit,),
                              CustomButton(
                                cubit: cubit,
                                passwordConfirmationController: passwordConfirmationController,
                                phoneController: phoneController,
                                nameController: nameController,
                                passwordController: passwordController,
                                emailController: emailController,
                                formKey: formKey,
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
