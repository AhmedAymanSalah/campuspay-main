import 'package:campuspay/core/helpers/spacing.dart';
import 'package:campuspay/core/widgets/app_text_form_field.dart';
import 'package:flutter/material.dart';

class DataProfileFormField extends StatelessWidget {
  DataProfileFormField({super.key});

  final TextEditingController emailController = TextEditingController();
  final TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(bottom: 6),
          child: Row(
            children: [
              Text(
                'Full Name',
                style: TextStyle(
                  color: Color(0xFF111827),
                  fontSize: 14,
                  fontFamily: 'Alexandria',
                  fontWeight: FontWeight.w400,
                  height: 0.10,
                ),
              ),
            ],
          ),
        ),
        AppTextFormField(
          hintText: ' Abdullah Khaled',
          hintTextStyle: const TextStyle(
            color: Color(0xFF111827),
            fontSize: 16,
            fontFamily: 'Alexandria',
            fontWeight: FontWeight.w500,
            height: 0.09,
          ),
          textInputType: TextInputType.name,
          controller: nameController,
          validator: (p0) {},
          backGroundColorHint: Colors.white,
          prefixIcon:
              const Image(image: AssetImage('assets/icons/Profile.png')),
        ),
        verticalSpace(20),
        const Padding(
          padding: EdgeInsets.only(bottom: 6),
          child: Row(
            children: [
              Text(
                'Email',
                style: TextStyle(
                  color: Color(0xFF9EA3AE),
                  fontSize: 14,
                  fontFamily: 'Alexandria',
                  fontWeight: FontWeight.w300,
                  height: 0.10,
                ),
              ),
            ],
          ),
        ),
        AppTextFormField(
          hintText: ' ak***@fayoum.edu.eg',
          hintTextStyle: const TextStyle(
            color: Color(0xFF9EA3AE),
            fontSize: 16,
            fontFamily: 'Alexandria',
            fontWeight: FontWeight.w500,
            height: 0.09,
          ),
          textInputType: TextInputType.name,
          controller: emailController,
          validator: (p0) {},
          backGroundColorHint: Colors.white,
          prefixIcon: const Icon(Icons.email_outlined),
        ),
      ],
    );
  }
}
