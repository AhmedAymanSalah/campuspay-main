import 'package:campuspay/features/forgetpassword/date/model/forget_password_model.dart';
import 'package:campuspay/features/forgetpassword/date/model/reset_password_model.dart';

import '../../../../sign_up/data/model/verification_model.dart';


abstract class ForgetPasswordStates{}

class ForgetPasswordInitialStates extends ForgetPasswordStates{}

class ChangeObscureTextStates extends ForgetPasswordStates{}
class ChangeObscureText1States extends ForgetPasswordStates{}


class ForgetPasswordSuccessStates extends ForgetPasswordStates{
  final ForgetPasswordModel forgetPasswordModel;

  ForgetPasswordSuccessStates(this.forgetPasswordModel);
}

class ForgetPasswordLoadingStates extends ForgetPasswordStates{}

class ForgetPasswordErrorStates extends ForgetPasswordStates{
  final String error;

  ForgetPasswordErrorStates(this.error);
}

class VerificationForgetPasswordSuccessStates extends ForgetPasswordStates{
  final VerificationModel verificationModel;

  VerificationForgetPasswordSuccessStates({required this.verificationModel});
}

class VerificationForgetPasswordLoadingStates extends ForgetPasswordStates{}

class VerificationForgetPasswordErrorStates extends ForgetPasswordStates{
  final String error;

  VerificationForgetPasswordErrorStates(this.error);
}


class ResetPasswordSuccessStates extends ForgetPasswordStates{
  final ResetPasswordModel resetPasswordModel;

  ResetPasswordSuccessStates({required this.resetPasswordModel});
}

class ResetPasswordLoadingStates extends ForgetPasswordStates{}

class ResetPasswordErrorStates extends ForgetPasswordStates{
  final String error;

  ResetPasswordErrorStates(this.error);
}