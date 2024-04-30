import 'package:campuspay/features/home/logic/cubit/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(const HomeState.initial());

  static HomeCubit get(context) => BlocProvider.of(context);

  bool isCached = false;
  void emitMyCacheState() {
    isCached = !isCached;
    if (isCached == true) {
      emit(const HomeState.myCache());
    } else {
      emit(const HomeState.credit());
    }
  }
}
