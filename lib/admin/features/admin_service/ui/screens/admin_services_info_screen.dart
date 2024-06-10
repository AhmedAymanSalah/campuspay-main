import 'package:campuspay/admin/features/admin_service/presentation/manage/cubit/cubit.dart';
import 'package:campuspay/admin/features/admin_service/presentation/manage/cubit/states.dart';
import 'package:campuspay/admin/features/layout/presentation/view/layout_view.dart';
import 'package:campuspay/core/theme/colors.dart';
import 'package:campuspay/core/utils/components.dart';
import 'package:campuspay/core/utils/constant.dart';
import 'package:campuspay/core/widgets/custom_text_form_filed.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:campuspay/core/widgets/app_button.dart';
import 'package:campuspay/features/services/data/models/services_model.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/widgets/custom_text_widget.dart';
import 'admin_services_list_view.dart';

class AdminServicresInfoScreen extends StatefulWidget {
  final ServicesModel service;
  final int serviceId;

  const AdminServicresInfoScreen({
    super.key,
    required this.service,
    required this.serviceId,
  });

  @override
  State<AdminServicresInfoScreen> createState() =>
      _AdminServicresInfoScreenState();
}

class _AdminServicresInfoScreenState extends State<AdminServicresInfoScreen> {
  var serviceNameController = TextEditingController();

  var costController = TextEditingController();

  var yearController = TextEditingController();

  var collageNameController = TextEditingController();

  var typeController = TextEditingController();

  var descController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) =>
          ServiceCubit()..getDetails(serviceId: widget.serviceId),
      child: BlocConsumer<ServiceCubit, ServiceStates>(
        listener: (BuildContext context, state) {
          if (state is DeleteServiceSuccessStates) {
            showToast(text: 'Delete Success', color: Colors.green);
            navigateTo(context, const AdminLayoutView());
          }
          if (state is DeleteServiceErrorStates) {
            showToast(text: state.error, color: Colors.red);
          }
          if (state is UpdateServiceSuccessStates) {
            showToast(text: 'Update Success', color: Colors.green);
            navigateTo(context, const AdminLayoutView());
          }
          if (state is UpdateServiceErrorStates) {
            showToast(text: state.error, color: Colors.red);
          }
        },
        builder: (BuildContext context, Object? state) {
          var cubit = ServiceCubit().get(context).getDetailsModel;
          if (cubit != null) {
            serviceNameController.text = cubit.name ?? '';
            costController.text =
                cubit.cost?.toString() ?? ''; // Convert double to String
            yearController.text =
                cubit.squadYear?.toString() ?? ''; // Convert int to String
            collageNameController.text = cubit.collegeName ?? '';
            typeController.text = cubit.type ?? '';
            descController.text = cubit.description ?? '';
          }
          return Scaffold(
            appBar: AppBar(
              elevation: 0,
              centerTitle: true,
              title: const CustomTextWidget(
                text: "Service Info",
                color: ColorsManager.darkBlue,
                fontWeight: FontWeight.bold,
              ),
            ),
            body: state is GetDetailsSuccessStates
                ? Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 25.w, vertical: 50.h),
                    child: SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          verticalSpace(5),
                          Row(
                            children: [
                              CircleAvatar(
                                child: Image.asset(
                                  widget.service.image,
                                ),
                              ),
                              horizontalSpace(8),
                              CustomTextWidget(
                                text: widget.service.title,
                                color: ColorsManager.darkBlue,
                                fontWeight: FontWeight.bold,
                              ),
                            ],
                          ),
                          verticalSpace(40),
                          CustomTextFormFiled(
                            titel: "Service Name",
                            hintText: cubit!.name,
                            textInputType: TextInputType.text,
                            controller: serviceNameController,
                          ),
                          verticalSpace(20),
                          CustomTextFormFiled(
                            titel: "Cost",
                            hintText: '${cubit.cost}',
                            textInputType: TextInputType.text,
                            controller: costController,
                          ),
                          verticalSpace(20),
                          CustomTextFormFiled(
                            titel: "Squad Year",
                            hintText: '${cubit.squadYear}',
                            textInputType: TextInputType.number,
                            controller: yearController,
                          ),
                          verticalSpace(20),
                          CustomTextFormFiled(
                            titel: "College Name",
                            hintText: cubit.collegeName,
                            textInputType: TextInputType.text,
                            controller: collageNameController,
                          ),
                          verticalSpace(20),
                          CustomTextFormFiled(
                            titel: "Type",
                            hintText: cubit.type,
                            textInputType: TextInputType.text,
                            controller: typeController,
                          ),
                          verticalSpace(20),
                          CustomTextFormFiled(
                            maxLines: 7,
                            titel: "Description",
                            hintText: cubit.description ?? '',
                            textInputType: TextInputType.text,
                            controller: descController ,
                          ),
                          verticalSpace(50),
                          Column(
                            children: [
                            state is! UpdateServiceLoadingStates?  AppTextButton(
                                text: "Update Service",
                                buttonColor: ColorsManager.darkBlue,
                                onPressed: () {
                                  ServiceCubit().get(context).updateService(
                                        serviceId: widget.serviceId,
                                        name: serviceNameController.text,
                                        type: typeController.text,
                                        squadYear: 200,
                                        collegeName: collageNameController.text,
                                        cost: 10,
                                        desc: descController.text,
                                        context: context,
                                      );
                                },
                              ) : const Center(child: CircularProgressIndicator()),
                              AppTextButton(
                                text: "Delete Service",
                                buttonColor: ColorsManager.red,
                                onPressed: () {
                                  buildShowDialog(
                                    image: 'assets/images/warning.png',
                                    name: 'Are you sure?',
                                    context: context,
                                    cancel: true,
                                    function: () {
                                      ServiceCubit().get(context).deleteService(
                                          serviceId: widget.serviceId);
                                    },
                                  );
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                : const Center(child: CircularProgressIndicator()),
          );
        },
      ),
    );
  }
}
