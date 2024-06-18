import 'package:campuspay/features/depoist/models/depoist_model.dart';

abstract class DepoistStates {}

class DepoistitialStates extends DepoistStates {}

class  DepoistChangeObscureTextStates extends DepoistStates {}

class  DepoistSuccessStates extends DepoistStates {
  final DepoistModel loginModel;

   DepoistSuccessStates(this.loginModel);
}

class  DepoistLoadingStates extends DepoistStates {}

class  DepoistErrorStates extends DepoistStates {
  final String error;

  DepoistErrorStates(this.error);
}
