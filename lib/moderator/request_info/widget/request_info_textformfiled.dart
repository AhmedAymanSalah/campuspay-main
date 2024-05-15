import 'package:campuspay/core/helpers/extentions.dart';
import 'package:campuspay/core/helpers/spacing.dart';
import 'package:flutter/material.dart';
import '../../../../core/routes/routes.dart';
import '../../../../core/theme/colors.dart';
import '../../../../core/widgets/app_button.dart';
import '../../../core/widgets/display_data_container.dart';
import 'reson_request_textfiled.dart';

class RequestInfoTextFiled extends StatelessWidget {
  const RequestInfoTextFiled({super.key});

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
        verticalSpace(20),
        const ReasonRequestTextFiled(
          content:
              "ahewnkjscjkb skbkjdbjvk akbkjbsvj lkaknlknv lafjkaj alflkbajba kabfjabjbk akbfbabjabjkbjablja akbfjbajbjabjabjbjabjkbjkbjksbjsj skb fjkb",
          title: "Reason request",
        ),
        verticalSpace(20),
        AppTextButton(
          onPressed: () {
            context.navigateTo(Routes.allInfoScreen);
          },
          text: "See all info",
          buttonColor: ColorsManager.darkBlue,
        ),
      ],
    );
  }
}
