import 'package:campuspay/core/errors/failure.dart';
import 'package:campuspay/core/utils/api_service.dart';
import 'package:campuspay/features/forgetpassword/date/model/forget_password_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../sign_up/data/model/verification_model.dart';
import '../../../date/model/reset_password_model.dart';
import 'forget_password_states.dart';

class ForgetPasswordCubit extends Cubit<ForgetPasswordStates>
{
  ForgetPasswordCubit(): super((ForgetPasswordInitialStates()));
  ForgetPasswordCubit get(context)=>BlocProvider.of(context);


  bool obscureText=true;

  void changeObscureText(){
    obscureText=!obscureText;
    emit(ChangeObscureTextStates());
  }

  bool obscureText1=true;

  void changeObscureText1(){
    obscureText1=!obscureText1;
    emit(ChangeObscureText1States());
  }

  late ForgetPasswordModel forgetPasswordModel;
  void forgetPassword({
    required String email,
  }){
    emit(ForgetPasswordLoadingStates());
    ApiService.postData(
      url: 'Authentcation/ForgetPassword',
      query: {
        'email':email,
      },
    ).then((value){
      forgetPasswordModel=ForgetPasswordModel.fromJson(value.data);
      print(forgetPasswordModel.massage);
      emit(ForgetPasswordSuccessStates(forgetPasswordModel));
    }).catchError((error){
      print(error.toString());
      emit(ForgetPasswordErrorStates(error.toString()));
    });
  }

  late VerificationModel verificationModel;
  void verificationCode({
    required String verificationCode,
    required String userId,
  }){
    emit(VerificationForgetPasswordLoadingStates());
    ApiService.getData(
      url: 'Authentcation/SendVerificationCode',
      query: {
        'verificationCode':verificationCode,
        'userId':userId,
      },
    ).then((value){
      verificationModel=VerificationModel.fromJson(value.data);
      emit(VerificationForgetPasswordSuccessStates(verificationModel: verificationModel));
    }).catchError((error){
      print(error.toString());
      emit(VerificationForgetPasswordErrorStates(error.toString()));
    });
  }

  late ResetPasswordModel resetPasswordModel;
  void resetPassword({
    required String userId,
    required String newPassword,
  }){
    emit(ResetPasswordLoadingStates());
    ApiService.postData(
      url: 'Authentcation/ResetPassword',
      query: {
        'userId':userId,
        'newPassword':newPassword,
      },
    ).then((value){
      resetPasswordModel=ResetPasswordModel.fromJson(value.data);
      print(resetPasswordModel.error);
      emit(ResetPasswordSuccessStates(resetPasswordModel: resetPasswordModel));
    }).catchError((error){
      print(error.toString());
      emit(ResetPasswordErrorStates(error.toString()));
    });
  }
}