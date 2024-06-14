import 'package:campuspay/core/theme/colors.dart';
import 'package:campuspay/core/widgets/custom_text_widget.dart';
import 'package:campuspay/features/profile/data/presentation/manage/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../profile/data/presentation/manage/cubit/cubit.dart';

class WelcomeUserListTile extends StatelessWidget {
  const WelcomeUserListTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context)=>ProfileCubit()..getProfile(),
      child: BlocConsumer<ProfileCubit,ProfileStates>(
        listener: (BuildContext context, state) {  },
        builder: (BuildContext context, Object? state) {
          var cubit=ProfileCubit().get(context);
          if(cubit.profileModel !=null) {
            return ListTile(
            title: CustomTextWidget(
                text: "Good morning,", fontSize: 12.sp, color: ColorsManager.gray),
            subtitle: CustomTextWidget(
              text: cubit.profileModel!.fullName!,
              fontSize: 16.sp,
              fontWeight: FontWeight.bold,
              color: ColorsManager.darkBlue,
            ),
            trailing: Container(
              width: 48.h,
              height: 48.w,
              decoration: const ShapeDecoration(
                color: Colors.white,
                shape: OvalBorder(
                  side: BorderSide(width: 1, color: Color(0xFFE5E7EB)),
                ),
              ),
              child: const Icon(
                Icons.watch_later_outlined,
                color: ColorsManager.darkBlue,
              ),
            ),
          );
          }else{
            return Padding(
              padding: const EdgeInsets.all(20.0),
              child: const Center(child: CircularProgressIndicator()),
            );
          }
        },
      ),
    );
  }
}
