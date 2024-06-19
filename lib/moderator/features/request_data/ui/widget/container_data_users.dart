import 'package:campuspay/core/helpers/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theme/colors.dart';
import '../../../../../core/widgets/custom_text_widget.dart';
import '../data/get_all_request.dart';

class DataUsers extends StatelessWidget {
 // final int index;
  final GetAllRequestModel model;
  const DataUsers({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        height: 50.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: ColorsManager.gray, width: 2)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            horizontalSpace(8),
            CustomTextWidget(
              text: '${model.id}',
              color: ColorsManager.darkBlue,
            ),
            const VerticalDivider(),
            Expanded(
              child: CustomTextWidget(
                text: model.name!,
                color: ColorsManager.darkBlue,
              ),
            ),
            const VerticalDivider(),
            Expanded(
              child: CustomTextWidget(
                text: model.type!,
                color: ColorsManager.darkBlue,
              ),
            ),
            // const VerticalDivider(),
            // Expanded(
            //   child: CustomTextWidget(
            //     text: usersDataList[index].idNamber,
            //     color: ColorsManager.darkBlue,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
