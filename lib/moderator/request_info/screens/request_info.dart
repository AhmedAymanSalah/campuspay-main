import 'package:campuspay/core/helpers/spacing.dart';
import 'package:campuspay/core/theme/colors.dart';
import 'package:campuspay/core/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widget/request_info_bottons.dart';
import '../widget/request_info_textformfiled.dart';

class RequestInfo extends StatelessWidget {
  const RequestInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const CustomTextWidget(
          text: "Requset Info",
          color: ColorsManager.darkBlue,
          fontWeight: FontWeight.bold,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            const RequestInfoTextFiled(),
            verticalSpace(15),
            const RequestInfoBotton(),
          ],
        ),
      ),
    );
  }
}
