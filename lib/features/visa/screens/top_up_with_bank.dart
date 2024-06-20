import 'package:campuspay/core/utils/constant.dart';
import 'package:campuspay/features/home/presentation/manage/cubit/cubit.dart';
import 'package:campuspay/features/home/presentation/manage/cubit/states.dart';
import 'package:campuspay/features/visa/screens/confirm_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:campuspay/core/helpers/app_images.dart';
import 'package:campuspay/core/helpers/spacing.dart';
import 'package:campuspay/core/theme/colors.dart';
import 'package:campuspay/core/widgets/app_button.dart';
import 'package:campuspay/core/widgets/custom_text_widget.dart';
import '../../transfer_money/widget/balance.dart';
import '../widget/amount_topup.dart';



class TopUpWithBank extends StatelessWidget {
  const TopUpWithBank({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var controller = TextEditingController();
    return BlocProvider(
      create: (BuildContext context) => HomeCubit()..getBalance(),
      child: BlocConsumer<HomeCubit, HomeStates>(
        listener: (BuildContext context, state) {},
        builder: (BuildContext context, Object? state) {
          var cubit = HomeCubit().get(context);
          return Scaffold(
            extendBodyBehindAppBar: true,
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Colors.transparent,
              centerTitle: true,
              title: const CustomTextWidget(
                text: "Deposit",
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
                          fit: BoxFit.cover),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: 100.h,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 15.h),
                            child: BalanceWidget(
                              balance: cubit.balanceModel!.balance!,
                            ),
                          ),
                          verticalSpace(45),
                          Expanded(
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 25.h,
                                ),
                                child: ListView(
                                  children: [
                                    verticalSpace(40),
                                    CustomNumberTextField(
                                      controller: controller,
                                    ),
                                    verticalSpace(50),
                                    const Spacer(),
                                    AppTextButton(
                                      text: "Continue",
                                      buttonColor: ColorsManager.darkBlue,
                                      onPressed: () {
                                        final amount = controller.text;
                                        if (amount.isEmpty) {
                                          showToast(
                                            text: "Please enter an amount",
                                            color: Colors.red,
                                          );
                                        } else {
                                          navigateTo(
                                            context,
                                            ConformScreen(
                                              amount: amount,
                                            ),
                                          );
                                        }
                                      },
                                    ),
                                    const Spacer(),
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
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



    // BlocProvider.of<DepoistCubit>(context).userDepoist(
                            //   balance: double.parse(controller.text),
                            //   context: context,
                            // );

                             