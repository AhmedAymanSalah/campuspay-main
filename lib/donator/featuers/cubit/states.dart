
abstract class DonorStates{}

class InitialDonorStates extends DonorStates{}


class GetAllRequestDonorLoadingStates extends DonorStates{}
class GetAllRequestDonorSuccessStates extends DonorStates{}
class GetAllRequestDonorErrorStates extends DonorStates{
  final String error;

  GetAllRequestDonorErrorStates(this.error);
}

class GetDetailsRequestDonorLoadingStates extends DonorStates{}
class GetDetailsRequestDonorSuccessStates extends DonorStates{}
class GetDetailsRequestDonorErrorStates extends DonorStates{
  final String error;

  GetDetailsRequestDonorErrorStates(this.error);
}

class PayRequestLoadingStates extends DonorStates{}
class PayRequestSuccessStates extends DonorStates{}
class PayRequestErrorStates extends DonorStates{
  final String error;

  PayRequestErrorStates(this.error);
}