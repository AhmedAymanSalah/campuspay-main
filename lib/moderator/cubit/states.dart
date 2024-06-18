
abstract class ModeratorStates{}

class InitialModeratorStates extends ModeratorStates{}


class GetAllRequestLoadingStates extends ModeratorStates{}
class GetAllRequestSuccessStates extends ModeratorStates{}
class GetAllRequestErrorStates extends ModeratorStates{
  final String error;

  GetAllRequestErrorStates(this.error);
}

class GetDetailsRequestLoadingStates extends ModeratorStates{}
class GetDetailsRequestSuccessStates extends ModeratorStates{}
class GetDetailsRequestErrorStates extends ModeratorStates{
  final String error;

  GetDetailsRequestErrorStates(this.error);
}

class AcceptOrRejectRequestLoadingStates extends ModeratorStates{}
class AcceptOrRejectRequestSuccessStates extends ModeratorStates{}
class AcceptOrRejectRequestErrorStates extends ModeratorStates{
  final String error;

  AcceptOrRejectRequestErrorStates(this.error);
}