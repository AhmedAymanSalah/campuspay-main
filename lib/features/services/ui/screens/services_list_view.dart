import 'package:campuspay/admin/features/admin_service/presentation/manage/cubit/cubit.dart';
import 'package:campuspay/admin/features/admin_service/presentation/manage/cubit/states.dart';
import 'package:campuspay/core/theme/colors.dart';
import 'package:campuspay/core/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../pay_screens/ui/screens/pay_screen.dart';
import '../widgets/builld_item_services_screen.dart';

class ServicesScreen extends StatelessWidget {
  const ServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context)=>ServiceCubit()..getService(),
      child: BlocConsumer<ServiceCubit,ServiceStates>(
        listener: (BuildContext context, state) {  },
        builder: (BuildContext context, Object? state) {
          var cubit=ServiceCubit().get(context);
          return Scaffold(
            appBar: AppBar(
              automaticallyImplyLeading: false,
              elevation: 0,
              backgroundColor: Colors.transparent,
              title: const CustomTextWidget(
                text: "Services",
                color: ColorsManager.darkBlue,
                fontWeight: FontWeight.bold,
              ),
              centerTitle: true,
            ),
            body:state is GetServiceSuccessStates? ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: cubit.getServiceModel.length,
              itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PayScreen(
                        serviceId: cubit.getServiceModel[index].id,
                      ),
                    ),
                  );
                },
                child: BuildItemServicesScreen(model: cubit.getServiceModel[index],),
              ),
            ):const Center(child: CircularProgressIndicator()),
          );
        },
      ),
    );
  }
}
