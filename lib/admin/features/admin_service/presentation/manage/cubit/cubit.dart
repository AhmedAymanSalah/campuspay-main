import 'package:campuspay/admin/features/admin_service/data/models/service/get_service_model.dart';
import 'package:campuspay/admin/features/admin_service/presentation/manage/cubit/states.dart';
import 'package:campuspay/core/utils/api_service.dart';
import 'package:campuspay/core/utils/components.dart';
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
    required int squadYear,
    required String collegeName,
    required num cost,
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
      token: "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9lbWFpbGFkZHJlc3MiOiJ5b3VzZWZhbGlzYWJlcjBAZ21haWwuY29tIiwiaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvd3MvMjAwNS8wNS9pZGVudGl0eS9jbGFpbXMvbmFtZWlkZW50aWZpZXIiOiIwZTE0MDhkYy05OTJhLTRmNjEtOWYzNy04YWNjMGZkZDYyMTYiLCJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9uYW1lIjoieW91c2VmMGFkbWluIiwicm9sZSI6IkFkbWluIiwiZXhwIjoxNzE2NTk4NzgyLCJpc3MiOiJHcmFkdXRpb25Qcm9qZWN0IiwiYXVkIjoiR3JhZHV0aW9uUHJvamVjdCJ9.I3Jp9NKdHbIi10Y6nTp-tP6JwLwfkdovD38nzlRafKw",
    )
   //print(r);
   .then((value){
      emit(CreateServiceSuccessStates());
    }).catchError((error){
      print(error.toString());
      emit(CreateServiceErrorStates(error.toString()));
      Navigator.pop(context);
    });
  }


  late GetServiceModel getServiceModel;
  void getService(){
    emit(GetServiceLoadingStates());
    ApiService.getData(
      url: 'Services/GetAll',
      token: 'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9lbWFpbGFkZHJlc3MiOiJ5b3VzZWZhbGlzYWJlcjBAZ21haWwuY29tIiwiaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvd3MvMjAwNS8wNS9pZGVudGl0eS9jbGFpbXMvbmFtZWlkZW50aWZpZXIiOiIwZTE0MDhkYy05OTJhLTRmNjEtOWYzNy04YWNjMGZkZDYyMTYiLCJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9uYW1lIjoieW91c2VmMGFkbWluIiwicm9sZSI6IkFkbWluIiwiZXhwIjoxNzE2NTk4NzgyLCJpc3MiOiJHcmFkdXRpb25Qcm9qZWN0IiwiYXVkIjoiR3JhZHV0aW9uUHJvamVjdCJ9.I3Jp9NKdHbIi10Y6nTp-tP6JwLwfkdovD38nzlRafKw',
    ).then((value)
    {
      getServiceModel=GetServiceModel.fromJson(value.data);
      emit(GetServiceSuccessStates());
    }
    ).catchError((error){
      print(error.toString());
      emit(GetServiceErrorStates(error.toString()));
    });
  }
}