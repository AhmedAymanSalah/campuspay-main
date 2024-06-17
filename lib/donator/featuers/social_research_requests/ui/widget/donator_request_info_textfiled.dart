import 'package:campuspay/core/helpers/spacing.dart';
import 'package:flutter/material.dart';
import '../../../../../core/widgets/display_data_container.dart';
import '../../../../../moderator/features/request_data/ui/data/get_details_request.dart';

class DonatorRequestInfoTextFiled extends StatelessWidget {
  const DonatorRequestInfoTextFiled({super.key, required this.model});
  final GetDetailsRequestModel model;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         DisplayDataContainer(
          titel: "Father is Dead",
          prefixIcon: const Icon(Icons.person_2_outlined),
          text: '${model.fatherIsDead}',
        ),
        verticalSpace(20),
         DisplayDataContainer(
          titel: "Father Job",
          prefixIcon: const Icon(Icons.person_2_outlined),
          text: model.fatherJob,
        ),
        verticalSpace(20),
         DisplayDataContainer(
          titel: "Father Incom",
          prefixIcon: const Icon(Icons.person_2_outlined),
          text: "${model.fatherIncome}",
        ),
        verticalSpace(20),
         DisplayDataContainer(
          titel: "Number of Family Member",
          prefixIcon: const Icon(Icons.person_2_outlined),
          text: "${model.numberOfFamilyMembers}",
        ),
        verticalSpace(20),
         DisplayDataContainer(
          titel: "Number of Family Member in Education",
          prefixIcon: const Icon(Icons.person_2_outlined),
          text: "${model.numberOfFamilyMembersInEdu}",
        ),
        verticalSpace(20),
      ],
    );
  }
}
