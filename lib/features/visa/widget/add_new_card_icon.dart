// // ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
// import 'package:campuspay/features/visa/screens/top_up_with_bank.dart';
// import 'package:campuspay/features/visa/widget/card_widget.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// import 'package:campuspay/core/helpers/spacing.dart';
// import 'package:campuspay/core/theme/colors.dart';
// import 'package:campuspay/core/widgets/custom_text_widget.dart';

// import '../data/model/card_model.dart';
// import '../screens/add_new_card_screen.dart';

// class ContainerAddNewCard extends StatelessWidget {
//   final Function(String, String, String) onCardAdded;

//   const ContainerAddNewCard({
//     super.key,
//     required this.onCardAdded,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         CustomTextWidget(
//           text: "Credit/Debit Card",
//           color: ColorsManager.gray,
//           fontSize: 12.sp,
//         ),
//         Container(
//           width: double.infinity,
//           height: 64.h,
//           decoration: BoxDecoration(
//             color: Colors.grey.shade100,
//             borderRadius: BorderRadius.circular(15),
//           ),
//           child: Row(
//             children: [
//               Container(
//                 decoration: BoxDecoration(
//                     color: ColorsManager.mainBlue,
//                     borderRadius: BorderRadius.circular(10)),
//                 child: IconButton(
//                   color: ColorsManager.darkBlue,
//                   icon: const Icon(Icons.add),
//                   onPressed: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) =>
//                             AddNewCard(onCardAdded: onCardAdded),
//                       ),
//                     );
//                   },
//                 ),
//               ),
//               horizontalSpace(15),
//               CustomTextWidget(
//                 text: "Add New Card..",
//                 fontSize: 14.sp,
//                 fontWeight: FontWeight.bold,
//                 color: ColorsManager.darkBlue,
//               )
//             ],
//           ),
//         )
//       ],
//     );
//   }
// }

// class CardItem extends StatelessWidget {
//   final CardData card;
//   void Function()? onTap;
//   final VoidCallback onDelete;

//   CardItem({
//     super.key,
//     required this.card,
//     this.onTap,
//     required this.onDelete,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//         onTap: () {
//           Navigator.push(
//             context,
//             MaterialPageRoute(builder: (context) => TopUpWithBank(card: card)),
//           );
//         },
//         child: CardWidget(
//           card: card,
//           onPressed: onDelete,
//           trailing: IconButton(
//             icon: const Icon(
//               Icons.delete,
//               color: ColorsManager.darkBlue,
//             ),
//             onPressed: onDelete,
//           ),
//         ));
//   }
// }
