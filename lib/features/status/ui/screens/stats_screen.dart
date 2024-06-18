// import 'package:campuspay/core/helpers/spacing.dart';
// import 'package:campuspay/core/theme/colors.dart';
// import 'package:campuspay/core/widgets/custom_text_widget.dart';
// import 'package:campuspay/features/status/ui/screens/widget/text_top_spending_and_iamge.dart';
// import 'package:campuspay/features/status/ui/screens/widget/top_spending_list.dart';
// import 'package:flutter/material.dart';

// class StatsScreen extends StatelessWidget {
//   const StatsScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         appBar: AppBar(
//           automaticallyImplyLeading: false,
//           centerTitle: true,
//           title: const CustomTextWidget(
//             text: "Statistics",
//             color: ColorsManager.darkBlue,
//             fontSize: 20,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         body: Padding(
//           padding: const EdgeInsets.all(12),
//           child: ListView(
//             physics: const BouncingScrollPhysics(),
//             children: [
//               const TextAndImageTopSpending(),
//               verticalSpace(15),
//               const TopSpendingList(),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
