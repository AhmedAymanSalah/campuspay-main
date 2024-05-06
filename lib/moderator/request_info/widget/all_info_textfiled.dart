import 'package:campuspay/core/helpers/spacing.dart';
import 'package:campuspay/core/widgets/custom_text_form_filed.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'display_data_container.dart';
import 'reson_request_textfiled.dart';

class AllInfoTextFiled extends StatelessWidget {
  const AllInfoTextFiled({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const DisplayDataContainer(
          titel: "Name",
          prefixIcon: Icon(Icons.person_2_outlined),
          text: "ahmed Ayman",
        ),
        verticalSpace(15),
        const DisplayDataContainer(
          titel: "Email",
          prefixIcon: Icon(Icons.email_outlined),
          text: "aa3901@fayoum.edu.eg",
        ),
        verticalSpace(15),
        const DisplayDataContainer(
          titel: "ID_Number",
          prefixIcon: Icon(Icons.person_2_outlined),
          text: "3020805210123456",
        ),
        verticalSpace(15),
        CustomTextFormFiled(
          hintText: "Mobile_number..",
          textInputType: TextInputType.number,
          titel: "Mobile_number",
          prefixIcon: Icon(
            Icons.person_2_outlined,
            size: 20.h,
          ),
        ),
        verticalSpace(15),
        const DisplayDataContainer(
          titel: "City",
          prefixIcon: Icon(Icons.person_2_outlined),
          text: "Giza",
        ),
        verticalSpace(15),
        const DisplayDataContainer(
          titel: "State",
          prefixIcon: Icon(Icons.person_2_outlined),
          text: "Student",
        ),
        verticalSpace(15),
        const DisplayDataContainer(
          titel: "Job",
          prefixIcon: Icon(Icons.person_2_outlined),
          text: "Student",
        ),
        verticalSpace(15),
        const DisplayDataContainer(
          titel: "zip_Code",
          prefixIcon: Icon(Icons.person_2_outlined),
          text: "58462",
        ),
        verticalSpace(15),
        const ReasonRequestTextFiled(
          content:
              "ahewnkjscjkb skbkjdbjvk akbkjbsvj lkaknlknv lafjkaj alflkbajba kabfjabjbk akbfbabjabjkbjablja akbfjbajbjabjabjbjabjkbjkbjksbjsj skb fjkb",
          title: "Reason request",
        ),
        verticalSpace(20),
        const DisplayDataContainer(
          titel: "Service name",
          prefixIcon: Icon(Icons.person_2_outlined),
          text: "Service name",
        ),
        verticalSpace(20),
        const DisplayDataContainer(
          titel: "Amount",
          prefixIcon: Icon(Icons.person_2_outlined),
          text: "15",
        ),
      ],
    );
  }
}
