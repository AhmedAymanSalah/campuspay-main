import 'package:campuspay/core/helpers/spacing.dart';
import 'package:campuspay/core/theme/colors.dart';
import 'package:campuspay/core/widgets/custom_text_widget.dart';
import 'package:campuspay/moderator/cubit/cubit.dart';
import 'package:campuspay/moderator/cubit/states.dart';
import 'package:campuspay/moderator/request_info/screens/request_refused.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/utils/constant.dart';
import '../widget/all_info_textfiled.dart';
import '../widget/request_info_bottons.dart';
import 'accept_screen.dart';

class RequestInfo extends StatelessWidget {
  const RequestInfo({super.key, required this.serviceId});

  final int serviceId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const CustomTextWidget(
          text: "Requset Info",
          color: ColorsManager.darkBlue,
          fontWeight: FontWeight.bold,
        ),
        centerTitle: true,
      ),
      body: BlocProvider(
        create: (BuildContext context) =>
        ModeratorCubit()
          ..getDetails(serviceId: serviceId),
        child: BlocConsumer<ModeratorCubit, ModeratorStates>(
          listener: (BuildContext context, state) {
            if(state is AcceptOrRejectRequestErrorStates){
              showToast(text: state.error, color: Colors.red);
            }
          },
          builder: (BuildContext context, Object? state) {
            var cubit = ModeratorCubit.get(context);
            if (state is GetDetailsRequestSuccessStates) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  children: [
                    AllInfoTextFiled(
                      model: cubit.getDetailsRequestModel!,
                    ),
                    verticalSpace(15),
                   RequestInfoBotton(
                      acceptFunction: () {
                        cubit.acceptOrRejectRequest(id: serviceId, status: true);

                          navigateTo(context, const RequestAcceptScreen());
                      },
                      rejectFunction: () {
                        cubit.acceptOrRejectRequest(
                            id: serviceId, status: false);
                          navigateTo(context, const RequestRefusedScreen());
                      },
                    ),
                  ],
                ),
              );
            } else if (state is GetDetailsRequestErrorStates) {
              return Text(
                state.error,
                style: const TextStyle(fontSize: 20),
              );
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
    );
  }
}
