import 'package:campuspay/core/helpers/spacing.dart';
import 'package:campuspay/core/widgets/custom_text_widget.dart';
import 'package:campuspay/features/profile/data/presentation/manage/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theme/colors.dart';
import '../../../../../features/profile/data/presentation/manage/cubit/cubit.dart';

class WelcomeAdmin extends StatelessWidget {
  const WelcomeAdmin({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => ProfileCubit()..getProfile(),
      child: BlocConsumer<ProfileCubit, ProfileStates>(
        listener: (BuildContext context, state) {},
        builder: (BuildContext context, Object? state) {
          var cubit = ProfileCubit().get(context);
          if (cubit.profileModel != null) {
            return Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomTextWidget(
                    text: "Good Morning,",
                    fontSize: 12.sp,
                    color: ColorsManager.gray,
                  ),
                  CustomTextWidget(
                    text: cubit.profileModel!.fullName!,
                    fontSize: 18.sp,
                    color: ColorsManager.darkBlue,
                    fontWeight: FontWeight.bold,
                  ),
                  verticalSpace(7),
                  CustomTextWidget(
                    text: "Administrator",
                    color: ColorsManager.mainBlue,
                    fontSize: 14.sp,
                  ),
                ],
              ),
            );
          } else {
            return const Padding(
              padding: EdgeInsets.all(20.0),
              child: Center(child: CircularProgressIndicator()),
            );
          }
        },
      ),
    );
  }
}
