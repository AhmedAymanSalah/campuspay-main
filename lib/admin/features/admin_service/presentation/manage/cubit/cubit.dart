import 'package:campuspay/admin/features/admin_service/data/models/service/get_service_model.dart';
import 'package:campuspay/admin/features/admin_service/presentation/manage/cubit/states.dart';
import 'package:campuspay/core/utils/api_service.dart';
import 'package:campuspay/core/utils/components.dart';
import 'package:campuspay/core/utils/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ServiceCubit extends Cubit<ServiceStates>
{
  ServiceCubit():super (InitialServiceStates());
  ServiceCubit get(context)=>BlocProvider.of(context);


  void createService({
    required String name,
     String? desc,
    required String type,
    required dynamic squadYear,
    required String collegeName,
    required dynamic cost,
    required context
}){
    emit(CreateServiceLoadingStates());
    buildShowLoading(context);
    ApiService.postData(
      url: 'Services/Add',
      query: {
        'Name':name,
        'Description':desc,
        'Type':type,
        'SquadYear':squadYear,
        'CollegeName':collegeName,
        'Cost':cost,
      },
      token: token,
    )
   .then((value){
      emit(CreateServiceSuccessStates());
    }).catchError((error){
      print(error.toString());
      emit(CreateServiceErrorStates(error.toString()));
      Navigator.pop(context);
    });
  }


  late List<GetServiceModel> getServiceModel; // Change GetServiceModel to List<Item>

  void getService() {
    emit(GetServiceLoadingStates());
    ApiService.getData(
      url: 'Services/GetAll',
      token: token, // Pass the authorization token here
    ).then((value) {
      List<dynamic> data = value.data;
      getServiceModel = data.map((itemJson) => GetServiceModel.fromJson(itemJson)).toList();
      emit(GetServiceSuccessStates());
    }).catchError((error) {
      print(error.toString());
      emit(GetServiceErrorStates(error.toString()));
    });
  }


}