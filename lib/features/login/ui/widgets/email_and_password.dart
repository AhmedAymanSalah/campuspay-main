import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/widgets/app_text_form_field.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({super.key, this.cubit, this.emailController, this.passwordController});

  final cubit;
  final emailController;
  final passwordController;
  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppTextFormField(
          textInputType: TextInputType.emailAddress,
          prefixIcon: Icon(
            Icons.email_outlined,
            size: 20.sp,
          ),
          hintText: 'University Email',
          validator: (value) {
            if(value!.isEmpty){
              return 'Enter your Email';
            }
          },
          controller: widget.emailController,
        ),
        verticalSpace(18),
        AppTextFormField(
          textInputType: TextInputType.visiblePassword,
          controller: widget.passwordController,
          prefixIcon: Icon(
            Icons.lock_outline,
            size: 20.sp,
          ),
          hintText: 'Password',
          isObscureText: widget.cubit.obscureText,
          suffixIcon: GestureDetector(
            onTap: () {
              widget.cubit.changeObscureText();
            },
            child:widget.cubit.obscureText? const Icon(Icons.visibility,) :Icon(Icons.visibility_off),
          ),
          validator: (value) {
            if (value!.isEmpty) {
              return 'Please enter password';
            }
          },
        ),
      ],
    );
  }
}
