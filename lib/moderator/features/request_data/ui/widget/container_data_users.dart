import 'package:campuspay/core/helpers/spacing.dart';
import 'package:campuspay/moderator/features/request_data/ui/data/users_data_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theme/colors.dart';
import '../../../../../core/widgets/custom_text_widget.dart';

class DataUsers extends StatelessWidget {
  final int index;
  const DataUsers({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        height: 40.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: ColorsManager.gray, width: 2)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            horizontalSpace(8),
            CustomTextWidget(
              text: usersDataList[index].id,
              color: ColorsManager.darkBlue,
            ),
            const VerticalDivider(),
            Expanded(
              child: CustomTextWidget(
                text: usersDataList[index].name,
                color: ColorsManager.darkBlue,
              ),
            ),
            const VerticalDivider(),
            Expanded(
              child: CustomTextWidget(
                text: usersDataList[index].email,
                color: ColorsManager.darkBlue,
              ),
            ),
            const VerticalDivider(),
            Expanded(
              child: CustomTextWidget(
                text: usersDataList[index].idNamber,
                color: ColorsManager.darkBlue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
