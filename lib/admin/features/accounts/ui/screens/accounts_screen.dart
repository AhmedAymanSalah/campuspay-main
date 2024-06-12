import 'package:campuspay/admin/features/accounts/presentation/manage/cubit/cubit.dart';
import 'package:campuspay/admin/features/accounts/presentation/manage/cubit/states.dart';
import 'package:campuspay/admin/features/accounts/ui/screens/student_info_screen.dart';
import 'package:campuspay/admin/features/accounts/ui/widget/admin_search.dart';
import 'package:campuspay/core/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theme/colors.dart';
import '../../../../../core/widgets/custom_text_widget.dart';
import '../../../../../moderator/features/request_data/ui/widget/container_titel_info.dart';
import '../widget/map.dart';

class AccountsScreen extends StatefulWidget {
  const AccountsScreen({super.key});

  @override
  _AccountsScreenState createState() => _AccountsScreenState();
}

class _AccountsScreenState extends State<AccountsScreen> {
  // Set default type as the first key from data map
  String selectedContainer = 'Admin'; // or any default type

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) =>
      AccountCubit()..getAllAccounts(type: selectedContainer),
      child: BlocConsumer<AccountCubit, AccountStates>(
        listener: (BuildContext context, AccountStates state) {},
        builder: (BuildContext context, AccountStates state) {
          var cubit = AccountCubit().get(context);
          return Scaffold(
            appBar: AppBar(
              title: const CustomTextWidget(
                text: "Accounts",
                color: ColorsManager.darkBlue,
                fontWeight: FontWeight.bold,
              ),
            ),
            body: Column(
              children: [
                SizedBox(height: 20.h),
                Wrap(
                  spacing: 10.w,
                  children: data.keys.map((key) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedContainer = key;
                        });
                        cubit.getAllAccounts(type: key); // Fetch data for selected container
                      },
                      child: Container(
                        width: 80.w,
                        height: 60.h,
                        decoration: BoxDecoration(
                          color: selectedContainer == key
                              ? Colors.blue
                              : Colors.white,
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(
                            color: selectedContainer == key
                                ? Colors.blue
                                : Colors.grey,
                          ),
                        ),
                        child: Center(
                          child: CustomTextWidget(
                            text: key,
                            fontSize: 12.sp,
                            color: ColorsManager.darkBlue,
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                ),
                Expanded(
                  child: state is GetAllAccountsSuccessStates
                      ? Column(
                    children: [
                      AdminSearch(cubit: '${cubit.getAllAccountsModel.length}'),
                      const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: TitelData(),
                      ),
                      verticalSpace(15),
                      Expanded(
                        child: ListView.builder(
                          itemCount: cubit.getAllAccountsModel.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 5.h, horizontal: 10.h),
                              child: GestureDetector(
                                onTap: () {
                                  navigateTo(
                                    context,
                                    StudentInfoScreen(
                                      userId: cubit
                                          .getAllAccountsModel[index].id!,
                                    ),
                                  );
                                },
                                child: Container(
                                  height: 40.h,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                    BorderRadius.circular(10),
                                    border: Border.all(
                                        color: ColorsManager.gray,
                                        width: 2),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.center,
                                    children: [
                                      horizontalSpace(8),
                                      Expanded(
                                        flex: 1,
                                        child: CustomTextWidget(
                                          text: cubit
                                              .getAllAccountsModel[index]
                                              .fullName!,
                                          color:
                                          ColorsManager.darkBlue,
                                        ),
                                      ),
                                      const VerticalDivider(),
                                      // Expanded(
                                      //   flex: 1,
                                      //   child: CustomTextWidget(
                                      //     text: cubit
                                      //         .getDetailAccountModel[index].email!,
                                      //     color:
                                      //     ColorsManager.darkBlue,
                                      //   ),
                                      // ),
                                      // const VerticalDivider(),
                                      Expanded(
                                        flex: 3,
                                        child: CustomTextWidget(
                                          text: cubit
                                              .getAllAccountsModel[index]
                                              .id!,
                                          color: ColorsManager.darkBlue,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  )
                      : const Center(child: CircularProgressIndicator()),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
