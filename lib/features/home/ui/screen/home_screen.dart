import 'package:campuspay/core/helpers/spacing.dart';
import 'package:campuspay/features/home/logic/cubit/home_cubit.dart';
import 'package:campuspay/features/home/logic/cubit/home_state.dart';
import 'package:campuspay/features/home/presentation/manage/cubit/states.dart';
import 'package:campuspay/features/home/ui/widgets/build_credit_card_widget.dart';
import 'package:campuspay/features/home/ui/widgets/my_cache_account.dart';
import 'package:campuspay/features/home/ui/widgets/recent_transactions_list.dart';
import 'package:campuspay/features/home/ui/widgets/services_in_home_screen.dart';
import 'package:campuspay/features/home/ui/widgets/welcome_user_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../presentation/manage/cubit/cubit.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context)=>HomeCubit()..getBalance()..getTotalOfMoneyPayed()..getTotalOfMoneyDeposited(),
      child: BlocConsumer<HomeCubit,HomeStates>(
        listener: (BuildContext context, state) {  },
        builder: (BuildContext context, Object? state) {
          return BlocProvider(
            create: (context) => HoCubit(),
            child: BlocBuilder<HoCubit, HomeState>(
              builder: (context, state) {
                return Scaffold(
                  backgroundColor: Colors.white,
                  body: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: ListView(
                      physics: const BouncingScrollPhysics(),
                      children: [
                        const WelcomeUserListTile(),
                        ServicesInHomeScreen(),
                        verticalSpace(10),
                        if (state is! MyCache) const BuildCreditCardWidget(),
                        if (state is MyCache)  MyCacheAccount(),
                        const RecentTransactionsList(),
                      ],
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
