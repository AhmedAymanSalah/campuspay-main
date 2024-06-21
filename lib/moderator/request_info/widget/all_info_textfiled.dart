import 'package:campuspay/core/helpers/spacing.dart';
import 'package:campuspay/moderator/features/request_data/ui/data/get_details_request.dart';
import 'package:flutter/material.dart';
import '../../../core/widgets/display_data_container.dart';

class AllInfoTextFiled extends StatelessWidget {
  const AllInfoTextFiled({super.key, required this.model});
  final GetDetailsRequestModel model;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DisplayDataContainer(
          titel: "Name",
          prefixIcon: const Icon(Icons.person_2_outlined),
          text: model.fullName ?? "",
        ),
        verticalSpace(15),
        DisplayDataContainer(
          titel: "Father Name",
          prefixIcon: const Icon(Icons.email_outlined),
          text: model.fatherName ?? "",
        ),
        verticalSpace(15),
        DisplayDataContainer(
          titel: "Father Income",
          prefixIcon: const Icon(Icons.person_2_outlined),
          text: model.fatherIncome ?? "",
        ),
        verticalSpace(15),
        DisplayDataContainer(
          titel: "City",
          prefixIcon: const Icon(Icons.person_2_outlined),
          text: model.city ?? "",
        ),
        verticalSpace(15),
        DisplayDataContainer(
          titel: "Father State",
          prefixIcon: const Icon(Icons.person_2_outlined),
          text: model.fatherState ?? "",
        ),
        verticalSpace(15),
        DisplayDataContainer(
          titel: "Father Job",
          prefixIcon: const Icon(Icons.person_2_outlined),
          text: model.fatherJob ?? "",
        ),
        verticalSpace(15),
        DisplayDataContainer(
          titel: "Number Of Family Members",
          prefixIcon: const Icon(Icons.person_2_outlined),
          text: '${model.numberOfFamilyMembers}',
        ),
        verticalSpace(15),
        DisplayDataContainer(
          titel: "Number Of Family Members In Edu",
          prefixIcon: const Icon(Icons.person_2_outlined),
          text: '${model.numberOfFamilyMembersInEdu}',
        ),
        verticalSpace(15),
        verticalSpace(20),
        DisplayDataContainer(
          titel: "College name",
          prefixIcon: const Icon(Icons.person_2_outlined),
          text: model.collegeName ?? "",
        ),
        verticalSpace(20),
        DisplayDataContainer(
          titel: "Amount",
          prefixIcon: const Icon(Icons.person_2_outlined),
          text: "${model.cost}",
        ),
      ],
    );
  }
}
