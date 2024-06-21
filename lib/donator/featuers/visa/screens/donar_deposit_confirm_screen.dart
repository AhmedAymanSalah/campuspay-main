import 'package:campuspay/core/helpers/app_images.dart';
import 'package:campuspay/core/helpers/spacing.dart';
import 'package:campuspay/core/utils/constant.dart';
import 'package:campuspay/core/widgets/app_button.dart';
import 'package:campuspay/donator/featuers/visa/screens/donar_deposit_success.dart';
import 'package:campuspay/features/home/presentation/manage/cubit/cubit.dart';
import 'package:campuspay/features/home/presentation/manage/cubit/states.dart';
import 'package:campuspay/features/visa/widget/container.dart';
import 'package:campuspay/features/visa/widget/row_widget.dart';
import 'package:campuspay/stripe%20payment/payment_managers.dart';
import 'package:flutter/material.dart';
import 'package:campuspay/core/theme/colors.dart';
import 'package:campuspay/core/widgets/custom_text_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class DonarDepositConfirmScreen extends StatelessWidget {
  final String amount;
  const DonarDepositConfirmScreen({super.key, required this.amount});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => HomeCubit()..getBalance(),
      child: BlocConsumer<HomeCubit, HomeStates>(
        listener: (BuildContext context, state) {},
        builder: (BuildContext context, Object? state) {
          var cubit = HomeCubit().get(context);

          if (state is GetBalanceSuccessStates && cubit.balanceModel != null) {
            double parsedAmount = double.tryParse(amount) ?? 0.0;
            return Scaffold(
              extendBodyBehindAppBar: true,
              appBar: AppBar(
                elevation: 0,
                backgroundColor: Colors.transparent,
                centerTitle: true,
                title: const CustomTextWidget(
                  text: "Confirm",
                  color: ColorsManager.darkBlue,
                  fontWeight: FontWeight.bold,
                ),
              ),
              body: Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Spacer(),
                    Image.asset(Assets.imagesBluePay),
                    CustomTextWidget(
                      text: "$parsedAmount L.E",
                      color: ColorsManager.darkBlue,
                      fontWeight: FontWeight.bold,
                    ),
                    const CustomTextWidget(
                      text: "Below is your Deposit summary",
                      color: ColorsManager.darkBlue,
                      fontWeight: FontWeight.bold,
                    ),
                    verticalSpace(15.h),
                    const ContainerWidget(),
                    verticalSpace(20.h),
                    RowWidget(
                        text: "Account Balance",
                        data: "${cubit.balanceModel!.balance!} L.E"),
                    RowWidget(text: "Deposit Amount", data: "$parsedAmount L.E"),
                    const RowWidget(
                        text: "Date", data: "May 26, 2024"),
                    const Spacer(),
                    AppTextButton(
                      onPressed: () async {
                        try {
                          int amountInInt = parsedAmount.toInt();
                          await PaymentManager.makePayment(amountInInt, 'EGP');

                          // Payment successful, navigate to success screen
                          navigateTo(
                            // ignore: use_build_context_synchronously
                            context,
                            DonarDepositSuccess(
                              amount: amount,
                            ),
                          );

                          // Print success message (optional)
                          // ignore: avoid_print
                          print('Payment successful');
                        } catch (e) {
                          // Payment failed, handle the error gracefully
                          // ignore: avoid_print
                          print('Payment failed: $e');
                          // You may show an error message or handle it as per your app's design
                        }
                      },
                      text: "Confirm",
                      buttonColor: ColorsManager.darkBlue,
                    )
                  ],
                ),
              ),
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
