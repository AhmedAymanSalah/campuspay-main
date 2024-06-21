// ignore_for_file: file_names

import 'package:campuspay/donator/featuers/don_profile/ui/screens/don_profile_screen.dart';
import 'package:campuspay/donator/featuers/visa/screens/donar_deposit_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../home/ui/screens/donator_home_screen.dart';
import '../../../../social_research_requests/ui/screens/social_research_screen.dart';
import 'donator_layout_states.dart';

class DonatorLayoutCubit extends Cubit<DonatorLayoutStates> {
  DonatorLayoutCubit() : super(DonatorLayoutInitialStates());
  DonatorLayoutCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;

  void changeCurrentIndex(index) {
    currentIndex = index;
    emit(DonatorLayoutChangeCurrentIndexStates());
  }

  List<Widget> screens = [
    const DonatorHomeScreen(),
    const SocialResearchScreen(),
    const DonarDepositScreen(),
    const DonProfileScreen(),
  ];
}
