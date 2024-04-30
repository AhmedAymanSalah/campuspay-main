import '../networking/api_service.dart';
import '../networking/dio_factory.dart';
import '../../features/login/data/repos/login_repo.dart';
import '../../features/login/logic/cubit/login_cubit.dart';
import '../../features/sign_up/logic/sign_up_cubit.dart';
import 'package:dio/dio.dart';

import 'package:get_it/get_it.dart';

import '../../features/sign_up/data/repos/sign_up_repo.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // Dio & Api Service
  Dio dio = DioFactory.getDio();

  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  //sgin up

  getIt.registerLazySingleton<SignupRepo>(() => SignupRepo(getIt()));

  getIt.registerFactory<SignupCubit>(() => SignupCubit(getIt()));
  // Login

  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));

  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));
}
