import 'package:campuspay/admin/features/accounts/data/models/get_account_model.dart';
import 'package:campuspay/admin/features/accounts/data/models/get_details_account_model.dart';
import 'package:campuspay/admin/features/accounts/presentation/manage/cubit/states.dart';
import 'package:campuspay/core/utils/api_service.dart';
import 'package:campuspay/core/utils/constant.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class AccountCubit extends Cubit<AccountStates>
{
  AccountCubit():super (InitialAccountStates());
  AccountCubit get(context)=>BlocProvider.of(context);

//   void createService({
//     required String name,
//      String? desc,
//     required String type,
//     required int squadYear,
//     required String collegeName,
//     required double cost,
//     required context
// }){
//     emit(CreateServiceLoadingStates());
//     buildShowLoading(context);
//     ApiService.postData(
//       url: 'Services/Add',
//       query: {
//         'Name':name,
//         'Description':desc,
//         'Type':type,
//         'SquadYear':squadYear,
//         'CollegeName':collegeName,
//         'Cost':cost,
//       },
//       token: token,
//     )
//    .then((value){
//       emit(CreateServiceSuccessStates());
//     }).catchError((error){
//       print(error.toString());
//       emit(CreateServiceErrorStates(error.toString()));
//       Navigator.pop(context);
//     });
//   }


  late List<GetAllAccountsModel> getAllAccountsModel; // Change GetServiceModel to List<Item>

  void getAllAccounts({
    required String type
}) {
    emit(GetAllAccountsLoadingStates());
    ApiService.getData(
      url: 'Accounts/GetAll',
      token: token,
      query: {
        'type':type,
      }
    ).then((value) {
      List<dynamic> data = value.data;
      getAllAccountsModel = data.map((itemJson) => GetAllAccountsModel.fromJson(itemJson)).toList();
      emit(GetAllAccountsSuccessStates());
    }).catchError((error) {
      print(error.toString());
      emit(GetAllAccountsErrorStates(error.toString()));
    });
  }

  late List<GetDetailAccountModel> getDetailAccountModel; // Change GetServiceModel to List<Item>

  void getDetailsAccounts({
    required String userId
  }) {
    emit(GetDetailsAccountsLoadingStates());
    ApiService.getData(
        url: 'Accounts/GetDetails',
        token: token,
        query: {
          'userId':userId,
        }
    ).then((value) {
      List<dynamic> data = value.data;
      getDetailAccountModel = data.map((itemJson) => GetDetailAccountModel.fromJson(itemJson)).toList();
      emit(GetDetailsAccountsSuccessStates());
    }).catchError((error) {
      print(error.toString());
      emit(GetDetailsAccountsErrorStates(error.toString()));
    });
  }


  void stopAccounts({
    required String userId
  }) {
    emit(StopAccountsLoadingStates());
    ApiService.putData(
        url: 'Accounts/Stop',
        token: token,
        query: {
          'userId':userId,
        }
    ).then((value) {
      emit(StopAccountsSuccessStates());
    }).catchError((error) {
      print(error.toString());
      emit(StopAccountsErrorStates(error.toString()));
    });
  }

}