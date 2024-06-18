import 'package:campuspay/admin/features/admin_service/presentation/manage/cubit/cubit.dart';
import 'package:campuspay/admin/features/admin_service/presentation/manage/cubit/states.dart';
import 'package:campuspay/core/theme/colors.dart';
import 'package:campuspay/core/utils/constant.dart';
import 'package:campuspay/features/pay_screens/ui/screens/done_screen.dart';
import 'package:campuspay/features/pay_screens/ui/screens/error_Screen.dart';
import 'package:campuspay/features/pay_screens/ui/widgets/pay_photo.dart';
import 'package:campuspay/features/profile/data/presentation/manage/cubit/cubit.dart';
import 'package:campuspay/features/profile/data/presentation/manage/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/app_images.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/widgets/custom_text_widget.dart';
import '../widgets/custom_info_container.dart';
import '../widgets/pay_contanier.dart';
import '../widgets/payment_button.dart';

class PayScreen extends StatelessWidget {
  final serviceId;
  const PayScreen({
    super.key,
    required this.serviceId,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => ProfileCubit()..getProfile(),
      child: BlocConsumer<ProfileCubit, ProfileStates>(
        listener: (BuildContext context, state) {},
        builder: (BuildContext context, Object? state) {
          return BlocProvider(
            create: (BuildContext context) =>
                ServiceCubit()..getDetails(serviceId: serviceId),
            child: BlocConsumer<ServiceCubit, ServiceStates>(
              listener: (BuildContext context, state) {
                if (state is PaySuccessStates) {
                  if (state.payModel.balance == 'balance not enough') {
                    showToast(
                        text: state.payModel.balance!, color: Colors.green);
                    navigateTo(context, const ErrorScreen());
                  } else if (state.payModel.balance != 'balance not enough') {
                    showToast(
                        text: state.payModel.balance!, color: Colors.green);
                    navigateTo(context, const DoneScreen());
                  }
                } else if (state is PayErrorStates) {
                  showToast(text: state.error, color: Colors.red);
                }
              },
              builder: (BuildContext context, Object? state) {
                var cubit = ServiceCubit().get(context).getDetailsModel;
                return Scaffold(
                  appBar: AppBar(
                    iconTheme:
                        IconThemeData(color: ThemeData.dark().primaryColor),
                    elevation: 0,
                    backgroundColor: Colors.white,
                  ),
                  body: state is! GetDetailsLoadingStates
                      ? Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 25.w, vertical: 25.h),
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const PayPhoto(),
                                verticalSpace(25),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CircleAvatar(
                                      child: cubit!.filePath != null
                                          ? Image.network(cubit.filePath!)
                                          : Image.asset(
                                              Assets.imagesUniversity),
                                    ),
                                    horizontalSpace(8),
                                    CustomTextWidget(
                                      text: cubit.name!,
                                      color: ColorsManager.darkBlue,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ],
                                ),
                                verticalSpace(40),
                                const PayContainer(
                                  titel: "PROVIDER",
                                  assetImagePath:
                                      "assets/images/fayoum_logo.png",
                                  text: "Fayoum university ",
                                ),
                                verticalSpace(30),
                                PayContainer(
                                  titel: "identity number",
                                  text: ProfileCubit()
                                      .get(context)
                                      .profileModel!
                                      .ssn!,
                                ),
                                verticalSpace(30),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    PayContainer(
                                      titel: "AMOUNT",
                                      text: '${cubit.cost}',
                                    ),
                                    horizontalSpace(20),
                                    const PayContainer(
                                      titel: "FEE / TAxes",
                                      text: "0.00 ",
                                    )
                                  ],
                                ),
                                verticalSpace(20),
                                CustomInfoContainer(
                                  title: 'Student Information',
                                  content: '''
  -${ProfileCubit().get(context).profileModel!.fullName}
  - Computers and artificial intelligence
  - fourth level 2023-2024
  -number of bills: 1
  -amount due: ${cubit.cost} L.E
  -EFinance fees: 0.00
  ''',
                                ),
                                verticalSpace(30),
                                state is! PayLoadingStates
                                    ? CustomPaymentButton(
                                        amountToPay: cubit
                                            .cost!, // Example amount to be paid
                                        onTap: () {
                                          ServiceCubit()
                                              .get(context)
                                              .pay(serviceId: serviceId);
                                        },
                                      )
                                    : const Center(
                                        child: CircularProgressIndicator())
                              ],
                            ),
                          ),
                        )
                      : const Center(child: CircularProgressIndicator()),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
