import 'package:campuspay/core/utils/api_service.dart';
import 'package:campuspay/features/sign_up/data/model/signup_model.dart';
import 'package:campuspay/features/sign_up/data/model/verification_model.dart';
import 'package:campuspay/features/sign_up/presentation/manage/cubit/signup_states.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/components.dart';

class SignUpCubit extends Cubit<SignUpStates>
{
  SignUpCubit(): super(SignUpInitialStates());
  SignUpCubit get(context)=>BlocProvider.of(context);

  bool obscureText=true;
  bool obscureText1=true;

  void changeObscureText(){
    obscureText=!obscureText;
    emit(SignUpChangeObscureTextStates());
  }
  void changeObscureText1(){
    obscureText1=!obscureText1;
    emit(SignUpChangeObscureText1States());
  }

  String? type;
  void changeRadioList(value)
  {
    type=value;
    emit(SignUpRadioListTitleStates());
  }

 late SignUpModel signUpModel;
  void createStudentUser({
    required String email,
    required String name,
    required String ssn,
    required String password,
    required String confirmPassword,
    required context,
}){
    emit(SignUpLoadingStates());
    buildShowLoading(context);
    ApiService.postData(
      url: 'Authentcation/StudentSignUp',
      query: {
        'Email':email,
        'FullName':name,
        'SSN':ssn,
        'Password':password,
        'ConfirmPassword':confirmPassword,
      },
    ).then((value){
      signUpModel=SignUpModel.fromJson(value.data);
      print(signUpModel.massage);
      emit(SignUpSuccessStates(signUpModel: signUpModel));
    }).catchError((error){
      emit(SignUpErrorStates(error.toString()));
      Navigator.pop(context);
    });
  }


  late SignUpModel signUpDonorModel;
  void createDonorUser({
    required String email,
    required String name,
    required String ssn,
    required String password,
    required String confirmPassword,
    required context,
}){
    emit(SignUpDonorLoadingStates());
    buildShowLoading(context);
    ApiService.postData(
      url: 'Authentcation/DonorSignUp',
      query: {
        'Email':email,
        'FullName':name,
        'SSN':ssn,
        'Password':password,
        'ConfirmPassword':confirmPassword,
      },
    ).then((value){
      signUpDonorModel=SignUpModel.fromJson(value.data);
      print(signUpDonorModel.massage);
      emit(SignUpDonorSuccessStates(signUpModel: signUpDonorModel));
    }).catchError((error){
      emit(SignUpDonorErrorStates(error.toString()));
      Navigator.pop(context);
    });
  }


  late VerificationModel verificationModel;
  void verificationCode({
    required String verificationCode,
    required String userId,
  }){
    emit(VerificationLoadingStates());
    ApiService.getData(
      url: 'Authentcation/SendVerificationCode',
      query: {
        'verificationCode':verificationCode,
        'userId':userId,
      },
    ).then((value){
      verificationModel=VerificationModel.fromJson(value.data);
      print(signUpModel.massage);
      emit(VerificationSuccessStates(verificationModel: verificationModel));
    }).catchError((error){
      print(error.toString());
      emit(VerificationErrorStates(error.toString()));
    });
  }

}