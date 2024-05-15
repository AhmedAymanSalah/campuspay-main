// import 'package:campuspay/core/helpers/spacing.dart';
// import 'package:campuspay/core/widgets/app_button.dart';
// import 'package:campuspay/core/widgets/custom_text_form_filed.dart';
// import 'package:flutter/material.dart';
//
// import '../../../../../core/theme/colors.dart';
// import '../../../../../core/widgets/custom_text_widget.dart';
//
// class UpdateServiceScreen extends StatelessWidget {
//   const UpdateServiceScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const CustomTextWidget(
//           text: "Update Service",
//           color: ColorsManager.darkBlue,
//           fontWeight: FontWeight.bold,
//         ),
//         centerTitle: true,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
//         child: Column(
//           children: [
//             verticalSpace(50),
//             const CustomTextFormFiled(
//               hintText: "Service Name..",
//               textInputType: TextInputType.name,
//               titel: "Service Name",
//             ),
//             verticalSpace(15),
//             const CustomTextFormFiled(
//               hintText: "Cost..",
//               textInputType: TextInputType.name,
//               titel: "Cost",
//             ),
//             verticalSpace(15),
//             const CustomTextFormFiled(
//               hintText: "Information..",
//               textInputType: TextInputType.name,
//               titel: "Information",
//             ),
//             const Spacer(),
//             AppTextButton(
//               onPressed: () {
//                 //context.navigateTo(Routes.serviceDoneScreen);
//               },
//               text: "update",
//               buttonColor: ColorsManager.darkBlue,
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
