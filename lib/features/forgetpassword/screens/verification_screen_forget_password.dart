import 'package:campuspay/core/widgets/custom_text_widget.dart';
import 'package:campuspay/features/forgetpassword/presentation/cubit/forget_password_cubit/forget_password_cubit.dart';
import 'package:campuspay/features/forgetpassword/presentation/cubit/forget_password_cubit/forget_password_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/app_images.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/theme/colors.dart';
import '../../../../core/utils/constant.dart';
import '../../../../core/widgets/app_button.dart';
import '../../../../core/widgets/app_text_form_field.dart';
import '../../../core/utils/components.dart';
import 'new_password.dart';

class VerificationScreenForgetPassword extends StatefulWidget {
  const VerificationScreenForgetPassword({super.key});

  @override
  State<VerificationScreenForgetPassword> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreenForgetPassword> {
  var controller = TextEditingController();
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ForgetPasswordCubit, ForgetPasswordStates>(
      listener: (BuildContext context, state) {
        if (state is VerificationForgetPasswordSuccessStates) {
          buildShowLoading(context);
          showToast(
            text: state.verificationModel.massage!,
            color: Colors.green,
          );
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const NewPasswordScreen()));
        }
        if(state is VerificationForgetPasswordErrorStates){
          showToast(
            text:'Code is Incorrect',
            color: Colors.red,
          );
        }
      },
      builder: (BuildContext context, Object? state) {
        var cubit = ForgetPasswordCubit().get(context);
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
                      textInputType: TextInputType.number,
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
                            verificationCode: int.parse(controller.text),
                            userId: cubit.forgetPasswordModel.userId!,
                            context: context,
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
