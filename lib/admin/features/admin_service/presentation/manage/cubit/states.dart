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

class GetDetailsLoadingStates extends ServiceStates{}
class GetDetailsSuccessStates extends ServiceStates{}
class GetDetailsErrorStates extends ServiceStates{
  final String error;

  GetDetailsErrorStates(this.error);
}

class DeleteServiceLoadingStates extends ServiceStates{}
class DeleteServiceSuccessStates extends ServiceStates{}
class DeleteServiceErrorStates extends ServiceStates{
  final String error;

  DeleteServiceErrorStates(this.error);
}

class UpdateServiceLoadingStates extends ServiceStates{}
class UpdateServiceSuccessStates extends ServiceStates{}
class UpdateServiceErrorStates extends ServiceStates{
  final String error;

  UpdateServiceErrorStates(this.error);
}