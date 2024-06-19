// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:campuspay/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:campuspay/core/widgets/custom_text_widget.dart';

import '../../../../../moderator/features/request_data/ui/data/get_all_request.dart';

class ContainerData extends StatelessWidget {
  final GetAllRequestModel model;
  const ContainerData({
    super.key,
    required this.model,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
          height: 60.h,
          decoration: const BoxDecoration(
            color: ColorsManager.mainBlue,
            borderRadius: BorderRadius.all(
              Radius.circular(16),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomTextWidget(text: model.name!),
                  CustomTextWidget(text: '${model.cost!}'),
                ]),
          )),
    );
  }
}
