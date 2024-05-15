import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../manage/cubit/Layout_cubit.dart';
import '../../manage/cubit/Layout_states.dart';
import 'bottom_nav_bar.dart';

class AdminLayoutViewBody extends StatelessWidget {
  const AdminLayoutViewBody({super.key});


  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LayoutCubit,LayoutStates>(
      listener: (BuildContext context, state) {  },
      builder: (BuildContext context, Object? state) {
        var cubit=LayoutCubit().get(context);
        return Scaffold(
          body: cubit.screens[cubit.currentIndex],
          bottomNavigationBar: BottomNavBar(),
        );
      },
    );
  }
}
