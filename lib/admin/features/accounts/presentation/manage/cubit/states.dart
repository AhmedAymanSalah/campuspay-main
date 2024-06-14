abstract class AccountStates{}

class InitialAccountStates extends AccountStates{}
class GetAllAccountsLoadingStates extends AccountStates{}
class GetAllAccountsSuccessStates extends AccountStates{}
class GetAllAccountsErrorStates extends AccountStates{
  final String error;

  GetAllAccountsErrorStates(this.error);
}

class GetDetailsAccountsLoadingStates extends AccountStates{}
class GetDetailsAccountsSuccessStates extends AccountStates{}
class GetDetailsAccountsErrorStates extends AccountStates{
  final String error;

  GetDetailsAccountsErrorStates(this.error);
}

class StopAccountsLoadingStates extends AccountStates{}
class StopAccountsSuccessStates extends AccountStates{}
class StopAccountsErrorStates extends AccountStates{
  final String error;

  StopAccountsErrorStates(this.error);
}