import 'package:campuspay/core/utils/api_service.dart';
import 'package:campuspay/core/utils/shared_preference.dart';
import 'package:campuspay/features/login/ui/screen/login_screen.dart';

import 'core/routes/app_router.dart';
import 'package:flutter/material.dart';

import 'campuspay.dart';
import 'core/utils/constant.dart';
import 'core/utils/person_screen.dart';
import 'features/home/ui/screen/home_screen.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPreference.init();
  ApiService.init();

  token=SharedPreference.getData(key: 'token');
  print(token);

  Widget? widget;

  // if(token !=null){
  //   widget=const HomeScreen();
  // }else{
  //   widget =const LoginScreen();
  // }
  runApp( Campuspay(appRouter: AppRouter(), startWidget: widget,));
}
