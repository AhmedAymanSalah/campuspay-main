import 'package:campuspay/features/sign_up/data/model/signup_model.dart';
import 'package:campuspay/features/sign_up/data/model/verification_model.dart';

abstract class SignUpStates{}

class SignUpInitialStates extends SignUpStates{}

class SignUpChangeObscureTextStates extends SignUpStates{}
class SignUpChangeObscureText1States extends SignUpStates{}

class SignUpSuccessStates extends SignUpStates{
  final SignUpModel signUpModel;

  SignUpSuccessStates({required this.signUpModel});
}

class SignUpLoadingStates extends SignUpStates{}

class SignUpErrorStates extends SignUpStates{
  final String error;

  SignUpErrorStates(this.error);
}

class VerificationSuccessStates extends SignUpStates{
  final VerificationModel verificationModel;

  VerificationSuccessStates({required this.verificationModel});
}

class VerificationLoadingStates extends SignUpStates{}

class VerificationErrorStates extends SignUpStates{
  final String error;

  VerificationErrorStates(this.error);
}