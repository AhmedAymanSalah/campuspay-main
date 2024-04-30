import 'package:campuspay/core/theme/colors.dart';
import 'package:campuspay/core/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomPaymentButton extends StatelessWidget {
  final double amountToPay;
  final VoidCallback onTap;

  const CustomPaymentButton({
    super.key,
    required this.amountToPay,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity.h,
        height: 55.0.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: ColorsManager.green,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 16.0),
              child: CustomTextWidget(
                text: "Pay",
                color: Colors.white,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(right: 16.0),
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: CustomTextWidget(
                text: "\$$amountToPay",
                fontWeight: FontWeight.bold,
                fontSize: 14.sp,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
