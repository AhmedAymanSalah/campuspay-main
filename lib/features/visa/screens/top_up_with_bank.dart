import 'package:campuspay/core/utils/constant.dart';
import 'package:campuspay/features/depoist/presentation/depoist_cubit.dart';
import 'package:campuspay/features/depoist/presentation/depoist_states.dart';
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
import 'confirm_screen.dart';

class TopUpWithBank extends StatelessWidget {
  const TopUpWithBank({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var controller = TextEditingController();
    return BlocProvider(
      create: (BuildContext context) => DepoistCubit(),
      child: BlocConsumer<DepoistCubit, DepoistStates>(
        listener: (BuildContext context, state) {
          if (state is DepoistSuccessStates) {
            navigateTo(context,  ConformScreen(amount: controller.text,));
          } else if (state is DepoistErrorStates) {
            showToast(text: state.error, color: Colors.red);
          }
        },
        builder: (BuildContext context, state) {
          //var cubit = BlocProvider.of<HomeCubit>(context);
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
            body: Container(
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
                      child: const BalanceWidget(
                        balance: 0.00,
                      ),
                    ),
                    verticalSpace(45),
                    Expanded(
                      child: Container(
                        //height: 500.h,
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
                                  BlocProvider.of<DepoistCubit>(context)
                                      .userDepoist(
                                    balance: double.parse(controller.text),
                                    context: context,
                                  );
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
            ),
          );
        },
      ),
    );
  }
}
