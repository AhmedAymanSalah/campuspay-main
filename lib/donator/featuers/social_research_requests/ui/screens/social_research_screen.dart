import 'package:flutter/material.dart';
import '../../data/users_data_list.dart';
import '../widget/container_info.dart';
import '../widget/donator_request_titel.dart';
import 'donator_request_info.dart';

class SocialResearchScreen extends StatelessWidget {
  const SocialResearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const DonatorRequestTitel(),
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: donatorRequestDataList.length,
                  itemBuilder: (context, index) => GestureDetector(
                    onTap: () {
                      // Navigate to service detail screen when tapped
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const DonatorRequestInfo(
                              // service: usersDataList[index],
                              ),
                        ),
                      );
                    },
                    child: ContainerData(index: index),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
