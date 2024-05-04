import 'package:campuspay/core/theme/colors.dart';
import 'package:campuspay/core/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';

class SettingsTile extends StatelessWidget {
  final Color color;
  final IconData icon;
  final String title;
  final VoidCallback onTap;

  const SettingsTile({
    super.key,
    required this.color ,
    required this.icon,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: color,
            ),
            child: Icon(
              icon,
              color: Colors.white,
            ),
          ),
          const SizedBox(width: 10),
          CustomTextWidget(
            text: title,
            fontWeight: FontWeight.bold,
            color: ColorsManager.darkBlue,
          ),
          const Spacer(),
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
                color: ColorsManager.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: const [
                  BoxShadow(
                      offset: Offset(5, 5),
                      blurRadius: 10,
                      spreadRadius: 1,
                      color: ColorsManager.white),
                  BoxShadow(
                      offset: Offset(-5, -5),
                      blurRadius: 10,
                      spreadRadius: 1,
                      color: Colors.grey),
                ]),
            child: const Icon(
              Icons.arrow_forward_ios_rounded,
              color: Colors.orange,
            ),
          )
        ],
      ),
    );
  }
}
