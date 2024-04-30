// import 'package:campuspay/widget/custom_text_widget.dart';
// import 'package:flutter/material.dart';
// import 'package:url_launcher/url_launcher.dart';

// import '../../../core/theme/colors.dart';

// class CollageMailLink extends StatefulWidget {
//   const CollageMailLink({super.key});

//   @override
//   State<CollageMailLink> createState() => _CollageMailLinkState();
// }

// class _CollageMailLinkState extends State<CollageMailLink> {
//   Future<void> _launchURL(String url) async {
//     if (await canLaunch(url)) {
//       await launch(url);
//     } else {
//       throw "Cannot launch URL";
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         const CustomTextWidget(
//           text: "Or you can get it from the",
//           fontWeight: FontWeight.bold,
//         ),
//         TextButton(
//           onPressed: () {
//             _launchURL("https://www.youtube.com");
//           },
//           child: const CustomTextWidget(
//             text: "university website",
//             fontWeight: FontWeight.bold,
//             color: ColorsManager.mainBlue,
//           ),
//         ),
//       ],
//     );
//   }
// }
