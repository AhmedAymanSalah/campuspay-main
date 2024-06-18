// // ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// import '../../../core/helpers/app_images.dart';
// import '../../../core/theme/colors.dart';
// import '../../../core/widgets/custom_text_widget.dart';
// import '../data/model/card_model.dart';

// class CardWidget extends StatelessWidget {
//   final CardData card;
//   final Widget? trailing;
//   void Function()? onPressed;

//   CardWidget({
//     super.key,
//     required this.card,
//     this.trailing,
//     this.onPressed,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       child: ListTile(
//         leading: Image.asset(Assets.imagesBank),
//         title: CustomTextWidget(
//           text: card.cardNumber,
//           fontSize: 14.sp,
//           color: ColorsManager.darkBlue,
//         ),
//         subtitle: CustomTextWidget(
//           text: card.cardHolder,
//           fontSize: 14.sp,
//           color: ColorsManager.darkBlue,
//         ),
//         trailing: trailing,
//       ),
//     );
//   }
// }
