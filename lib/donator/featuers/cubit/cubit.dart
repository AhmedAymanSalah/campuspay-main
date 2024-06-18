import 'package:campuspay/core/utils/api_service.dart';
import 'package:campuspay/donator/featuers/cubit/states.dart';
import 'package:campuspay/donator/featuers/social_research_requests/data/pay_model.dart';
import 'package:campuspay/moderator/features/request_data/ui/data/get_all_request.dart';
import 'package:campuspay/moderator/features/request_data/ui/data/get_details_request.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/utils/constant.dart';



class DonorCubit extends Cubit<DonorStates>
{
  DonorCubit():super (InitialDonorStates());
 static DonorCubit get(context)=>BlocProvider.of(context);


  late List<GetAllRequestModel> getAllRequestModel; // Change GetServiceModel to List<Item>

  void getAllRequest() {
    emit(GetAllRequestDonorLoadingStates());
    ApiService.getData(
      url: 'SocialRequests/GetAll',
      token: token
    ).then((value) {
      List<dynamic> data = value.data;
      getAllRequestModel = data.map((itemJson) => GetAllRequestModel.fromJson(itemJson)).toList();
      emit(GetAllRequestDonorSuccessStates());
    }).catchError((error) {
      print(error.toString());
      emit(GetAllRequestDonorErrorStates(error.toString()));
    });
  }


   GetDetailsRequestModel? getDetailsRequestModel;
  void getDetails({
    required int serviceId,
}) {
    emit(GetDetailsRequestDonorLoadingStates());
    ApiService.getData(
      url: 'SocialRequests/GetDetails_Donor',
      token: token,
      query: {
        'socialRequestId':serviceId,
      },
    ).then((value) {
      getDetailsRequestModel=GetDetailsRequestModel.fromJson(value.data);
      emit(GetDetailsRequestDonorSuccessStates());
    }).catchError((error) {
      print(error.toString());
      emit(GetDetailsRequestDonorErrorStates(error.toString()));
    });
  }


  late PayModel payModel;
  Future<void> payRequest({
    required int id,
  }) async {
    emit(PayRequestLoadingStates());
   await ApiService.putData(
      url: 'SocialRequests/Donate',
      token: token,
      query: {
        'socialRequestId':id,
      },
    ).then((value) {
      payModel=PayModel.fromJson(value.data);
      emit(PayRequestSuccessStates());
    }).catchError((error) {
      print(error.toString());
      emit(PayRequestErrorStates(error.toString()));
    });
  }

}