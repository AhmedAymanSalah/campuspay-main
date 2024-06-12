import 'package:campuspay/admin/features/accounts/presentation/manage/cubit/cubit.dart';
import 'package:campuspay/admin/features/accounts/presentation/manage/cubit/states.dart';
import 'package:campuspay/admin/features/accounts/ui/screens/stoped_email_screen.dart';
import 'package:campuspay/core/helpers/spacing.dart';
import 'package:campuspay/core/theme/colors.dart';
import 'package:campuspay/core/utils/constant.dart';
import 'package:campuspay/core/widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widget/delet_and_expert_container.dart';
import '../widget/student_info_display_data.dart';

class StudentInfoScreen extends StatelessWidget {
  const StudentInfoScreen({super.key, required this.userId});

  final String userId;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) =>AccountCubit(),
      child: BlocConsumer<AccountCubit,AccountStates>(
        listener: (BuildContext context, state) {
          if(state is StopAccountsSuccessStates){
            showToast(text: 'Stop Account Success', color: Colors.green);
            navigateTo(context, const StopedEmailScreen());
          }else if(state is StopAccountsErrorStates){
            showToast(text: state.error, color: Colors.red);
          }
        },
        builder: (BuildContext context, Object? state) {
          return Scaffold(
            appBar: AppBar(),
            body: Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.h, vertical: 15.h),
              child: ListView(
                children: [
                  const DeletAndExportContainer(),
                  verticalSpace(15),
                  StudentInfoDisplayData(userId: userId,),
                  verticalSpace(15),
                state is! StopAccountsLoadingStates?  AppTextButton(
                    buttonColor: ColorsManager.red,
                    text: "Stop Email",
                    onPressed: () {
                      AccountCubit().get(context).stopAccounts(userId: userId);
                    },
                  ):const Center(child: CircularProgressIndicator()),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
