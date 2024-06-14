import 'package:campuspay/core/utils/api_service.dart';
import 'package:campuspay/core/utils/constant.dart';
import 'package:campuspay/features/home/data/models/balance_model.dart';
import 'package:campuspay/features/home/data/models/transaction_model.dart';
import 'package:campuspay/features/home/presentation/manage/cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class HomeCubit extends Cubit<HomeStates>
{
  HomeCubit():super (InitialHomeStates());
  HomeCubit get(context)=>BlocProvider.of(context);



  HistoryTransactionModel? historyTransactionModel;
  void getHistoryTransaction() {
    emit(GetHistoryTransactionLoadingStates());
    ApiService.getData(
      url: 'UserActivities/HistoryOfTransactions',
      token: token,
    ).then((value) {
      historyTransactionModel=HistoryTransactionModel.fromJson(value.data);
      emit(GetHistoryTransactionSuccessStates());
    }).catchError((error) {
      print(error.toString());
      emit(GetHistoryTransactionErrorStates(error.toString()));
    });
  }


  void transferTo({
    required double balance,
    required String SSN,
  }){
    emit(TransferToLoadingStates());
    ApiService.postData(
      url: 'Wallets/Transfer_To',
      query: {
        'balance':balance,
        'SSN':SSN,
      },
      token: token,
    )
        .then((value){
      emit(TransferToSuccessStates());
    }).catchError((error){
      print(error.toString());
      emit(TransferToErrorStates(error.toString()));
    });
  }


  void socialRequest({
    required bool isResidentInFamilyHome,
    required String fatherName,
    required bool fatherIsDead ,
    required String fatherJob,
    required String fatherState,
    required String fatherIncome,
    required int numberOfFamilyMembers ,
    required int numberOfFamilyMembersInEdu,
    required int serviceId,
  }){
    emit(SocialRequestLoadingStates());
    ApiService.postData(
      url: 'SocialRequests/Add',
      query: {
        'IsResidentInFamilyHome':isResidentInFamilyHome,
        'FatherName':fatherName,
        'FatherIsDead ':fatherIsDead ,
        'FatherJob':fatherJob,
        'FatherState':fatherState,
        'FatherIncome':fatherIncome,
        'NumberOfFamilyMembers ':numberOfFamilyMembers ,
        'NumberOfFamilyMembersInEdu':numberOfFamilyMembersInEdu,
        'ServiceId':serviceId,
      },
      token: token,
    )
        .then((value){
      emit(SocialRequestSuccessStates());
    }).catchError((error){
      print(error.toString());
      emit(SocialRequestErrorStates(error.toString()));
    });
  }


  BalanceModel? balanceModel;
  void getBalance() {
    emit(GetBalanceLoadingStates());
    ApiService.getData(
      url: 'Wallets/GetBalance',
      token: token,
    ).then((value) {
      balanceModel=BalanceModel.fromJson(value.data);
      emit(GetBalanceSuccessStates());
    }).catchError((error) {
      print(error.toString());
      emit(GetBalanceErrorStates(error.toString()));
    });
  }

  BalanceModel? totalOfMoneyPayed;
  void getTotalOfMoneyPayed() {
    emit(GetBalanceLoadingStates());
    ApiService.getData(
      url: 'UserActivities/TotelOfMoneyPayed',
      token: token,
    ).then((value) {
      totalOfMoneyPayed=BalanceModel.fromJson(value.data);
      emit(GetBalanceSuccessStates());
    }).catchError((error) {
      print(error.toString());
      emit(GetBalanceErrorStates(error.toString()));
    });
  }

  BalanceModel? totalOfMoneyDeposited;
  void getTotalOfMoneyDeposited() {
    emit(GetBalanceLoadingStates());
    ApiService.getData(
      url: 'UserActivities/TotelOfMoneyDeposited',
      token: token,
    ).then((value) {
      totalOfMoneyDeposited=BalanceModel.fromJson(value.data);
      emit(GetBalanceSuccessStates());
    }).catchError((error) {
      print(error.toString());
      emit(GetBalanceErrorStates(error.toString()));
    });
  }
}