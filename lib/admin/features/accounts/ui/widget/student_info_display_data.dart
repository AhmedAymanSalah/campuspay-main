import 'package:campuspay/core/helpers/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/widgets/display_data_container.dart';

class StudentInfoDisplayData extends StatelessWidget {
  const StudentInfoDisplayData({super.key});

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
          titel: "Password",
          prefixIcon: Icon(Icons.person_2_outlined),
          text: "1234567898",
        ),
        verticalSpace(15),
        const DisplayDataContainer(
          titel: "ID_Number",
          prefixIcon: Icon(Icons.person_2_outlined),
          text: "3020805210123456",
        ),
        verticalSpace(15),
        DisplayDataContainer(
          titel: "Mobile_number",
          prefixIcon: Icon(
            Icons.person_2_outlined,
            size: 20.sp,
          ),
          text: "010231456987",
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
      ],
    );
  }
}
