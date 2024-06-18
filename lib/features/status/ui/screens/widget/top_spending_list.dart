// import 'package:campuspay/core/helpers/extentions.dart';
// import 'package:campuspay/core/helpers/spacing.dart';
// import 'package:campuspay/core/theme/colors.dart';
// import 'package:campuspay/core/widgets/custom_text_widget.dart';
// import 'package:campuspay/features/status/ui/screens/widget/build_item_top_spendiong.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// import '../../../../../core/routes/routes.dart';

// class TopSpendingList extends StatelessWidget {
//   const TopSpendingList({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16),
//       child: Column(
//         children: [
//           Row(
//             children: [
//               Expanded(
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     CustomTextWidget(
//                       text: "Top Spending",
//                       fontWeight: FontWeight.bold,
//                       fontSize: 16.sp,
//                       color: ColorsManager.darkBlue,
//                     ),
//                     GestureDetector(
//                       onTap: () {
//                         context.navigateTo(Routes.topSpendingScreen);
//                       },
//                       child: CustomTextWidget(
//                         text: "View all",
//                         fontWeight: FontWeight.bold,
//                         fontSize: 16.sp,
//                         color: ColorsManager.mainBlue,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//           verticalSpace(15),
//           BuildItemTopSpending(),
//         ],
//       ),
//     );
//   }
// }
