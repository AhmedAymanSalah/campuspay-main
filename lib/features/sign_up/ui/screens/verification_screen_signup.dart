// ignore_for_file: avoid_print

import 'package:campuspay/core/widgets/custom_text_widget.dart';
import 'package:campuspay/features/sign_up/presentation/manage/cubit/signup_cubit.dart';
import 'package:campuspay/features/sign_up/presentation/manage/cubit/signup_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/app_images.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/theme/colors.dart';
import '../../../../core/utils/constant.dart';
import '../../../../core/widgets/app_button.dart';
import '../../../../core/widgets/app_text_form_field.dart';
import 'verified_screen.dart';

class VerificationScreenSignUp extends StatefulWidget {
  const VerificationScreenSignUp({super.key});

  @override
  State<VerificationScreenSignUp> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreenSignUp> {
  var controller = TextEditingController();
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpCubit, SignUpStates>(
      listener: (BuildContext context, state) {
        if (state is VerificationSuccessStates) {
          showToast(
            text: state.verificationModel.massage!,
            color: Colors.green,
          );
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const SignUpVerified()));
        }
        if(state is VerificationErrorStates){
          showToast(
            text:'Code is Incorrect',
            color: Colors.red,
          );
        }
      },
      builder: (BuildContext context, Object? state) {
        var cubit = SignUpCubit().get(context);
        return Form(
          key: formKey,
          child: Scaffold(
            extendBodyBehindAppBar: true,
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Colors.transparent,
            ),
            body: Container(
              height: double.infinity.h,
              width: double.infinity.h,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(Assets.imagesBackgrond),
                      fit: BoxFit.cover)),
              child: Padding(
                padding: EdgeInsets.only(
                    top: 65.h, left: 25.h, bottom: 30.h, right: 25.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    verticalSpace(25),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomTextWidget(
                          text: "Verify Code",
                          fontSize: 24.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                        verticalSpace(20),
                        CustomTextWidget(
                          text:
                              "Please enter the code we just sent to email ak***@fayoum.edu.eg",
                          fontSize: 14.sp,
                          color: ColorsManager.lightGray,
                          fontWeight: FontWeight.bold,
                        ),
                      ],
                    ),
                    verticalSpace(35),
                    //const OtpForm(),
                    verticalSpace(20),
                    // CustomTextWidget(
                    //   text: "Resend code in : 00:48",
                    //   fontSize: 14.sp,
                    //   color: ColorsManager.lightGray,
                    //   fontWeight: FontWeight.bold,
                    // ),
                    AppTextFormField(
                      textInputType: TextInputType.emailAddress,
                      prefixIcon: Icon(
                        Icons.code,
                        size: 20.sp,
                      ),
                      hintText: 'Enter code of 6 digits',
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Enter your code';
                        }
                        if (value.length != 6) {
                          return 'Please enter 6 digits';
                        }
                      },
                      controller: controller,
                    ),
                    const Spacer(),
                    AppTextButton(
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          cubit.verificationCode(
                            verificationCode: controller.text,
                            userId: cubit.signUpModel.userId!,
                          );
                          print(controller.text);
                          //context.navigateTo(Routes.newPasswordScreen);
                        }
                      },
                      text: "Continue",
                    )
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
