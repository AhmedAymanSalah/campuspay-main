abstract class ServiceStates{}

class InitialServiceStates extends ServiceStates{}
class CreateServiceLoadingStates extends ServiceStates{}
class CreateServiceSuccessStates extends ServiceStates{}
class CreateServiceErrorStates extends ServiceStates{
  final String error;

  CreateServiceErrorStates(this.error);
}

class GetServiceLoadingStates extends ServiceStates{}
class GetServiceSuccessStates extends ServiceStates{}
class GetServiceErrorStates extends ServiceStates{
  final String error;

  GetServiceErrorStates(this.error);
}