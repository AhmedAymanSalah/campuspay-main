import 'package:flutter/material.dart';

Widget textFieldProfile({
  required TextEditingController controller,
  required TextInputType type,
  String? label,
  String? hintText,
  Widget? prefix,
  required BuildContext context,
}) =>
    TextFormField(
      controller: controller,
      keyboardType: type,
      style: Theme.of(context).appBarTheme.titleTextStyle,
      cursorColor: Colors.grey,
      decoration: InputDecoration(
        border: _getBorderStyle(),
        focusedBorder: _getBorderStyle(),
        enabledBorder: _getBorderStyle(color: Colors.grey),
        hintText: hintText,
        prefixIconColor: Colors.amber,
        hintStyle: const TextStyle(
          color: Colors.grey,
          fontSize: 22,
        ),
        labelText: label,
        labelStyle: const TextStyle(
          color: Colors.grey,
        ),
        prefix: prefix,
      ),
    );
OutlineInputBorder _getBorderStyle({Color? color}) {
  return OutlineInputBorder(
    borderSide: BorderSide(
      color: color ?? Colors.grey,
    ),
  );
}
