import 'package:campuspay/core/utils/api_service.dart';
import 'package:campuspay/moderator/cubit/states.dart';
import 'package:campuspay/moderator/features/request_data/ui/data/get_all_request.dart';
import 'package:campuspay/moderator/features/request_data/ui/data/get_details_request.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class ModeratorCubit extends Cubit<ModeratorStates>
{
  ModeratorCubit():super (InitialModeratorStates());
 static ModeratorCubit get(context)=>BlocProvider.of(context);


  late List<GetAllRequestModel> getAllRequestModel; // Change GetServiceModel to List<Item>

  void getAllRequest() {
    emit(GetAllRequestLoadingStates());
    ApiService.getData(
      url: 'SocialRequests/GetAll',
     // token: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9lbWFpbGFkZHJlc3MiOiJ5b3VzZWZhbGlzYWJlcjAxQGdtYWlsLmNvbSIsImh0dHA6Ly9zY2hlbWFzLnhtbHNvYXAub3JnL3dzLzIwMDUvMDUvaWRlbnRpdHkvY2xhaW1zL25hbWVpZGVudGlmaWVyIjoiODZkMzllNGEtOWVkYS00YzBhLTgzMDMtYWYzMWMzNWY5ZmQyIiwiaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvd3MvMjAwNS8wNS9pZGVudGl0eS9jbGFpbXMvbmFtZSI6InlvdXNlZjFtb2RlcmF0b3IiLCJodHRwOi8vc2NoZW1hcy5taWNyb3NvZnQuY29tL3dzLzIwMDgvMDYvaWRlbnRpdHkvY2xhaW1zL3JvbGUiOiJNb2RlcmF0b3IiLCJleHAiOjE3MTk0NDU0MzMsImlzcyI6IkdyYWR1dGlvblByb2plY3QiLCJhdWQiOiJHcmFkdXRpb25Qcm9qZWN0In0.5VYuegxvkRYpI4n1djsYEUiqZjpTB4hQfTWdFvK_7hs', // Pass the authorization token here
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
     // token: token,
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
      //token: token,
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
  //
  //
  // void updateService({
  //   required int serviceId,
  //   required String name,
  //   String? desc,
  //   required String type,
  //   required int squadYear,
  //   required String collegeName,
  //   required double cost,
  //   required context
  // }){
  //   emit(UpdateServiceLoadingStates());
  //  // buildShowLoading(context);
  //   ApiService.putData(
  //     url: 'Services/Edit',
  //     query: {
  //       'serviceId':serviceId,
  //       'Name':name,
  //       'Description':desc,
  //       'Type':type,
  //       'SquadYear':squadYear,
  //       'CollegeName':collegeName,
  //       'Cost':cost,
  //     },
  //     token: token,
  //   )
  //       .then((value){
  //     emit(UpdateServiceSuccessStates());
  //   }).catchError((error){
  //     print(error.toString());
  //     emit(UpdateServiceErrorStates(error.toString()));
  //   //  Navigator.pop(context);
  //   });
  // }
  //
  //
  // PayModel? payModel;
  // void pay({
  //   required int serviceId,
  // }){
  //   emit(PayLoadingStates());
  //   ApiService.postData(
  //     url: 'Services/Pay',
  //     query: {
  //       'serviceId':serviceId,
  //     },
  //     token: token,
  //   )
  //       .then((value){
  //         payModel=PayModel.fromJson(value.data);
  //     emit(PaySuccessStates(payModel: payModel!));
  //   }).catchError((error){
  //     print(error.toString());
  //     emit(PayErrorStates(error.toString()));
  //   });
  // }

}