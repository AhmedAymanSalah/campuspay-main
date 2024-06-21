import 'package:campuspay/chat/ui/screens/chatPage.dart';
import 'package:campuspay/moderator/features/mod_profile/ui/screens/mod_profile_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:campuspay/moderator/features/home/ui/screens/moderator_home_Screen.dart';
import 'package:campuspay/moderator/features/request_data/ui/screens/request_data.dart';
import 'Layout_states.dart';

class ModeratorLayoutCubit extends Cubit<ModeratorLayoutStates> {
  ModeratorLayoutCubit() : super(ModeratorLayoutInitialStates());
  ModeratorLayoutCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;

  void changeCurrentIndex(index) {
    currentIndex = index;
    emit(ModeratorLayoutChangeCurrentIndexStates());
  }

  List<Widget> screens = [
    const ModeratorHomeScreen(),
    const RequestDataScreen(),
    ChatPage(),
    const ModProfileScreen(),
  ];
}
