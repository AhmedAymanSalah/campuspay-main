// ignore_for_file: file_names

import 'package:campuspay/core/helpers/app_images.dart';
import 'package:campuspay/core/helpers/spacing.dart';
import 'package:campuspay/core/theme/colors.dart';
import 'package:campuspay/core/utils/constant.dart';
import 'package:campuspay/core/widgets/app_button.dart';
import 'package:campuspay/core/widgets/custom_text_widget.dart';
import 'package:campuspay/features/home/presentation/manage/cubit/cubit.dart';
import 'package:campuspay/features/home/presentation/manage/cubit/states.dart';
import 'package:campuspay/features/transfer_money/screens/transfer_success.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/widgets/custom_text_form_filed.dart';
import '../widget/balance.dart';

class TransferMoney extends StatefulWidget {
  const TransferMoney({super.key});

  @override
  State<TransferMoney> createState() => _TransferMoneyState();
}

class _TransferMoneyState extends State<TransferMoney> {
  var recipientController = TextEditingController();

  var amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => HomeCubit()..getBalance(),
      child: BlocConsumer<HomeCubit, HomeStates>(
        listener: (BuildContext context, state) {
          if (state is TransferToSuccessStates) {
            showToast(text: 'Transfer Success', color: Colors.green);
            navigateTo(
                context,
                TransferSuccess(
                  title: amountController.text,
                ));
          } else if (state is TransferToErrorStates) {
            showToast(
                text: 'Please check from recipient Id or balance not enough',
                color: Colors.red);
          }
        },
        builder: (BuildContext context, Object? state) {
          var cubit = HomeCubit().get(context);
          return Scaffold(
            extendBodyBehindAppBar: true,
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Colors.transparent,
              centerTitle: true,
              title: const CustomTextWidget(
                text: "Transfer Money",
                color: ColorsManager.lightGray,
                fontWeight: FontWeight.bold,
              ),
            ),
            body: state is GetBalanceSuccessStates
                ? Container(
                    height: double.infinity.h,
                    width: double.infinity.h,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(Assets.imagesBackgrond),
                            fit: BoxFit.cover)),
                    child: SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      child: Padding(
                        padding: EdgeInsets.only(
                            top: 65.h, left: 25.h, bottom: 30.h, right: 25.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            verticalSpace(25),
                            BalanceWidget(
                              balance: cubit.balanceModel!.balance!,
                            ),
                            verticalSpace(45),
                            Container(
                              height: 500.h,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(25)),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 20.h, horizontal: 20.h),
                                child: Column(
                                  children: [
                                    //const Spacer(),
                                    verticalSpace(50),
                                    CustomTextFormFiled(
                                      textInputType: TextInputType.number,
                                      titel: "Recipient ID",
                                      hintText: "Recipient",
                                      controller: recipientController,
                                    ),
                                    verticalSpace(30),
                                    CustomTextFormFiled(
                                      textInputType: TextInputType.number,
                                      titel: "Amount",
                                      hintText: "Amount",
                                      controller: amountController,
                                      suffixIcon:
                                          const Icon(Icons.attach_money),
                                    ),
                                    //verticalSpace(50),
                                    const Spacer(),
                                    state is! TransferToLoadingStates
                                        ? AppTextButton(
                                            text: "Transfer",
                                            onPressed: () {
                                              cubit.transferTo(
                                                balance: double.parse(
                                                    amountController.text),
                                                SSN: recipientController.text,
                                              );
                                            },
                                            buttonColor: ColorsManager.darkBlue,
                                          )
                                        : const Center(
                                            child: CircularProgressIndicator()),
                                    const Spacer(),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                : const Center(
                    child: CircularProgressIndicator(),
                  ),
          );
        },
      ),
    );
  }
}
