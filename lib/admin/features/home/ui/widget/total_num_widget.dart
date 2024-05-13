import 'package:campuspay/admin/features/home/ui/widget/container_total_num.dart';
import 'package:campuspay/core/helpers/spacing.dart';
import 'package:flutter/material.dart';

class TotalNumberWidget extends StatelessWidget {
  const TotalNumberWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        verticalSpace(15),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ContainerTotalNum(
              number: "335",
              text: "Total Users",
            ),
            ContainerTotalNum(
              number: "1584",
              text: "Total Transactions",
            )
          ],
        ),
        verticalSpace(15),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ContainerTotalNum(
              number: "335",
              text: "Total use services",
            ),
            ContainerTotalNum(
              number: "35000 L.E",
              text: "Total Cache",
            )
          ],
        )
      ],
    );
  }
}
