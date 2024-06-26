import 'package:campuspay/core/helpers/app_images.dart';
import 'package:campuspay/core/theme/colors.dart';
import 'package:campuspay/core/widgets/custom_text_widget.dart';
import 'package:campuspay/features/home/presentation/manage/cubit/cubit.dart';
import 'package:campuspay/features/home/presentation/manage/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BuildItemRecentTransactions extends StatelessWidget {
  const BuildItemRecentTransactions({
    super.key,
  });

  // final Transactions transactions;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => HomeCubit()..getHistoryTransaction(),
      child: BlocConsumer<HomeCubit, HomeStates>(
        listener: (BuildContext context, state) {},
        builder: (BuildContext context, Object? state) {
          var cubit = HomeCubit().get(context);
          if (state is GetHistoryTransactionSuccessStates) {
            if (cubit.historyTransactionModel!.transactions != null) {
              return SizedBox(
                height: 220.h,
                width: double.infinity,
                child: ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount:
                      cubit.historyTransactionModel!.transactions!.length >= 3
                          ? 3
                          : cubit.historyTransactionModel!.transactions!.length,
                  separatorBuilder: (context, index) => Container(
                    height: 1,
                    color: const Color(0xFFF2F2F2),
                  ),
                  itemBuilder: (context, index) => ListTile(
                    leading: Container(
                      width: 48,
                      height: 48,
                      decoration: ShapeDecoration(
                        color: const Color(0xFFEFF5FF),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32),
                        ),
                      ),
                      child: Image.asset(Assets.imagesUniversity),
                    ),
                    title: CustomTextWidget(
                      text: cubit.historyTransactionModel!.transactions![index]
                          .serviceName!,
                      fontSize: 14.sp,
                      color: ColorsManager.darkGrey,
                    ),
                    subtitle: Row(
                      children: [
                        CustomTextWidget(
                          text: cubit.historyTransactionModel!
                              .transactions![index].date!,
                          fontSize: 12.sp,
                          color: ColorsManager.gray,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        CustomTextWidget(
                          text:
                              '${cubit.historyTransactionModel!.transactions![index].time!} ',
                          fontSize: 12.sp,
                          color: ColorsManager.gray,
                        ),
                      ],
                    ),
                    trailing: CustomTextWidget(
                      text:
                          '-${cubit.historyTransactionModel!.transactions![index].cost!}',
                      fontSize: 13.sp,
                      color: ColorsManager.darkGrey,
                    ),
                  ),
                ),
              );
            } else {
              return const Padding(
                padding: EdgeInsets.only(top: 20),
                child: Center(
                  child: Text(
                    textAlign: TextAlign.center,
                    'Not Transaction Found',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              );
            }
          } else if (state is GetHistoryTransactionErrorStates) {
            return Center(
                child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                state.error,
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
            ));
          } else {
            return const Center(
                child: Padding(
              padding: EdgeInsets.all(20.0),
              child: CircularProgressIndicator(),
            ));
          }
        },
      ),
    );
  }
}
