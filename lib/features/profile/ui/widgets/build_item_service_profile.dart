import 'package:campuspay/core/theme/styles.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class BuildItemServiceProfile extends StatelessWidget {
  const BuildItemServiceProfile({
    super.key,
    required this.title,
    required this.onPressed,
    required this.image,
  });

  final String title;
  final Function() onPressed;
  final String image;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: 72,
        decoration: const BoxDecoration(color: Colors.white),
        child: ListTile(
          leading: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(60),
              color: const Color(0xFFF0F5FF),
            ),
            child: Image(
              image: AssetImage(image),
            ),
          ),
          title: Text(
            title,
            style: TextStyles.font16Color827Medium,
          ),
          trailing: IconButton(
            onPressed: onPressed,
            icon: const Icon(
              IconlyLight.arrow_right_2,
              color: Colors.grey,
            ),
          ),
        ),
      ),
    );
  }
}
