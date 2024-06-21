import 'package:campuspay/core/theme/colors.dart';
import 'package:campuspay/core/widgets/custom_text_widget.dart';
import 'package:campuspay/moderator/cubit/cubit.dart';
import 'package:campuspay/moderator/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:campuspay/core/helpers/spacing.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../request_info/screens/request_info.dart';
import '../widget/container_data_users.dart';
import '../widget/container_titel_info.dart';
import '../widget/request_titel.dart';
import '../widget/search.dart';

class RequestDataScreen extends StatelessWidget {
  const RequestDataScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BlocProvider(
          create: (BuildContext context) => ModeratorCubit()..getAllRequest(),
          child: BlocConsumer<ModeratorCubit, ModeratorStates>(
            listener: (BuildContext context, state) {},
            builder: (BuildContext context, ModeratorStates state) {
              var cubit = ModeratorCubit.get(context);
              if (state is GetAllRequestSuccessStates) {
                return SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        const RequestTitel(),
                        Search(
                          num: cubit.getAllRequestModel.length,
                        ),
                        verticalSpace(20),
                        const TitelData(),
                        verticalSpace(20),
                        cubit.getAllRequestModel.isNotEmpty
                            ? ListView.builder(
                                physics: const NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                itemCount: cubit.getAllRequestModel.length,
                                itemBuilder: (context, index) =>
                                    GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => RequestInfo(
                                          serviceId: cubit
                                              .getAllRequestModel[index].id!,
                                        ),
                                      ),
                                    );
                                  },
                                  child: DataUsers(
                                      model: cubit.getAllRequestModel[index]),
                                ),
                              )
                            : const Center(
                                child: CustomTextWidget(
                                text: "No Request Found",
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: ColorsManager.darkBlue,
                              )),
                      ],
                    ),
                  ),
                );
              } else if (state is GetAllRequestErrorStates) {
                return Text(
                  state.error,
                  style: const TextStyle(fontSize: 20),
                );
              } else {
                return const Center(child: CircularProgressIndicator());
              }
            },
          ),
        ),
      ),
    );
  }
}
