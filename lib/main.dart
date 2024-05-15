// ignore_for_file: avoid_print

import 'package:campuspay/core/utils/api_service.dart';
import 'package:campuspay/core/utils/shared_preference.dart';

import 'core/routes/app_router.dart';
import 'package:flutter/material.dart';

import 'campuspay.dart';
import 'core/utils/constant.dart';




void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPreference.init();
  ApiService.init();

  token=SharedPreference.getData(key: 'token');
  print(token);


  // if(token !=null){
  //   widget=const HomeScreen();
  // }else{
  //   widget =const LoginScreen();
  // }
  runApp( Campuspay(appRouter: AppRouter()));
}
