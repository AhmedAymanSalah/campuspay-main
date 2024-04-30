// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:campuspay/core/routes/app_router.dart';
import 'core/routes/routes.dart';

class Campuspay extends StatelessWidget {
  const Campuspay({
    super.key,
    required this.appRouter,
  });
  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.myCustomSplashScreen,
        onGenerateRoute: appRouter.generateRoute,
        //theme: ThemeData(useMaterial3: false),
      ),
    );
  }
}
