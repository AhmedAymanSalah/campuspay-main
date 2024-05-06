import 'package:flutter_bloc/flutter_bloc.dart';

class ModeratorBottomNavBarCubit extends Cubit<int> {
  ModeratorBottomNavBarCubit() : super(0);

  changeSelectedIndex(newIndex) => emit(newIndex);
}
