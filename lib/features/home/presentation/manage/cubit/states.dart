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

class GetBalanceLoadingStates extends HomeStates{}
class GetBalanceSuccessStates extends HomeStates{}
class GetBalanceErrorStates extends HomeStates{
  final String error;

  GetBalanceErrorStates(this.error);
}

// class GetTotalOfMoneyPayedLoadingStates extends HomeStates{}
// class GetTotalOfMoneyPayedSuccessStates extends HomeStates{}
// class GetTotalOfMoneyPayedErrorStates extends HomeStates{
//   final String error;
//
//   GetTotalOfMoneyPayedErrorStates(this.error);
// }
//
// class GetTotalOfMoneyDepositedLoadingStates extends HomeStates{}
// class GetTotalOfMoneyDepositedSuccessStates extends HomeStates{}
// class GetTotalOfMoneyDepositedErrorStates extends HomeStates{
//   final String error;
//
//   GetTotalOfMoneyDepositedErrorStates(this.error);
// }