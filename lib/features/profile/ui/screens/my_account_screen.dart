// import 'package:campuspay/core/helpers/spacing.dart';
// import 'package:campuspay/features/profile/data/models/profile_model.dart';
// import 'package:campuspay/features/profile/ui/widgets/data_of_profile.dart';
// import 'package:campuspay/features/profile/ui/widgets/image_profile.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
//
// import '../../../../core/theme/colors.dart';
// import '../../../../core/widgets/custom_text_widget.dart';
//
// class MyAccountScreen extends StatefulWidget {
//   const MyAccountScreen({super.key, required this.getProfileModel});
//   final GetProfileModel getProfileModel;
//
//   @override
//   State<MyAccountScreen> createState() => _MyAccountScreenState();
// }
//
// class _MyAccountScreenState extends State<MyAccountScreen> {
//   final TextEditingController nameController = TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         appBar: AppBar(
//           centerTitle: true,
//           title: const CustomTextWidget(
//             text: "Profile",
//             color: ColorsManager.darkBlue,
//             fontWeight: FontWeight.bold,
//             fontSize: 20,
//           ),
//         ),
//         body: SingleChildScrollView(
//           child: Padding(
//             padding: EdgeInsets.symmetric(vertical: 60.h, horizontal: 16),
//             child: Column(
//               children: [
//                 verticalSpace(16),
//                 const ImageProfile(),
//                 verticalSpace(30),
//                  DataProfileFormField(cubit: null,),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
