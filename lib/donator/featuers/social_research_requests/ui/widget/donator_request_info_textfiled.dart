import 'package:campuspay/core/helpers/spacing.dart';
import 'package:flutter/material.dart';
import '../../../../../core/widgets/display_data_container.dart';

class DonatorRequestInfoTextFiled extends StatelessWidget {
  const DonatorRequestInfoTextFiled({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const DisplayDataContainer(
          titel: "Father is Dead",
          prefixIcon: Icon(Icons.person_2_outlined),
          text: "True or False",
        ),
        verticalSpace(20),
        const DisplayDataContainer(
          titel: "Father Job",
          prefixIcon: Icon(Icons.person_2_outlined),
          text: "Job",
        ),
        verticalSpace(20),
        const DisplayDataContainer(
          titel: "Father Incom",
          prefixIcon: Icon(Icons.person_2_outlined),
          text: "Incom",
        ),
        verticalSpace(20),
        const DisplayDataContainer(
          titel: "Number of Family Member",
          prefixIcon: Icon(Icons.person_2_outlined),
          text: "Number of Family Member",
        ),
        verticalSpace(20),
        const DisplayDataContainer(
          titel: "Number of Family Member in Education",
          prefixIcon: Icon(Icons.person_2_outlined),
          text: "Number of Family Member in Education",
        ),
        verticalSpace(20),
      ],
    );
  }
}
