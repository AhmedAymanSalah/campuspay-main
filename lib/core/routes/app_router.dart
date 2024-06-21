import 'package:campuspay/features/pay_screens/ui/screens/done_screen.dart';
import 'package:campuspay/features/pay_screens/ui/screens/error_Screen.dart';
import 'package:campuspay/features/services/ui/screens/services_list_view.dart';
import '../../admin/features/admin_service/ui/screens/create_service_screen.dart';
import '../../admin/features/admin_service/ui/screens/service_done_screen.dart';
import '../../admin/features/home/ui/screens/home_screen.dart';
import '../../features/forgetpassword/screens/forget_password_screen.dart';
import '../../features/forgetpassword/screens/new_password.dart';
import '../../features/forgetpassword/screens/password_changed_screen.dart';
import '../../features/home/ui/screen/recent_transaction_screen.dart';
import '../../features/social_request/ui/screen/social_request_screen.dart';
import '../../features/social_request/ui/screen/submit_sccessed_screen.dart';
import '../../features/status/ui/screens/top_spending_screen.dart';
import '../../features/transfer_money/screens/transfer_money_Screen.dart';

import '../../moderator/features/home/ui/screens/moderator_home_Screen.dart';
import '../../moderator/features/request_data/ui/screens/request_data.dart';
import '../../moderator/request_info/screens/accept_screen.dart';
import '../../moderator/request_info/screens/request_refused.dart';
import 'routes.dart';
import '../../features/attention/ui/attention_Screen.dart';
import 'package:flutter/material.dart';
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

      // case Routes.bottomNavBar:
      //   // Return a MaterialPageRoute for the OnBoardingScreen route.
      //   return MaterialPageRoute(
      //     builder: (_) => BlocProvider(
      //       create: (context) => BottomNavBarCubit(),
      //       child: const BottomNavBar(),
      //     ),
      //   );
      case Routes.forgetPasswordScreen:
        // Return a MaterialPageRoute for the MyAccountScreen route.
        return MaterialPageRoute(builder: (_) => const ForgetPasswordScreen());

      case Routes.newPasswordScreen:
        // Return a MaterialPageRoute for the MyAccountScreen route.
        return MaterialPageRoute(builder: (_) => const NewPasswordScreen());
      case Routes.passwordGhangeedScreen:
        // Return a MaterialPageRoute for the MyAccountScreen route.
        return MaterialPageRoute(
            builder: (_) => const PasswordGhangeedScreen());

      // case Routes.settingsScreen:
      //   // Return a MaterialPageRoute for the SettingsScreen route.
      //   return MaterialPageRoute(builder: (_) => const SettingsScreen());

      case Routes.servicesScreen:
        // Return a MaterialPageRoute for the OnBoardingScreen route.
        return MaterialPageRoute(builder: (_) => const ServicesScreen());
      case Routes.socialRequestScreen:
        // Return a MaterialPageRoute for the MyAccountScreen route.
        return MaterialPageRoute(builder: (_) => const SocialRequestScreen());
      case Routes.submetSccessScreen:
        // Return a MaterialPageRoute for the MyAccountScreen route.
        return MaterialPageRoute(builder: (_) => const SubmitSccessScreen());
      case Routes.doneScreen:
        // Return a MaterialPageRoute for the OnBoardingScreen route.
        return MaterialPageRoute(builder: (_) => const DoneScreen());
      case Routes.errorScreen:
        // Return a MaterialPageRoute for the OnBoardingScreen route.
        return MaterialPageRoute(builder: (_) => const ErrorScreen());
      case Routes.transferMoney:
        // Return a MaterialPageRoute for the OnBoardingScreen route.
        return MaterialPageRoute(builder: (_) => const TransferMoney());
      // case Routes.caredsScreen:
      //   // Return a MaterialPageRoute for the OnBoardingScreen route.
      //   return MaterialPageRoute(builder: (_) => const CaredsScreen());
      case Routes.recentTransactionScreen:
        // Return a MaterialPageRoute for the OnBoardingScreen route.
        return MaterialPageRoute(
            builder: (_) => const RecentTransactionScreen());
      case Routes.topSpendingScreen:
        // Return a MaterialPageRoute for the OnBoardingScreen route.
        return MaterialPageRoute(builder: (_) => const TopSpendingScreen());
      case Routes.moderatorHomeScreen:
        // Return a MaterialPageRoute for the OnBoardingScreen route.
        return MaterialPageRoute(builder: (_) => const ModeratorHomeScreen());

      // case Routes.moderatorBottomNavBar:
      //   // Return a MaterialPageRoute for the OnBoardingScreen route.
      //   return MaterialPageRoute(
      //     builder: (_) => BlocProvider(
      //       create: (context) => ModeratorBottomNavBarCubit(),
      //       child: const ModeratorBottomNavBar(),
      //     ),
      //   );
      case Routes.requestAcceptScreen:
        // Return a MaterialPageRoute for the OnBoardingScreen route.
        return MaterialPageRoute(builder: (_) => const RequestAcceptScreen());
      case Routes.requestRefusedScreen:
        // Return a MaterialPageRoute for the OnBoardingScreen route.
        return MaterialPageRoute(builder: (_) => const RequestRefusedScreen());
      case Routes.requestDataScreen:
        // Return a MaterialPageRoute for the OnBoardingScreen route.
        return MaterialPageRoute(builder: (_) => const RequestDataScreen());
      case Routes.adminHomeScreen:
        // Return a MaterialPageRoute for the OnBoardingScreen route.
        return MaterialPageRoute(builder: (_) => const AdminHomeScreen());
      // case Routes.adminNavBar:
      //   return MaterialPageRoute(
      //     builder: (_) => BlocProvider(
      //       create: (context) => AdminNavBarCubit(),
      //       child: const AdminNavBar(),
      //     ),
      //   );
      case Routes.createServiceScreen:
        // Return a MaterialPageRoute for the OnBoardingScreen route.
        return MaterialPageRoute(builder: (_) => const CreateServiceScreen());
      case Routes.serviceDoneScreen:
        // Return a MaterialPageRoute for the OnBoardingScreen route.
        return MaterialPageRoute(builder: (_) => const ServiceDoneScreen());
      // case Routes.updateServiceScreen:
      //   // Return a MaterialPageRoute for the OnBoardingScreen route.
      //   return MaterialPageRoute(builder: (_) => const UpdateServiceScreen());
    }
    return null;
  }
}
