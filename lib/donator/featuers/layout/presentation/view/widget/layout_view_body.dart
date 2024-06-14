import 'package:campuspay/donator/featuers/layout/presentation/manage/cubit/donator_layout_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../manage/cubit/donator_layout_cubit.dart';
import 'bottom_nav_bar.dart';

class DonatorLayoutViewBody extends StatelessWidget {
  const DonatorLayoutViewBody({super.key});


  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DonatorLayoutCubit,DonatorLayoutStates>(
      listener: (BuildContext context, state) {  },
      builder: (BuildContext context, Object? state) {
        var cubit=DonatorLayoutCubit().get(context);
        return Scaffold(
          body: cubit.screens[cubit.currentIndex],
          bottomNavigationBar: BottomNavBar(),
        );
      },
    );
  }
}
