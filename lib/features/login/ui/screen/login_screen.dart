import 'package:campuspay/core/utils/constant.dart';
import 'package:campuspay/donator/featuers/layout/presentation/view/layout_view.dart';
import 'package:campuspay/features/forgetpassword/screens/forget_password_screen.dart';
import 'package:campuspay/features/login/presentation/manage/cubit/login_cubit.dart';
import 'package:campuspay/features/login/presentation/manage/cubit/login_states.dart';
import 'package:campuspay/moderator/features/layout/presentation/view/layout_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../admin/features/layout/presentation/view/layout_view.dart';
import '../../../../core/utils/components.dart';
import '../../../../core/utils/shared_preference.dart';
import '../../../layout/presentation/view/layout_view.dart';
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
          if (state.loginModel.status!) {
            buildShowLoading(context);
            showToast(
              text: state.loginModel.message!,
              color: Colors.green,
            );
            SharedPreference.saveData(
                    key: "token", value: state.loginModel.token)
                .then((value) {
                  token=state.loginModel.token;
                  if(state.loginModel.type =='Student') {
                    navigateAndFinish(context, const StudentLayoutView());
                  }else if(state.loginModel.type =='Admin'){
                    navigateAndFinish(context, const AdminLayoutView());
                  }else if(state.loginModel.type =='Moderator'){
                    navigateAndFinish(context, const ModeratorLayoutView());
                  }else if(state.loginModel.type =='Donor'){
                    navigateAndFinish(context, const DonatorLayoutView());
                  }
            });
          } else {
            showToast(
              text: state.loginModel.message!,
              color: Colors.red,
            );
          }
        }
        if(state is LoginErrorStates){
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
                                  navigateTo(context, const ForgetPasswordScreen());
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
                                    password: passwordController.text,
                                    context: context,
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
