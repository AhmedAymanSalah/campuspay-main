import 'package:campuspay/features/home/logic/cubit/home_cubit.dart';
import 'package:campuspay/features/home/logic/nav_bar_cubit/bottom_nav_bar_cubit.dart';
import 'package:campuspay/features/home/ui/screen/bottom_nav_bar.dart';
import 'package:campuspay/features/pay_screens/ui/screens/done_screen.dart';
import 'package:campuspay/features/pay_screens/ui/screens/error_Screen.dart';
import 'package:campuspay/features/profile/ui/screens/my_account_screen.dart';
import 'package:campuspay/features/profile/ui/screens/settings_screen.dart';
import 'package:campuspay/features/services/ui/screens/services_list_view.dart';
import 'package:campuspay/features/transfer_money/screens/transfer_success.dart';

import '../../features/forgetpassword/screens/forget_password_screen.dart';
import '../../features/forgetpassword/screens/new_password.dart';
import '../../features/forgetpassword/screens/password_changed_screen.dart';
import '../../features/home/ui/screen/recent_transaction_screen.dart';
import '../../features/status/ui/screens/top_spending_screen.dart';
import '../../features/transfer_money/screens/transfer_money_Screen.dart';
import '../../features/visa/screens/cardes_screen.dart';
import 'routes.dart';
import '../../features/attention/ui/attention_Screen.dart';
import '../../features/home/ui/screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../features/onboarding/ui/screens/onboarding_screen.dart';
import '../../features/splash/ui/custom_splash_screen.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    // Extract the route name from the settings.
    final String routeName = settings.name!;

    switch (routeName) {
      case Routes.onBoardingScreen:
        // Return a MaterialPageRoute for the OnBoardingScreen route.
        return MaterialPageRoute(builder: (_) => const OnBoardingScreen());

      case Routes.myCustomSplashScreen:
        // Return a MaterialPageRoute for the SplashScreen route.
        return MaterialPageRoute(builder: (_) => const SplashScreen());

      case Routes.attentionPage:
        // Return a MaterialPageRoute for the AttentionScreen route.
        return MaterialPageRoute(builder: (_) => const AttentionScreen());

      case Routes.homeScreen:
        // Return a MaterialPageRoute for the HomeScreen route.
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => HomeCubit(),
                  child: const HomeScreen(),
                ));

      case Routes.bottomNavBar:
        // Return a MaterialPageRoute for the OnBoardingScreen route.
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => BottomNavBarCubit(),
                  child: const BottomNavBar(),
                ));
      case Routes.forgetPasswordScreen:
        // Return a MaterialPageRoute for the MyAccountScreen route.
        return MaterialPageRoute(builder: (_) => const ForgetPasswordScreen());

      case Routes.newPasswordScreen:
        // Return a MaterialPageRoute for the MyAccountScreen route.
        return MaterialPageRoute(builder: (_) => const NewPasswordScreen());
      case Routes.passwordGhangeedScreen:
        // Return a MaterialPageRoute for the MyAccountScreen route.
        return MaterialPageRoute(builder: (_) => const PasswordGhangeedScreen());
      case Routes.myAccountScreen:
        // Return a MaterialPageRoute for the MyAccountScreen route.
        return MaterialPageRoute(builder: (_) => const MyAccountScreen());

      case Routes.settingsScreen:
        // Return a MaterialPageRoute for the SettingsScreen route.
        return MaterialPageRoute(builder: (_) => const SettingsScreen());

      case Routes.servicesScreen:
        // Return a MaterialPageRoute for the OnBoardingScreen route.
        return MaterialPageRoute(builder: (_) => const ServicesScreen());
      case Routes.doneScreen:
        // Return a MaterialPageRoute for the OnBoardingScreen route.
        return MaterialPageRoute(builder: (_) => const DoneScreen());
      case Routes.errorScreen:
        // Return a MaterialPageRoute for the OnBoardingScreen route.
        return MaterialPageRoute(builder: (_) => const ErrorScreen());
      case Routes.transferMoney:
        // Return a MaterialPageRoute for the OnBoardingScreen route.
        return MaterialPageRoute(builder: (_) => const TransferMoney());
      case Routes.caredsScreen:
        // Return a MaterialPageRoute for the OnBoardingScreen route.
        return MaterialPageRoute(builder: (_) => const CaredsScreen());
      case Routes.transferSuccess:
        // Return a MaterialPageRoute for the OnBoardingScreen route.
        return MaterialPageRoute(builder: (_) => const TransferSuccess());
      case Routes.recentTransactionScreen:
        // Return a MaterialPageRoute for the OnBoardingScreen route.
        return MaterialPageRoute(builder: (_) => const RecentTransactionScreen());
      case Routes.topSpendingScreen:
        // Return a MaterialPageRoute for the OnBoardingScreen route.
        return MaterialPageRoute(builder: (_) => const TopSpendingScreen());
    }
    return null;
  }
}