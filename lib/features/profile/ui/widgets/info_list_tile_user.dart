import 'package:campuspay/core/helpers/app_images.dart';
import 'package:flutter/material.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/widgets/custom_text_widget.dart';

class InfoListTileUser extends StatelessWidget {
  const InfoListTileUser({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      height: 88,
      decoration: const BoxDecoration(color: Colors.white),
      child: const ListTile(
        leading: CircleAvatar(
          radius: 38,
          backgroundImage: AssetImage(
            Assets.imagesPngStudent,
          ),
        ),
        title: CustomTextWidget(
          text: "Ahmed Ayman",
          color: ColorsManager.gray,
          fontWeight: FontWeight.bold,
          fontSize: 14,
        ),
        subtitle: CustomTextWidget(
          text: "aa****@fayoum.edu.eg",
          color: ColorsManager.mainBlue,
          fontWeight: FontWeight.bold,
          fontSize: 14,
        ),
      ),
    );
  }
}
