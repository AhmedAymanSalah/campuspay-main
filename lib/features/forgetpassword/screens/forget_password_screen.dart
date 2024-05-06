import 'package:campuspay/core/theme/colors.dart';
import 'package:campuspay/core/utils/constant.dart';
import 'package:campuspay/features/forgetpassword/screens/verification_screen_forget_password.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:campuspay/core/widgets/app_button.dart';

import '../../../core/helpers/spacing.dart';
import '../../../core/utils/components.dart';
import '../../../core/widgets/custom_text_form_filed.dart';
import '../../../core/widgets/custom_text_widget.dart';
import '../presentation/cubit/forget_password_cubit/forget_password_cubit.dart';
import '../presentation/cubit/forget_password_cubit/forget_password_states.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({
    super.key,
  });

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  var emailResetController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ForgetPasswordCubit, ForgetPasswordStates>(
      listener: (BuildContext context, state) {
        if (state is ForgetPasswordSuccessStates) {
          buildShowLoading(context);
          showToast(
            text: state.forgetPasswordModel.massage!,
            color: Colors.green,
          );
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const VerificationScreenForgetPassword()),
          );
        }
        if (state is ForgetPasswordErrorStates) {
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
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  //mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    verticalSpace(65),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomTextWidget(
                          text: "Reset Password",
                          fontSize: 24.sp,
                          color: ColorsManager.darkBlue,
                          fontWeight: FontWeight.bold,
                        ),
                        verticalSpace(8),
                        CustomTextWidget(
                          text:
                              "Enter your email, we will send a verification code to email",
                          fontSize: 14.sp,
                          color: ColorsManager.gray,
                          fontWeight: FontWeight.bold,
                        ),
                      ],
                    ),
                    verticalSpace(50),
                    CustomTextFormFiled(
                      textInputType: TextInputType.emailAddress,
                      titel: "Email..",
                      prefixIcon: Icon(
                        Icons.email_outlined,
                        size: 18.sp,
                      ),
                      hintText: "Enter Your Email Address",
                      controller: emailResetController,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    AppTextButton(
                      text: "Go",
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          cubit.forgetPassword(
                            email: emailResetController.text,
                            context: context,
                          );
                        }
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
