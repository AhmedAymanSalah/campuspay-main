// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField(
      {super.key, this.onChange, required this.hintText, this.obscureText = false});
  Function(String)? onChange;
  String? hintText;
  bool? obscureText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText!,
      // ignore: body_might_complete_normally_nullable
      validator: (data) {
        if (data!.isEmpty) {
          return 'Value is required';
        }
      },
      onChanged: onChange,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.white),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        border: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
      ),
    );
  }
}
