// ignore_for_file: file_names

import 'package:flutter_bloc/flutter_bloc.dart';

class AdminNavBarCubit extends Cubit<int> {
  AdminNavBarCubit() : super(0);

  changeSelectedIndex(newIndex) => emit(newIndex);
}
