

import 'package:campuspay/core/utils/api_service.dart';
import 'package:campuspay/core/utils/constant.dart';
import 'package:campuspay/features/depoist/models/depoist_model.dart';
import 'package:campuspay/features/depoist/presentation/depoist_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/components.dart';
class DepoistCubit extends Cubit<DepoistStates> {
  DepoistCubit() : super(DepoistitialStates());
  
  late DepoistModel depoistModel; // Initialize here

  DepoistCubit get(context) => BlocProvider.of(context);

  bool obscureText = true;

  void changeObscureText() {
    obscureText = !obscureText;
    emit(DepoistChangeObscureTextStates());
  }

  void userDepoist({
    required double balance,
    required context,
  }) {
    emit(DepoistLoadingStates());
    buildShowLoading(context);
    ApiService.postData(
      url: 'Wallets/DepositV3',
      token: token,
      query: {
        'balance': balance,
      },
    ).then((value) {
      depoistModel = DepoistModel.fromJson(value.data);
      print(depoistModel.balance);

      emit(DepoistSuccessStates(depoistModel));
    }).catchError((error) {
      print(error.toString());
      emit(DepoistErrorStates(error.toString()));
      Navigator.pop(context);
    });
  }
}
