// // ignore_for_file: file_names

// import 'package:campuspay/core/helpers/app_images.dart';
// import 'package:campuspay/core/helpers/spacing.dart';
// import 'package:campuspay/core/theme/colors.dart';
// import 'package:campuspay/core/widgets/custom_text_widget.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// import '../data/model/card_model.dart';

// class CaredsScreen extends StatefulWidget {
//   const CaredsScreen({super.key});

//   @override
//   State<CaredsScreen> createState() => _CaredsScreenState();
// }

// class _CaredsScreenState extends State<CaredsScreen> {
//   // List to store card data
//   List<CardData> cards = [];

//   // Method to add a new card to the list
//   void addCard(String cardNumber, String cardHolder, String cvv) {
//     setState(() {
//       cards.add(CardData(
//         cardNumber: cardNumber,
//         cardHolder: cardHolder,
//         cvv: cvv,
//       ));
//     });
//   }

//   void deleteCard(int index) {
//     setState(() {
//       cards.removeAt(index);
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       extendBodyBehindAppBar: true,
//       appBar: AppBar(
//         elevation: 0,
//         backgroundColor: Colors.transparent,
//       ),
//       body: Container(
//         height: double.infinity.h,
//         width: double.infinity.h,
//         decoration: const BoxDecoration(
//             image: DecorationImage(
//                 image: AssetImage(Assets.imagesBackgrond), fit: BoxFit.cover)),
//         child: Padding(
//           padding: EdgeInsets.only(
//             top: 80.h,
//           ),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: [
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: CustomTextWidget(
//                   text: "How would you like to top up?",
//                   color: ColorsManager.lightGray,
//                   fontSize: 18.sp,
//                 ),
//               ),
//               verticalSpace(50),
//               Expanded(
//                 child: Container(
//                   //height: double.infinity,
//                   width: double.infinity,
//                   decoration: const BoxDecoration(
//                       color: Colors.white,
//                       borderRadius:
//                           BorderRadius.vertical(top: Radius.circular(25))),
//                   child: Padding(
//                     padding:
//                         EdgeInsets.symmetric(vertical: 25.h, horizontal: 25.h),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         ContainerAddNewCard(
//                           onCardAdded: addCard,
//                         ),
//                         verticalSpace(15),
//                         CustomTextWidget(
//                           text: "Bank Transfer",
//                           textAlign: TextAlign.start,
//                           fontSize: 12.sp,
//                           color: ColorsManager.gray,
//                         ),
//                         Expanded(
//                           child: ListView.builder(
//                             itemCount: cards.length,
//                             itemBuilder: (context, index) {
//                               final card = cards[index];
//                               return CardItem(
//                                 card: card,
//                                 onDelete: () => deleteCard(index),
//                               );
//                             },
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
