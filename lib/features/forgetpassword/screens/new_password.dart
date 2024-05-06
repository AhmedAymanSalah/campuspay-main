import 'package:campuspay/core/utils/constant.dart';
import 'package:campuspay/features/forgetpassword/presentation/cubit/forget_password_cubit/forget_password_cubit.dart';
import 'package:campuspay/features/forgetpassword/presentation/cubit/forget_password_cubit/forget_password_states.dart';
import 'package:campuspay/features/forgetpassword/screens/password_changed_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helpers/spacing.dart';
import '../../../core/theme/colors.dart';
import '../../../core/widgets/app_button.dart';
import '../../../core/widgets/custom_text_form_filed.dart';
import '../../../core/widgets/custom_text_widget.dart';

class NewPasswordScreen extends StatefulWidget {
  const NewPasswordScreen({super.key});

  @override
  State<NewPasswordScreen> createState() => _NewPasswordScreenState();
}

class _NewPasswordScreenState extends State<NewPasswordScreen> {
  var passwordController = TextEditingController();

  var confirmPasswordController = TextEditingController();

  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ForgetPasswordCubit, ForgetPasswordStates>(
      listener: (BuildContext context, state) {
        if (state is ResetPasswordSuccessStates) {
          showToast(
            text: state.resetPasswordModel.error!,
            color: Colors.green,
          );
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const PasswordGhangeedScreen()));
        }
        if (state is ResetPasswordErrorStates) {
          showToast(
            text: state.error,
            color: Colors.red,
          );
        }
      },
      builder: (BuildContext context, Object? state) {
        var cubit = ForgetPasswordCubit().get(context);
        return Form(
          key: formKey,
          child: Scaffold(
            appBar: AppBar(
              elevation: 0,
            ),
            body: Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 50.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  verticalSpace(65),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomTextWidget(
                        text: "New Password",
                        fontSize: 24.sp,
                        color: ColorsManager.darkBlue,
                        fontWeight: FontWeight.bold,
                      ),
                      verticalSpace(10),
                      CustomTextWidget(
                        text:
                            "Create a new password that is safe and easy to remember",
                        fontSize: 14.sp,
                        color: ColorsManager.gray,
                        fontWeight: FontWeight.bold,
                      ),
                    ],
                  ),
                  verticalSpace(50),
                  CustomTextFormFiled(
                    controller: passwordController,
                    textInputType: TextInputType.visiblePassword,
                    isObscureText: cubit.obscureText,
                    suffixIcon: GestureDetector(
                      onTap: () {
                        cubit.changeObscureText();
                      },
                      child: Icon(
                        cubit.obscureText
                            ? Icons.visibility
                            : Icons.visibility_off,
                      ),
                    ),
                    titel: "New Password",
                    prefixIcon: Icon(
                      Icons.lock_outline,
                      size: 18.sp,
                    ),
                    hintText: "Enter New Password",
                  ),
                  verticalSpace(25),
                  CustomTextFormFiled(
                    controller: confirmPasswordController,
                    textInputType: TextInputType.visiblePassword,
                    isObscureText: cubit.obscureText1,
                    suffixIcon: GestureDetector(
                      onTap: () {
                        cubit.changeObscureText1();
                      },
                      child: Icon(
                        cubit.obscureText1
                            ? Icons.visibility
                            : Icons.visibility_off,
                      ),
                    ),
                    titel: "Confirm Password",
                    prefixIcon: Icon(
                      Icons.lock_outline,
                      size: 18.sp,
                    ),
                    hintText: "Password Confirmation",
                  ),
                  const Spacer(),
                  AppTextButton(
                    text: "Confirm New Password",
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        if (passwordController.text ==
                            confirmPasswordController.text) {
                          cubit.resetPassword(
                            userId: cubit.forgetPasswordModel.userId!,
                            newPassword: passwordController.text,
                          );
                        } else {
                          showToast(
                            text: 'Password is Mismatch',
                            color: Colors.red,
                          );
                        }
                      }
                    },
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
