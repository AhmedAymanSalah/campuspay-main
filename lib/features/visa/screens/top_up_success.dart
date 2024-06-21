// top_up_success.dart

import 'package:campuspay/core/helpers/app_images.dart';
import 'package:campuspay/core/helpers/spacing.dart';
import 'package:campuspay/core/theme/colors.dart';
import 'package:campuspay/core/utils/constant.dart';
import 'package:campuspay/core/widgets/app_button.dart';
import 'package:campuspay/core/widgets/custom_text_widget.dart';
import 'package:campuspay/features/depoist/presentation/depoist_cubit.dart';
import 'package:campuspay/features/depoist/presentation/depoist_states.dart';
import 'package:campuspay/features/layout/presentation/view/layout_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TopUpSuccess extends StatelessWidget {
  final String amount;

  const TopUpSuccess({super.key, required this.amount});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) {
        final cubit = DepoistCubit();
        // Initialize depoistModel before using it in UI
        cubit.userDepoist(
            balance: double.tryParse(amount) ?? 0.0, context: context);
        return cubit;
      },
      child: BlocConsumer<DepoistCubit, DepoistStates>(
        listener: (BuildContext context, state) {
          if (state is DepoistSuccessStates) {
            showToast(text: 'Deposit Successful', color: Colors.green);
          } else if (state is DepoistErrorStates) {
            showToast(text: state.error, color: Colors.red);
          }
        },
        builder: (BuildContext context, state) {
          var cubit = BlocProvider.of<DepoistCubit>(context);

          if (state is DepoistLoadingStates) {
            return const Center(child: CircularProgressIndicator());
          }

          double totalBalance = (cubit.depoistModel.balance ?? 00);
          return Scaffold(
            extendBodyBehindAppBar: true,
            appBar: AppBar(
              automaticallyImplyLeading: false,
              elevation: 0,
              backgroundColor: Colors.transparent,
            ),
            body: Container(
              height: double.infinity.h,
              width: double.infinity.h,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(Assets.imagesBackgrond),
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(
                  top: 65.h,
                  left: 25.h,
                  bottom: 30.h,
                  right: 25.h,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    verticalSpace(45),
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          height: 500.h,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: 50.h,
                              horizontal: 20.h,
                            ),
                            child: Column(
                              children: [
                                verticalSpace(30),
                                const CustomTextWidget(
                                  text: "Great!",
                                  color: Colors.blue,
                                ),
                                const CustomTextWidget(
                                  text: "Deposit Success",
                                  color: ColorsManager.darkBlue,
                                  fontWeight: FontWeight.bold,
                                ),
                                verticalSpace(25),
                                const Divider(),
                                verticalSpace(25),
                                const CustomTextWidget(
                                  text: "Total deposit",
                                  color: ColorsManager.gray,
                                ),
                                CustomTextWidget(
                                  text: "$amount L.E",
                                  color: ColorsManager.mainBlue,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30,
                                ),
                                verticalSpace(20),
                                const CustomTextWidget(
                                  text: "Total Balance",
                                  color: ColorsManager.gray,
                                ),
                                CustomTextWidget(
                                  text: "$totalBalance L.E",
                                  color: ColorsManager.mainBlue,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30,
                                ),
                                const Spacer(),
                                AppTextButton(
                                  text: "Back to Home",
                                  onPressed: () {
                                    navigateAndFinish(
                                        context, const StudentLayoutView());
                                  },
                                  buttonColor: ColorsManager.darkBlue,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 430.h,
                          right: 100.h,
                          child: const Image(
                            image: AssetImage(Assets.imagesIcon1),
                            fit: BoxFit.cover,
                            width: 130,
                            height: 130,
                          ),
                        ),
                      ],
                    ),
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
