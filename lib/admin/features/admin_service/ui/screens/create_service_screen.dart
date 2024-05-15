import 'package:campuspay/admin/features/admin_service/presentation/manage/cubit/cubit.dart';
import 'package:campuspay/admin/features/admin_service/presentation/manage/cubit/states.dart';
import 'package:campuspay/admin/features/admin_service/ui/screens/service_done_screen.dart';
import 'package:campuspay/core/helpers/extentions.dart';
import 'package:campuspay/core/helpers/spacing.dart';
import 'package:campuspay/core/utils/constant.dart';
import 'package:campuspay/core/widgets/app_button.dart';
import 'package:campuspay/core/widgets/custom_text_form_filed.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/routes/routes.dart';
import '../../../../../core/theme/colors.dart';
import '../../../../../core/widgets/custom_text_widget.dart';

class CreateServiceScreen extends StatefulWidget {
  const CreateServiceScreen({super.key});

  @override
  State<CreateServiceScreen> createState() => _CreateServiceScreenState();
}

class _CreateServiceScreenState extends State<CreateServiceScreen> {
  var serviceName = TextEditingController();

  var serviceDesc = TextEditingController();

  var serviceType = TextEditingController();

  var serviceSquadYear = TextEditingController();

  var serviceCollegeName = TextEditingController();

  var serviceCost = TextEditingController();
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ServiceCubit, ServiceStates>(
      listener: (BuildContext context, state) {
        if(state is CreateServiceSuccessStates){
          showToast(text: 'Added Successfully', color: Colors.green);
          navigateTo(context, const ServiceDoneScreen());
        }
        if(state is CreateServiceErrorStates){
          showToast(text: state.error, color: Colors.red);
        }
      },
      builder: (BuildContext context, Object? state) {
        var cubit = ServiceCubit().get(context);
        return Form(
          key: formKey,
          child: Scaffold(
            appBar: AppBar(
              title: const CustomTextWidget(
                text: "Create Service",
                color: ColorsManager.darkBlue,
                fontWeight: FontWeight.bold,
              ),
              centerTitle: true,
            ),
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    verticalSpace(10),
                    CustomTextFormFiled(
                      controller: serviceName,
                      hintText: "Service Name..",
                      textInputType: TextInputType.name,
                      titel: "Service Name",
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please Enter Service Name';
                        }
                      },
                    ),
                    verticalSpace(15),
                    CustomTextFormFiled(
                      controller: serviceCost,
                      hintText: "Cost..",
                      textInputType: TextInputType.name,
                      titel: "Cost",
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please Enter Service Cost';
                        }
                      },
                    ),
                    verticalSpace(15),
                    CustomTextFormFiled(
                      controller: serviceType,
                      hintText: "Type ..",
                      textInputType: TextInputType.name,
                      titel: "Type ",
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please Enter Service Type';
                        }
                      },
                    ),
                    CustomTextFormFiled(
                      controller: serviceSquadYear,
                      hintText: "Squad Year..",
                      textInputType: TextInputType.number,
                      titel: "SquadYear",
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please Enter Service Year';
                        }
                      },
                    ),
                    verticalSpace(15),
                    CustomTextFormFiled(
                      controller: serviceCollegeName,
                      hintText: "College Name..",
                      textInputType: TextInputType.text,
                      titel: "College Name",
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please Enter Service College Name';
                        }
                      },
                    ),
                    verticalSpace(15),
                    CustomTextFormFiled(
                      controller: serviceDesc,
                      maxLines: 7,
                      hintText: "Description..",
                      textInputType: TextInputType.name,
                      titel: "Description",
                    ),
                    verticalSpace(30),
                    AppTextButton(
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          cubit.createService(
                            name: serviceName.text,
                            type: serviceType.text,
                            squadYear: int.parse(serviceSquadYear.text),
                            collegeName: serviceCollegeName.text,
                            cost: int.parse(serviceCost.text),
                            context: context,
                          );

                        }
                      },
                      text: "Create",
                      buttonColor: ColorsManager.darkBlue,
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
