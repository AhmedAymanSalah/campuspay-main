import 'package:campuspay/core/utils/api_service.dart';
import 'package:campuspay/features/forgetpassword/date/model/forget_password_model.dart';
import 'package:campuspay/features/login/data/model/login_model.dart';
import 'package:campuspay/features/login/presentation/manage/cubit/login_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginStates>
{
  LoginCubit(): super(LoginInitialStates());
  LoginCubit get(context)=>BlocProvider.of(context);

  bool obscureText=true;

  void changeObscureText(){
    obscureText=!obscureText;
    emit(LoginChangeObscureTextStates());
  }

 late LoginModel loginModel;
  void userLogin({
    required String email,
    required String password,
}){
    emit(LoginLoadingStates());
    ApiService.postData(
      url: 'Authentcation/LogIn',
      data: {
        'email':email,
        'password':password,
      },
    ).then((value){
      loginModel=LoginModel.fromJson(value.data);
      print(loginModel.massage);
      print(loginModel.token);
      emit(LoginSuccessStates(loginModel));
    }).catchError((error){
      print(error.toString());
      emit(LoginErrorStates(error.toString()));
    });
  }

}