import 'package:campuspay/admin/features/home/ui/screens/home_screen.dart';
import 'package:campuspay/features/home/ui/screen/home_screen.dart';
import 'package:campuspay/features/services/ui/screens/services_list_view.dart';
import 'package:campuspay/features/status/ui/screens/stats_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../../features/profile/ui/screens/profile_screen.dart';
import 'Layout_states.dart';

class StudentLayoutCubit extends Cubit<StudentLayoutStates>
{
  StudentLayoutCubit():super (StudentLayoutInitialStates());
  StudentLayoutCubit get(context)=>BlocProvider.of(context);

  int currentIndex=0;

  void changeCurrentIndex(index)
  {
    currentIndex=index;
    emit(StudentLayoutChangeCurrentIndexStates());
  }

  List<Widget>screens= [
    const HomeScreen(),
    const StatsScreen(),
    const ServicesScreen(),
    const ProfileScreen(),
  ];
}