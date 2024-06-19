import 'package:campuspay/core/helpers/spacing.dart';
import 'package:campuspay/core/theme/colors.dart';
import 'package:campuspay/core/utils/constant.dart';
import 'package:campuspay/core/widgets/custom_text_widget.dart';
import 'package:campuspay/donator/featuers/cubit/cubit.dart';
import 'package:campuspay/donator/featuers/cubit/states.dart';
import 'package:campuspay/donator/featuers/social_research_requests/ui/widget/donator_requrest_info_botten.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../features/pay_screens/ui/screens/done_screen.dart';
import '../widget/donator_request_info_textfiled.dart';

class DonatorRequestInfo extends StatefulWidget {
  const DonatorRequestInfo({super.key, required this.serviceId});

  final int serviceId;

  @override
  State<DonatorRequestInfo> createState() => _DonatorRequestInfoState();
}

class _DonatorRequestInfoState extends State<DonatorRequestInfo> {
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
            DonorCubit()..getDetails(serviceId: widget.serviceId),
        child: BlocConsumer<DonorCubit, DonorStates>(
          listener: (BuildContext context, state) {
            if(state is PayRequestSuccessStates){
              showToast(text: 'Pay', color: Colors.green);
              navigateTo(context, const DoneScreen());
            }
          },
          builder: (BuildContext context, Object? state) {
            var cubit = DonorCubit.get(context);
            if (state is GetDetailsRequestDonorSuccessStates) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  children: [
                    DonatorRequestInfoTextFiled(
                      model: cubit.getDetailsRequestModel!,
                    ),
                    verticalSpace(15),
                    DonatorRequestInfoBotton(
                      function: () {
                        cubit.payRequest(id: widget.serviceId);
                      },
                    ),
                  ],
                ),
              );
            } else if (state is GetDetailsRequestDonorErrorStates) {
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
