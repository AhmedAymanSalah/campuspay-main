import 'package:campuspay/core/theme/colors.dart';
import 'package:campuspay/core/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';
import '../../data/models/services_list_data.dart';
import 'services_code_screen.dart';
import '../widgets/builld_item_services_screen.dart';

class ServicesScreen extends StatelessWidget {
  const ServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const CustomTextWidget(
          text: "Services",
          color: ColorsManager.darkBlue,
          fontWeight: FontWeight.bold,
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: servicesList.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            // Navigate to service detail screen when tapped

            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => PayServicesSceen(
                  service: servicesList[index],
                ),
              ),
            );
          },
          child: BuildItemServicesScreen(index: index),
        ),
      ),
    );
  }
}
