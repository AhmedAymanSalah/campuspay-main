import 'package:campuspay/core/theme/colors.dart';
import 'package:campuspay/core/widgets/custom_text_widget.dart';
import 'package:campuspay/features/login/ui/screen/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class LogOut extends StatelessWidget {
  const LogOut({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=>const LoginScreen()));
      },
      child: Container(
        height: 60.h,
        width: 170.h,
        decoration: BoxDecoration(
          color: Colors.redAccent,
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
          ],
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CustomTextWidget(
              text: "LogOut",
              color: ColorsManager.darkBlue,
              fontWeight: FontWeight.bold,
            ),
            Icon(
              Icons.logout,
              color: Colors.orange,
            ),
          ],
        ),
      ),
    );
  }
}
