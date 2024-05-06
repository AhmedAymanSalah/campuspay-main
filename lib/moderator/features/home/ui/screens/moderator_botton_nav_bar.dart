// ignore_for_file: non_constant_identifier_names

import 'package:campuspay/features/profile/ui/screens/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconly/iconly.dart';

import '../../../chat/chat.dart';
import '../../../request_data/ui/screens/request_data.dart';
import '../../logic/moderator_nav_bar_cubit/moderator_nav_bar_cubit.dart';
import 'moderator_home_Screen.dart';

class ModeratorBottomNavBar extends StatefulWidget {
  const ModeratorBottomNavBar({super.key});

  @override
  State<ModeratorBottomNavBar> createState() => _ModeratorBottomNavBarState();
}

class _ModeratorBottomNavBarState extends State<ModeratorBottomNavBar> {
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
    ModeratorHomeScreen(),
    RequestDataScreen(),
    Chat(),
    ProfileScreen(),
  ];

  void onPageChanged(int page) {
    BlocProvider.of<ModeratorBottomNavBarCubit>(context)
        .changeSelectedIndex(page);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
      bottomNavigationBar: _ModeratorbottomNavBar(context),
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

  BottomAppBar _ModeratorbottomNavBar(BuildContext context) {
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
              label: "Request",
              filledIcon: Icons.leaderboard,
            ),
            _buildSingleNavBarBottom(
              context,
              defaultIcon: Icons.chat_outlined,
              page: 2,
              label: "Caht",
              filledIcon: Icons.chat_outlined,
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
        BlocProvider.of<ModeratorBottomNavBarCubit>(context)
            .changeSelectedIndex(page);
        pageController.animateToPage(page,
            duration: const Duration(milliseconds: 10),
            curve: Curves.fastLinearToSlowEaseIn);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            context.watch<ModeratorBottomNavBarCubit>().state == page
                ? filledIcon
                : defaultIcon,
            color: context.watch<ModeratorBottomNavBarCubit>().state == page
                ? const Color(0xff022964)
                : const Color(0x4C022964),
            size: MediaQuery.of(context).size.width * 0.055,
          ),
          const SizedBox(height: 2),
          Text(
            label,
            style: TextStyle(
              color: context.watch<ModeratorBottomNavBarCubit>().state == page
                  ? const Color(0xff022964)
                  : const Color(0x4C022964),
              fontSize: MediaQuery.of(context).size.width * 0.04,
              fontWeight:
                  context.watch<ModeratorBottomNavBarCubit>().state == page
                      ? FontWeight.w600
                      : FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
