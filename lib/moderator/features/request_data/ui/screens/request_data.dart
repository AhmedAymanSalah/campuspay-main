import 'package:flutter/material.dart';
import 'package:campuspay/core/helpers/spacing.dart';
import 'package:campuspay/moderator/features/request_data/ui/data/users_data_list.dart';
import '../../../../request_info/screens/request_info.dart';
import '../widget/container_data_users.dart';
import '../widget/container_titel_info.dart';
import '../widget/request_titel.dart';
import '../widget/search.dart';

class RequestDataScreen extends StatelessWidget {
  const RequestDataScreen({super.key});

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
                const RequestTitel(),
                const Search(),
                verticalSpace(20),
                const TitelData(),
                verticalSpace(20),
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: usersDataList.length,
                  itemBuilder: (context, index) => GestureDetector(
                    onTap: () {
                      // Navigate to service detail screen when tapped
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const RequestInfo(
                            // service: usersDataList[index],
                          ),
                        ),
                      );
                    },
                    child: DataUsers(index: index),
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
