import 'package:campuspay/admin/features/admin_profile/ui/screens/Admin_profile_screen.dart';
import 'package:campuspay/admin/features/home/ui/screens/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../accounts/ui/screens/accounts_screen.dart';
import '../../../../admin_service/ui/screens/admin_services_list_view.dart';
import 'Layout_states.dart';

class LayoutCubit extends Cubit<LayoutStates> {
  LayoutCubit() : super(LayoutInitialStates());
  LayoutCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;

  void changeCurrentIndex(index) {
    currentIndex = index;
    emit(LayoutChangeCurrentIndexStates());
  }

  List<Widget> screens = [
    const AdminHomeScreen(),
    const AccountsScreen(),
    const AdminServicesScreen(),
    const AdminProfileScreen(),
  ];
}
