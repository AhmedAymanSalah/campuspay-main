import 'package:campuspay/core/helpers/extentions.dart';
import 'package:campuspay/core/routes/routes.dart';
import 'package:campuspay/core/utils/constant.dart';
import 'package:campuspay/features/home/ui/screen/home_screen.dart';
import 'package:campuspay/features/login/presentation/manage/cubit/login_cubit.dart';
import 'package:campuspay/features/login/presentation/manage/cubit/login_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utils/components.dart';
import '../widgets/icon_and_Text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/widgets/app_button.dart';
import '../../../../core/widgets/custom_text_widget.dart';
import '../widgets/dont_have_account_text.dart';
import '../widgets/email_and_password.dart';
import '../widgets/terms_and_conditions_text.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailController = TextEditingController();

  var passwordController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginStates>(
      listener: (BuildContext context, state) {
        if (state is LoginSuccessStates) {
          buildShowLoading(context);
          showToast(
            text: state.loginModel.massage!,
            color: Colors.green,
          );
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const HomeScreen()));
            }
        if(state is LoginErrorStates){
         // buildShowLoading(context);
          showToast(
            text: state.error,
            color: Colors.red,
          );
        }
      },
      builder: (BuildContext context, Object? state) {
        var cubit = LoginCubit().get(context);
        return Form(
          key: formKey,
          child: Scaffold(
            backgroundColor: Colors.grey.shade200,
            body: SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
                child: SingleChildScrollView(
                  child: Center(
                    child: Column(
                      //crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        verticalSpace(20),
                        const IconAndText(),
                        verticalSpace(30),
                        Column(
                          children: [
                            EmailAndPassword(
                              cubit: cubit,
                              passwordController: passwordController,
                              emailController: emailController,
                            ),
                            verticalSpace(15),
                            Align(
                              alignment: AlignmentDirectional.centerEnd,
                              child: GestureDetector(
                                onTap: () {
                                  context
                                      .navigateTo(Routes.forgetPasswordScreen);
                                },
                                child: CustomTextWidget(
                                  text: "Forget Password?",
                                  color: Colors.grey.shade600,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13.sp,
                                ),
                              ),
                            ),
                            verticalSpace(25),
                            AppTextButton(
                              text: "Login",
                              onPressed: () {
                                if (formKey.currentState!.validate()) {
                                  cubit.userLogin(
                                    email: emailController.text,
                                    password: passwordController.text, context: context,
                                  );
                                }
                              },
                            ),
                            verticalSpace(14),
                            const TermsAndConditionsText(),
                            verticalSpace(20),
                            const DontHaveAccountText(),
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
      },
    );
  }
}
