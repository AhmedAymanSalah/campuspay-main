import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/widgets/app_text_form_field.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({super.key});

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {
  var emailController=TextEditingController();

  var passwordController=TextEditingController();

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
          validator: (value) {},
          controller: emailController,
        ),
        verticalSpace(18),
        AppTextFormField(
          textInputType: TextInputType.visiblePassword,
          controller: passwordController,
          prefixIcon: Icon(
            Icons.lock_outline,
            size: 20.sp,
          ),
          hintText: 'Password',
          isObscureText: true,
          suffixIcon: GestureDetector(
            onTap: () {},
            child: const Icon(Icons.visibility,),
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter a valid password';
            }
          },
        ),
      ],
    );
  }
}
