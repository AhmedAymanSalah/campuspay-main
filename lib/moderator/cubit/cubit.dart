import 'package:campuspay/core/utils/api_service.dart';
import 'package:campuspay/moderator/cubit/states.dart';
import 'package:campuspay/moderator/features/request_data/ui/data/get_all_request.dart';
import 'package:campuspay/moderator/features/request_data/ui/data/get_details_request.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/utils/constant.dart';


class ModeratorCubit extends Cubit<ModeratorStates>
{
  ModeratorCubit():super (InitialModeratorStates());
 static ModeratorCubit get(context)=>BlocProvider.of(context);


  late List<GetAllRequestModel> getAllRequestModel; // Change GetServiceModel to List<Item>

  void getAllRequest() {
    emit(GetAllRequestLoadingStates());
    ApiService.getData(
      url: 'SocialRequests/GetAll',
      token: token
    ).then((value) {
      List<dynamic> data = value.data;
      getAllRequestModel = data.map((itemJson) => GetAllRequestModel.fromJson(itemJson)).toList();
      emit(GetAllRequestSuccessStates());
    }).catchError((error) {
      print(error.toString());
      emit(GetAllRequestErrorStates(error.toString()));
    });
  }


   GetDetailsRequestModel? getDetailsRequestModel;
  void getDetails({
    required int serviceId,
}) {
    emit(GetDetailsRequestLoadingStates());
    ApiService.getData(
      url: 'SocialRequests/GetDetails_Moderator',
      token: token,
      query: {
        'socialRequestId':serviceId,
      },
    ).then((value) {
      getDetailsRequestModel=GetDetailsRequestModel.fromJson(value.data);
      emit(GetDetailsRequestSuccessStates());
    }).catchError((error) {
      print(error.toString());
      emit(GetDetailsRequestErrorStates(error.toString()));
    });
  }

  void acceptOrRejectRequest({
    required int id,
    required bool status,
  }) {
    emit(AcceptOrRejectRequestLoadingStates());
    ApiService.putData(
      url: 'SocialRequests/Accept',
      token: token,
      query: {
        'id':id,
        'status':status,
      },
    ).then((value) {
      emit(AcceptOrRejectRequestSuccessStates());
    }).catchError((error) {
      print(error.toString());
      emit(AcceptOrRejectRequestErrorStates(error.toString()));
    });
  }

}