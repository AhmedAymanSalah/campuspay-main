import 'package:campuspay/core/helpers/spacing.dart';
import 'package:campuspay/core/widgets/app_button.dart';
import 'package:campuspay/features/layout/presentation/view/layout_view.dart';
import 'package:campuspay/features/profile/data/presentation/manage/cubit/cubit.dart';
import 'package:campuspay/features/profile/data/presentation/manage/cubit/states.dart';
import 'package:campuspay/features/profile/ui/widgets/data_of_profile.dart';
import 'package:campuspay/features/profile/ui/widgets/image_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/utils/constant.dart';
import '../../../../core/widgets/custom_text_widget.dart';

class UpdateProfileScreen extends StatelessWidget {
  const UpdateProfileScreen({super.key});

  // final GetProfileModel getProfileModel;
//  final cubit;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context)=>ProfileCubit()..getProfile(),
      child: BlocConsumer<ProfileCubit, ProfileStates>(
        listener: (BuildContext context, state) {
          if (state is UpdateProfileSuccessStates) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: CustomTextWidget(
                  text: "Update Success",
                  fontSize: 12,
                  color: ColorsManager.white,
                ),
              ),
            );
            navigateTo(context, const StudentLayoutView());
          } else if (state is UpdateProfileErrorStates) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: CustomTextWidget(
                  text: state.error,
                  fontSize: 12,
                  color: ColorsManager.white,
                ),
              ),
            );
          }
        },
        builder: (BuildContext context, Object? state) {
          var cubit=ProfileCubit().get(context).profileModel;
          if(cubit !=null)
          {
            nameController.text = cubit.fullName!;
            emailController.text = cubit.email!;
            ssnController.text = cubit.ssn!;
          }
          return SafeArea(
            child: Scaffold(
              appBar: AppBar(
                centerTitle: true,
                title: const CustomTextWidget(
                  text: "Update Profile",
                  color: ColorsManager.darkBlue,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
                leading: IconButton(
                    onPressed: (){
                     Navigator.pop(context);
                      },
                    icon: const Icon(Icons.arrow_back)),
              ),
              body: state is! UpdateProfileLoadingStates
                  ? SingleChildScrollView(
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 60.h, horizontal: 16),
                        child: Column(
                          children: [
                            verticalSpace(16),
                            const ImageProfile(),
                            verticalSpace(20),
                             DataProfileFormField(cubit: cubit,),
                            verticalSpace(100),
                           state is! UpdateProfileLoadingStates? AppTextButton(
                              buttonColor: ColorsManager.darkBlue,
                              text: 'Update',
                              onPressed: () {
                                ProfileCubit().get(context).updateProfile(
                                    newFullName: nameController.text);
                              },
                              elevation: 0,
                            ):const Center(child: CircularProgressIndicator()),
                          ],
                        ),
                      ),
                    )
                  : const Center(child: CircularProgressIndicator()),
            ),
          );
        },
      ),
    );
  }
}
