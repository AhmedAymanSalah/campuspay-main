import 'package:campuspay/features/login/presentation/manage/cubit/login_cubit.dart';
import 'package:campuspay/features/sign_up/presentation/manage/cubit/signup_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:campuspay/core/routes/app_router.dart';
import 'core/routes/routes.dart';
import 'features/forgetpassword/presentation/cubit/forget_password_cubit/forget_password_cubit.dart';

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
      child: MultiBlocProvider(
        providers: [
          BlocProvider(create: (BuildContext context)=>LoginCubit(),),
          BlocProvider(create: (BuildContext context)=>ForgetPasswordCubit(),),
          BlocProvider(create: (BuildContext context)=>SignUpCubit(),),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: Routes.myCustomSplashScreen,
          onGenerateRoute: appRouter.generateRoute,
          //theme: ThemeData(useMaterial3: false),
        ),
      ),
    );
  }
}
