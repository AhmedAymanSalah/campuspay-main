import 'package:campuspay/core/helpers/spacing.dart';
import 'package:campuspay/core/theme/colors.dart';
import 'package:campuspay/core/widgets/custom_text_widget.dart';
import 'package:campuspay/donator/featuers/social_research_requests/ui/widget/donator_requrest_info_botten.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../widget/donator_request_info_textfiled.dart';


class DonatorRequestInfo extends StatelessWidget {
  const DonatorRequestInfo({super.key});
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
            const DonatorRequestInfoTextFiled(),
            verticalSpace(15),
            const DonatorRequestInfoBotton(),
          ],
        ),
      ),
    );
  }
}
