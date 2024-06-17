import 'package:campuspay/core/utils/api_service.dart';
import 'package:campuspay/features/forgetpassword/date/model/forget_password_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/components.dart';
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
    required context,
  }){
    emit(ForgetPasswordLoadingStates());
    buildShowLoading(context);
    ApiService.postData(
      url: 'Authentcation/ForgetPassword',
      data: {
        'email':email,
      },
    ).then((value){
      forgetPasswordModel=ForgetPasswordModel.fromJson(value.data);
      print(forgetPasswordModel.massage);
      emit(ForgetPasswordSuccessStates(forgetPasswordModel));
    }).catchError((error){
      print(error.toString());
      emit(ForgetPasswordErrorStates(error.toString()));
      Navigator.pop(context);
    });
  }

  late VerificationModel verificationModel;
  void verificationCode({
    required int verificationCode,
    required String userId,
    required context,
  }){
    emit(VerificationForgetPasswordLoadingStates());
    buildShowLoading(context);
    ApiService.getData(
      url: 'Authentcation/VerificationCode',
      data: {
        'verificationCode':verificationCode,
        'userId':userId
      },
    ).then((value){
      verificationModel=VerificationModel.fromJson(value.data);
      emit(VerificationForgetPasswordSuccessStates(verificationModel: verificationModel));
    }).catchError((error){
      print(error.toString());
      emit(VerificationForgetPasswordErrorStates(error.toString()));
      Navigator.pop(context);
    });
  }

  late ResetPasswordModel resetPasswordModel;
  void resetPassword({
    required String userId,
    required String newPassword,
    required context,
  }){
    emit(ResetPasswordLoadingStates());
    buildShowLoading(context);
    ApiService.postData(
      url: 'Authentcation/ResetPassword',
      data: {
        'userId':userId,
        'newPassword':newPassword,
      },
    ).then((value){
      resetPasswordModel=ResetPasswordModel.fromJson(value.data);
      print(resetPasswordModel.massage);
      emit(ResetPasswordSuccessStates(resetPasswordModel: resetPasswordModel));
    }).catchError((error){
      print(error.toString());
      emit(ResetPasswordErrorStates(error.toString()));
      Navigator.pop(context);
    });
  }
}