// ignore_for_file: library_private_types_in_public_api

import 'package:campuspay/admin/features/accounts/ui/widget/admin_search.dart';
import 'package:campuspay/core/helpers/extentions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// Import the custom widgets and models
import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/routes/routes.dart';
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
  String selectedContainer = '';

  @override
  Widget build(BuildContext context) {
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
                },
                child: Container(
                  width: 80.w,
                  height: 60.h,
                  decoration: BoxDecoration(
                    color:
                        selectedContainer == key ? Colors.blue : Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(
                      color:
                          selectedContainer == key ? Colors.blue : Colors.grey,
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
          const AdminSearch(),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: TitelData(),
          ),
          verticalSpace(15),
          Expanded(
            child: ListView.builder(
              itemCount: selectedContainer.isNotEmpty
                  ? data[selectedContainer]!.length
                  : 0,
              itemBuilder: (context, index) {
                return Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 5.h, horizontal: 10.h),
                  child: GestureDetector(
                    onTap: () {
                      context.navigateTo(Routes.studentInfoScreen);
                    },
                    child: Container(
                      height: 40.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border:
                              Border.all(color: ColorsManager.gray, width: 2)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          horizontalSpace(8),
                          CustomTextWidget(
                            text: data[selectedContainer]![index].id,
                            color: ColorsManager.darkBlue,
                          ),
                          const VerticalDivider(),
                          Expanded(
                            child: CustomTextWidget(
                              text: data[selectedContainer]![index].name,
                              color: ColorsManager.darkBlue,
                            ),
                          ),
                          const VerticalDivider(),
                          Expanded(
                            child: CustomTextWidget(
                              text: data[selectedContainer]![index].email,
                              color: ColorsManager.darkBlue,
                            ),
                          ),
                          const VerticalDivider(),
                          Expanded(
                            child: CustomTextWidget(
                              text: data[selectedContainer]![index].idNamber,
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
      ),
    );
  }
}
// Container(
//                   margin: EdgeInsets.symmetric(vertical: 5.h),
//                   padding: EdgeInsets.all(10.w),
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.circular(10),
//                     boxShadow: [
//                       BoxShadow(
//                         color: Colors.grey.withOpacity(0.5),
//                         spreadRadius: 2,
//                         blurRadius: 5,
//                         offset:
//                             const Offset(0, 3), // changes position of shadow
//                       ),
//                     ],
//                   ),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Text(data[selectedContainer]![index].name),
//                       Text(data[selectedContainer]![index].email),
//                     ],
//                   ),
//                 )