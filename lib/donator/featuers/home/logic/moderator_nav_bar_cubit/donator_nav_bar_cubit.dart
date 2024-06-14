import 'package:flutter_bloc/flutter_bloc.dart';

class DonatorBottonNavBarCubit extends Cubit<int> {
  DonatorBottonNavBarCubit() : super(0);

  changeSelectedIndex(newIndex) => emit(newIndex);
}
