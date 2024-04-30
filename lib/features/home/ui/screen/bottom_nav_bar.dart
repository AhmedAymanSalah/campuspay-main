import 'package:campuspay/features/home/logic/nav_bar_cubit/bottom_nav_bar_cubit.dart';
import 'package:campuspay/features/home/ui/screen/home_screen.dart';
import 'package:campuspay/features/profile/ui/screens/profile_screen.dart';
import 'package:campuspay/features/services/ui/screens/services_list_view.dart';
import 'package:campuspay/features/status/ui/screens/stats_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconly/iconly.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  late PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  final List<Widget> screens = const [
    HomeScreen(),
    StatsScreen(),
    ServicesScreen(),
    ProfileScreen(),
  ];

  void onPageChanged(int page) {
    BlocProvider.of<BottomNavBarCubit>(context).changeSelectedIndex(page);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
      bottomNavigationBar: _bottomNavBar(context),
    );
  }

  _buildBody() {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: PageView(
        onPageChanged: (int page) => onPageChanged(page),
        controller: pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: screens,
      ),
    );
  }

  BottomAppBar _bottomNavBar(BuildContext context) {
    return BottomAppBar(
      color: Theme.of(context).cardColor,
      height: MediaQuery.of(context).size.height * 0.08,
      child: Directionality(
        textDirection: TextDirection.ltr,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.min,
          children: [
            _buildSingleNavBarBottom(
              context,
              defaultIcon: IconlyBold.home,
              page: 0,
              label: "Home",
              filledIcon: IconlyBold.home,
            ),
            _buildSingleNavBarBottom(
              context,
              defaultIcon: Icons.leaderboard,
              page: 1,
              label: "Stats",
              filledIcon: Icons.leaderboard,
            ),
            _buildSingleNavBarBottom(
              context,
              defaultIcon: Icons.settings_brightness_outlined,
              page: 2,
              label: "Services",
              filledIcon: Icons.settings_brightness_outlined,
            ),
            _buildSingleNavBarBottom(
              context,
              defaultIcon: IconlyBold.profile,
              page: 3,
              label: "Profile",
              filledIcon: IconlyBold.profile,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSingleNavBarBottom(
    BuildContext context, {
    required defaultIcon,
    required page,
    required label,
    required filledIcon,
  }) {
    return GestureDetector(
      onTap: () {
        BlocProvider.of<BottomNavBarCubit>(context).changeSelectedIndex(page);
        pageController.animateToPage(page,
            duration: const Duration(milliseconds: 10),
            curve: Curves.fastLinearToSlowEaseIn);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            context.watch<BottomNavBarCubit>().state == page
                ? filledIcon
                : defaultIcon,
            color: context.watch<BottomNavBarCubit>().state == page
                ? const Color(0xff022964)
                : const Color(0x4C022964),
            size: MediaQuery.of(context).size.width * 0.055,
          ),
          const SizedBox(height: 2),
          Text(
            label,
            style: TextStyle(
              color: context.watch<BottomNavBarCubit>().state == page
                  ? const Color(0xff022964)
                  : const Color(0x4C022964),
              fontSize: MediaQuery.of(context).size.width * 0.04,
              fontWeight: context.watch<BottomNavBarCubit>().state == page
                  ? FontWeight.w600
                  : FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
