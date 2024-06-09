import 'package:campuspay/core/helpers/spacing.dart';
import 'package:campuspay/core/utils/constant.dart';
import 'package:campuspay/core/widgets/custom_text_widget.dart';
import 'package:campuspay/features/home/presentation/manage/cubit/cubit.dart';
import 'package:campuspay/features/home/presentation/manage/cubit/states.dart';
import 'package:campuspay/features/social_request/ui/screen/submit_sccessed_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/theme/colors.dart';
import '../../../../core/widgets/app_button.dart';
import '../../../../core/widgets/custom_text_form_filed.dart';

class SocialRequestTextFiled extends StatefulWidget {
  const SocialRequestTextFiled({super.key});

  @override
  State<SocialRequestTextFiled> createState() => _SocialRequestTextFiledState();
}

class _SocialRequestTextFiledState extends State<SocialRequestTextFiled> {
  var residentInFamilyController = TextEditingController();

  var fatherNameController = TextEditingController();

  var fatherDeadController = TextEditingController();

  var fatherJobController = TextEditingController();

  var fatherStateController = TextEditingController();

  var fatherIncomeController = TextEditingController();

  var numOfFamilyController = TextEditingController();

  var numOfFamilyInEduController = TextEditingController();

  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => HomeCubit(),
      child: BlocConsumer<HomeCubit, HomeStates>(
        listener: (BuildContext context, state) {
          if(state is SocialRequestSuccessStates){
            showToast(text: "Send request success", color: Colors.green);
            navigateTo(context, const SubmitSccessScreen());
          }else if(state is SocialRequestErrorStates){
            showToast(text: "Send request success", color: Colors.red);
          }else{
            showToast(text: "Invalid boolean ${residentInFamilyController.text}", color: Colors.red);
          }
        },
        builder: (BuildContext context, Object? state) {
          var cubit = HomeCubit().get(context);
          return Form(
            key: formKey,
            child: Column(
              children: [
                const CustomTextWidget(
                  text: "Social Request",
                  color: ColorsManager.mainBlue,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
                verticalSpace(25),
                CustomTextFormFiled(
                  controller: residentInFamilyController,
                  hintText: "true Or fales",
                  textInputType: TextInputType.name,
                  titel: "Is Resident In Family Home ",
                  prefixIcon: const Icon(
                    Icons.person_2_outlined,
                    size: 22,
                  ),
                ),
                verticalSpace(25),
                CustomTextFormFiled(
                  controller: fatherNameController,
                  hintText: "Name..",
                  textInputType: TextInputType.name,
                  titel: "Your father's name..",
                  prefixIcon: const Icon(
                    Icons.person_2_outlined,
                    size: 22,
                  ),
                ),
                verticalSpace(15),
                CustomTextFormFiled(
                  controller: fatherDeadController,
                  hintText: "true Or fales",
                  textInputType: TextInputType.name,
                  titel: "your father dead",
                  prefixIcon: const Icon(
                    Icons.person_2_outlined,
                    size: 20,
                  ),
                ),
                verticalSpace(15),
                CustomTextFormFiled(
                  controller: fatherJobController,
                  hintText: "Job..",
                  textInputType: TextInputType.text,
                  titel: "father's job",
                  prefixIcon: const Icon(
                    Icons.person_2_outlined,
                    size: 20,
                  ),
                ),
                verticalSpace(20),
                CustomTextFormFiled(
                  controller: fatherStateController,
                  hintText: "State..",
                  textInputType: TextInputType.text,
                  titel: "father's state",
                  prefixIcon: const Icon(
                    Icons.person_2_outlined,
                    size: 20,
                  ),
                ),
                verticalSpace(20),
                CustomTextFormFiled(
                  controller: fatherIncomeController,
                  hintText: "Incom..",
                  textInputType: TextInputType.number,
                  titel: "father's Incom",
                  prefixIcon: const Icon(
                    Icons.person_2_outlined,
                    size: 20,
                  ),
                ),
                verticalSpace(20),
                CustomTextFormFiled(
                  controller: numOfFamilyController,
                  hintText: "Number..",
                  textInputType: TextInputType.number,
                  titel: "Num of your family members",
                  prefixIcon: const Icon(
                    Icons.person_2_outlined,
                    size: 20,
                  ),
                ),
                verticalSpace(20),
                CustomTextFormFiled(
                  controller: numOfFamilyInEduController,
                  hintText: "Number..",
                  textInputType: TextInputType.number,
                  titel: "Number of your family members in Education",
                  prefixIcon: const Icon(
                    Icons.person_2_outlined,
                    size: 20,
                  ),
                ),
                verticalSpace(20),
               state is! SocialRequestLoadingStates? AppTextButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      cubit.socialRequest(
                        isResidentInFamilyHome:  bool.parse(residentInFamilyController.text),
                        fatherName: fatherNameController.text,
                        fatherIsDead: bool.parse(fatherDeadController.text),
                        fatherJob: fatherJobController.text,
                        fatherState: fatherStateController.text,
                        fatherIncome: fatherIncomeController.text,
                        numberOfFamilyMembers: int.parse(numOfFamilyController.text),
                        numberOfFamilyMembersInEdu:
                            int.parse(numOfFamilyInEduController.text),
                        serviceId: 1,
                      );
                    }
                  },
                  text: "Submit",
                  buttonColor: ColorsManager.darkBlue,
                ):const Center(child: CircularProgressIndicator()),
              ],
            ),
          );
        },
      ),
    );
  }
}
