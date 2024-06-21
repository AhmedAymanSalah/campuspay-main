import 'package:campuspay/core/utils/api_service.dart';
import 'package:campuspay/core/utils/constant.dart';
import 'package:campuspay/features/profile/data/models/profile_model.dart';
import 'package:campuspay/features/profile/data/presentation/manage/cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class ProfileCubit extends Cubit<ProfileStates>
{
  ProfileCubit():super (InitialProfileStates());
  ProfileCubit get(context)=>BlocProvider.of(context);


  GetProfileModel? profileModel;
  void getProfile() {
    emit(GetProfileLoadingStates());
    ApiService.getData(
      url: 'UserActivities/Profile',
      token: token,
    ).then((value) {
      profileModel=GetProfileModel.fromJson(value.data);
      emit(GetProfileSuccessStates());
    }).catchError((error) {
      print(error.toString());
      emit(GetProfileErrorStates(error.toString()));
    });
  }

  void addFeedback({
    required String feedback,
}) {
    emit(AddFeedbackLoadingStates());
    ApiService.postData(
      url: 'UserActivities/AddFeedback',
      token: token,
      query: {
        'feedback':feedback
      }
    ).then((value) {
      emit(AddFeedbackSuccessStates());
    }).catchError((error) {
      print(error.toString());
      emit(AddFeedbackErrorStates(error.toString()));
    });
  }


  void updateProfile({
    required String newFullName,
  }) {
    emit(UpdateProfileLoadingStates());
    ApiService.putData(
        url: 'UserActivities/UpdateProfile',
        token: token,
        query: {
          'newFullName':newFullName
        }
    ).then((value) {
      emit(UpdateProfileSuccessStates());
    }).catchError((error) {
      print(error.toString());
      emit(UpdateProfileErrorStates(error.toString()));
    });
  }

}