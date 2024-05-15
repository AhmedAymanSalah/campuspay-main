import 'package:campuspay/admin/features/admin_service/presentation/manage/cubit/cubit.dart';
import 'package:campuspay/admin/features/admin_service/presentation/manage/cubit/states.dart';
import 'package:campuspay/core/helpers/extentions.dart';
import 'package:campuspay/core/theme/colors.dart';
import 'package:campuspay/core/utils/constant.dart';
import 'package:campuspay/core/widgets/app_button.dart';
import 'package:campuspay/core/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/routes/routes.dart';
import '../../data/models/items/services_list_data.dart';
import 'admin_services_info_screen.dart';
import '../widgets/builld_item_services_screen.dart';
import 'create_service_screen.dart';

class AdminServicesScreen extends StatelessWidget {
  const AdminServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ServiceCubit,ServiceStates>(
      listener: (BuildContext context, state) {  },
      builder: (BuildContext context, Object? state) {
        var cubit=ServiceCubit().get(context);
        return Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            elevation: 0,
            backgroundColor: Colors.transparent,
            title: const CustomTextWidget(
              text: "Current Services",
              color: ColorsManager.darkBlue,
              fontWeight: FontWeight.bold,
            ),
            centerTitle: true,
          ),
          body: Column(
            children: [
              state is GetServiceSuccessStates ?Expanded(
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: cubit.getServiceModel.name!.length,
                  itemBuilder: (context, index) => GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AdminServicresInfoScreen(
                            service: servicesList[index],
                          ),
                        ),
                      );
                    },
                    child: BuildItemServicesScreen(model: cubit.getServiceModel,),
                  ),
                ),
              ) : const Center(child: CircularProgressIndicator()),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: AppTextButton(
                  onPressed: () {
                    navigateTo(context, const CreateServiceScreen());
                  },
                  text: "Create Service",
                  buttonColor: ColorsManager.darkBlue,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
