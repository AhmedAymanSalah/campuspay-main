import 'package:campuspay/features/sign_up/data/model/signup_model.dart';
import 'package:campuspay/features/sign_up/data/model/verification_model.dart';

abstract class SignUpStates{}

class SignUpInitialStates extends SignUpStates{}

class SignUpChangeObscureTextStates extends SignUpStates{}

class SignUpChangeObscureText1States extends SignUpStates{}

class SignUpRadioListTitleStates extends SignUpStates{}

class SignUpSuccessStates extends SignUpStates{
  final SignUpModel signUpModel;

  SignUpSuccessStates({required this.signUpModel});
}

class SignUpLoadingStates extends SignUpStates{}

class SignUpErrorStates extends SignUpStates{
  final String error;

  SignUpErrorStates(this.error);
}
class SignUpDonorSuccessStates extends SignUpStates{
  final SignUpModel signUpModel;

  SignUpDonorSuccessStates({required this.signUpModel});
}

class SignUpDonorLoadingStates extends SignUpStates{}

class SignUpDonorErrorStates extends SignUpStates{
  final String error;

  SignUpDonorErrorStates(this.error);
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