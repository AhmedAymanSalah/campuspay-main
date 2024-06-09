// ignore_for_file: must_be_immutable

import 'package:campuspay/core/helpers/app_images.dart';
import 'package:campuspay/core/helpers/extentions.dart';
import 'package:campuspay/core/helpers/spacing.dart';
import 'package:campuspay/core/theme/colors.dart';
import 'package:campuspay/core/utils/constant.dart';
import 'package:campuspay/core/widgets/custom_text_widget.dart';
import 'package:campuspay/features/home/logic/cubit/home_cubit.dart';
import 'package:campuspay/features/home/logic/cubit/home_state.dart';
import 'package:campuspay/features/social_request/ui/screen/social_request_screen.dart';
import 'package:campuspay/features/transfer_money/screens/transfer_money_Screen.dart';
import 'package:campuspay/features/visa/screens/cardes_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/routes/routes.dart';

class ServicesInHomeScreen extends StatelessWidget {
  ServicesInHomeScreen({
    super.key,
  });
  bool isCached = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            ContainerIconService(
              image: Assets.imagesPaybill,
              onTap: () {
                navigateTo(context, const SocialRequestScreen());
              },
            ),
            verticalSpace(16),
            CustomTextWidget(
              text: "social request",
              color: ColorsManager.gray,
              fontSize: 12.sp,
            ),
          ],
        ),
        Column(
          children: [
            ContainerIconService(
              image: Assets.imagesTransfer,
              onTap: () {
                navigateTo(context, const TransferMoney());
              },
            ),
            verticalSpace(16),
            CustomTextWidget(
              text: "Transfer",
              color: ColorsManager.gray,
              fontSize: 12.sp,
            ),
          ],
        ),
        Column(
          children: [
            ContainerIconService(
              image: Assets.imagesIconmyCache,
              onTap: () {
                navigateTo(context, const CaredsScreen());
              },
            ),
            verticalSpace(16),
            CustomTextWidget(
              text: "Top Up",
              color: ColorsManager.gray,
              fontSize: 12.sp,
            ),
          ],
        ),
        Column(
          children: [
            BlocBuilder<HomeCubit, HomeState>(
              builder: (context, state) {
                return ContainerIconService(
                  image: Assets.imagesIconmyCache,
                  onTap: () {
                    HomeCubit.get(context).emitMyCacheState();
                  },
                );
              },
            ),
            verticalSpace(16),
            CustomTextWidget(
              text: "My Cache",
              color: ColorsManager.gray,
              fontSize: 12.sp,
            ),
          ],
        ),
      ],
    );
  }
}

class ContainerIconService extends StatelessWidget {
  const ContainerIconService({
    super.key,
    required this.image,
    this.height,
    this.width,
    required this.onTap,
  });

  final String image;
  final double? height, width;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width ?? 64.w,
        height: height ?? 64.h,
        decoration: ShapeDecoration(
          color: const Color(0xFFEFF5FF),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(32),
          ),
        ),
        child: Image.asset(image),
      ),
    );
  }
}
