import 'package:campuspay/core/helpers/app_images.dart';
import 'package:flutter/material.dart';

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
        title: Text(
          'Abdullah Khaled',
          style: TextStyle(
            color: Color(0xFF111827),
            fontSize: 16,
            fontFamily: 'Alexandria',
            fontWeight: FontWeight.w700,
            height: 0.09,
            letterSpacing: 0.30,
          ),
        ),
        subtitle: Text(
          'ak***@fayoum.edu.eg',
          style: TextStyle(
            color: Color(0xFF9CA3AF),
            fontSize: 14,
            fontFamily: 'Alexandria',
            fontWeight: FontWeight.w400,
            height: 0.10,
          ),
        ),
      ),
    );
  }
}
