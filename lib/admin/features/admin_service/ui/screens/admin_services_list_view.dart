import 'package:campuspay/core/helpers/extentions.dart';
import 'package:campuspay/core/theme/colors.dart';
import 'package:campuspay/core/widgets/app_button.dart';
import 'package:campuspay/core/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';
import '../../../../../core/routes/routes.dart';
import '../../data/models/services_list_data.dart';
import 'admin_services_info_screen.dart';
import '../widgets/builld_item_services_screen.dart';

class AdminServicesScreen extends StatelessWidget {
  const AdminServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const CustomTextWidget(
          text: "Current Services",
          color: ColorsManager.darkBlue,
          fontWeight: FontWeight.bold,
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: servicesList.length,
              itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  // Navigate to service detail screen when tapped

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AdminServicresInfoScreen(
                        service: servicesList[index],
                      ),
                    ),
                  );
                },
                child: BuildItemServicesScreen(index: index),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: AppTextButton(
              onPressed: () {
                context.navigateTo(Routes.createServiceScreen);
              },
              text: "Create Service",
              buttonColor: ColorsManager.darkBlue,
            ),
          ),
        ],
      ),
    );
  }
}
