import 'package:campuspay/core/errors/failure.dart';
import 'package:campuspay/core/utils/api_service.dart';
import 'package:campuspay/features/sign_up/data/model/signup_model.dart';
import 'package:campuspay/features/sign_up/data/model/verification_model.dart';
import 'package:campuspay/features/sign_up/presentation/manage/cubit/signup_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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

 late SignUpModel signUpModel;
  void createUser({
    required String email,
    required String name,
    required String ssn,
    required String password,
    required String confirmPassword
}){
    emit(SignUpLoadingStates());
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
      signUpModel=SignUpModel.fromJson(value.data);
      print(signUpModel.massage);
      emit(SignUpSuccessStates(signUpModel: signUpModel));
    }).catchError((error){
      print(ServerFailure(error.toString()));
      emit(SignUpErrorStates(error.toString()));
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