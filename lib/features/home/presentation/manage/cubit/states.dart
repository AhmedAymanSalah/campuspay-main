abstract class HomeStates{}

class InitialHomeStates extends HomeStates{}

class GetHistoryTransactionLoadingStates extends HomeStates{}
class GetHistoryTransactionSuccessStates extends HomeStates{}
class GetHistoryTransactionErrorStates extends HomeStates{
  final String error;

  GetHistoryTransactionErrorStates(this.error);
}

class TransferToLoadingStates extends HomeStates{}
class TransferToSuccessStates extends HomeStates{}
class TransferToErrorStates extends HomeStates{
  final String error;

  TransferToErrorStates(this.error);
}

class SocialRequestLoadingStates extends HomeStates{}
class SocialRequestSuccessStates extends HomeStates{}
class SocialRequestErrorStates extends HomeStates{
  final String error;

  SocialRequestErrorStates(this.error);
}