import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

String? token;


void showToast({
  required String text,
  required Color color
})=>Fluttertoast.showToast(
  msg: text,
  toastLength: Toast.LENGTH_LONG,
  gravity: ToastGravity.BOTTOM,
  timeInSecForIosWeb: 5,
  backgroundColor: color,
  textColor: Colors.white,
  fontSize: 16.0,
);

 navigateTo(context,Widget)=>Navigator.push(
    context,
    MaterialPageRoute(
        builder: (context)=>Widget
    ));

 navigateAndFinish(context,Widget)=>  Navigator.pushAndRemoveUntil(
  context,
  MaterialPageRoute(
      builder: (context) => Widget),
      (route) => false,
);


final TextEditingController emailController = TextEditingController();
final TextEditingController ssnController = TextEditingController();
final TextEditingController nameController = TextEditingController();