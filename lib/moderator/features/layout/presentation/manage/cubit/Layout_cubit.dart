import 'package:campuspay/admin/features/home/ui/screens/home_screen.dart';
import 'package:campuspay/features/home/ui/screen/home_screen.dart';
import 'package:campuspay/features/services/ui/screens/services_list_view.dart';
import 'package:campuspay/features/status/ui/screens/stats_screen.dart';
import 'package:campuspay/moderator/features/chat/chat.dart';
import 'package:campuspay/moderator/features/home/ui/screens/moderator_home_Screen.dart';
import 'package:campuspay/moderator/features/request_data/ui/screens/request_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../../features/profile/ui/screens/profile_screen.dart';
import 'Layout_states.dart';

class ModeratorLayoutCubit extends Cubit<ModeratorLayoutStates>
{
  ModeratorLayoutCubit():super (ModeratorLayoutInitialStates());
  ModeratorLayoutCubit get(context)=>BlocProvider.of(context);

  int currentIndex=0;

  void changeCurrentIndex(index)
  {
    currentIndex=index;
    emit(ModeratorLayoutChangeCurrentIndexStates());
  }

  List<Widget>screens= [
    const ModeratorHomeScreen(),
    const RequestDataScreen(),
    const Chat(),
    const ProfileScreen(),
  ];
}