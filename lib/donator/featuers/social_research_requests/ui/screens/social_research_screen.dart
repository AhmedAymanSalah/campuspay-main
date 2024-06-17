import 'package:campuspay/donator/featuers/cubit/cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../cubit/states.dart';
import '../widget/container_info.dart';
import '../widget/donator_request_titel.dart';
import 'donator_request_info.dart';

class SocialResearchScreen extends StatelessWidget {
  const SocialResearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BlocProvider(
          create: (BuildContext context) =>DonorCubit()..getAllRequest(),
          child: BlocConsumer<DonorCubit,DonorStates>(
            listener: (BuildContext context, state) {  },
            builder: (BuildContext context, Object? state) {
              var cubit=DonorCubit.get(context);
              if(state is GetAllRequestDonorSuccessStates) {
                return SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const DonatorRequestTitel(),
                      ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: cubit.getAllRequestModel.length,
                        itemBuilder: (context, index) => GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>  DonatorRequestInfo(serviceId: cubit.getAllRequestModel[index].id!,),
                              ),
                            );
                          },
                          child: ContainerData(model: cubit.getAllRequestModel[index]),
                        ),
                      ),
                    ],
                  ),
                ),
              );
              }else if (state is GetAllRequestDonorErrorStates) {
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
