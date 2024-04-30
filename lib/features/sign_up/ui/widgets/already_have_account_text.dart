import '../../../../core/helpers/extentions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/routes/routes.dart';

class AlreadyHaveAccountText extends StatelessWidget {
  const AlreadyHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Divider(
                thickness: 0.5,
                color: Colors.grey[400],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                'or ',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontFamily: "Roboto Slab",
                  fontSize: 17,
                ),
              ),
            ),
            Expanded(
              child: Divider(
                thickness: 0.5,
                color: Colors.grey[400],
              ),
            )
          ],
        ),
        verticalSpace(15),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Already have an account?',
              style: TextStyle(
                color: Colors.grey[700],
                fontFamily: "Roboto Slab",
                fontSize: 14.sp,
              ),
            ),
            verticalSpace(4),
            GestureDetector(
              onTap: () {
                context.navigateToReplacement(Routes.loginScreen);
              },
              child: Text(
                '  Sign in',
                style: TextStyle(
                  fontSize: 14.sp,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Agbalumo",
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
