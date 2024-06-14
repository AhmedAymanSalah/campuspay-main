import 'package:campuspay/core/helpers/app_images.dart';
import 'package:campuspay/features/profile/data/presentation/manage/cubit/cubit.dart';
import 'package:campuspay/features/profile/data/presentation/manage/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/widgets/custom_text_widget.dart';

class InfoListTileUser extends StatelessWidget {
  const InfoListTileUser({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context)=>ProfileCubit()..getProfile(),
      child: BlocConsumer<ProfileCubit,ProfileStates>(
        listener: (BuildContext context, state) {},
        builder: (BuildContext context, Object? state) {
          var cubit=ProfileCubit().get(context);
          if(cubit.profileModel !=null) {
            return Container(
            alignment: Alignment.center,
            width: double.infinity,
            height: 88,
            decoration: const BoxDecoration(color: Colors.white),
            child:  ListTile(
              leading: const CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage(
                  Assets.imagesPngStudent,
                ),
              ),
              title: CustomTextWidget(
                text: cubit.profileModel!.fullName!,
                color: ColorsManager.gray,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
              subtitle: CustomTextWidget(
                text: cubit.profileModel!.email!,
                color: ColorsManager.mainBlue,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
          );
          }else{
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
