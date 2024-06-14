abstract class ProfileStates{}

class InitialProfileStates extends ProfileStates{}
class GetProfileLoadingStates extends ProfileStates{}
class GetProfileSuccessStates extends ProfileStates{}
class GetProfileErrorStates extends ProfileStates{
  final String error;

  GetProfileErrorStates(this.error);
}

class UpdateProfileLoadingStates extends ProfileStates{}
class UpdateProfileSuccessStates extends ProfileStates{}
class UpdateProfileErrorStates extends ProfileStates{
  final String error;

  UpdateProfileErrorStates(this.error);
}

class AddFeedbackLoadingStates extends ProfileStates{}
class AddFeedbackSuccessStates extends ProfileStates{}
class AddFeedbackErrorStates extends ProfileStates{
  final String error;

  AddFeedbackErrorStates(this.error);
}