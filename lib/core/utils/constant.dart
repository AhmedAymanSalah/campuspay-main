import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';


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



// ignore: avoid_types_as_parameter_names, non_constant_identifier_names
void navigateTo(context,Widget)=>Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context)=>Widget
    ));

// ignore: avoid_types_as_parameter_names, non_constant_identifier_names
void navigateAndFinish(context,Widget)=>  Navigator.pushAndRemoveUntil(
     context,
     MaterialPageRoute(
         builder: (context) => Widget),
         (route) => false,
);
