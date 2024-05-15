import 'package:campuspay/features/login/presentation/manage/cubit/login_cubit.dart';
import 'package:campuspay/features/login/presentation/manage/cubit/login_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../admin/features/layout/presentation/view/layout_view.dart';
import '../../features/home/ui/screen/home_screen.dart';
import '../../features/layout/presentation/view/layout_view.dart';
import '../../moderator/features/layout/presentation/view/layout_view.dart';
import 'constant.dart';

class PersonScreenView extends StatelessWidget {
  const PersonScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit,LoginStates>(
      listener: (BuildContext context, state) {  },
      builder: (BuildContext context, Object? state) {
        var cubit=LoginCubit().get(context).loginModel.type;
        if(cubit =='Student') {
          return   navigateAndFinish(context, const StudentLayoutView());
        }else if(cubit =='Admin'){
          return  navigateAndFinish(context, const AdminLayoutView());
        }else if(cubit =='Moderator'){
          return navigateAndFinish(context, const ModeratorLayoutView());
        }else {
         return navigateAndFinish(context, const HomeScreen());
        }
      },
    );
  }
}
