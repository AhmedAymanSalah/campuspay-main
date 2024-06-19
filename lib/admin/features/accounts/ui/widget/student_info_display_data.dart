import 'package:campuspay/admin/features/accounts/presentation/manage/cubit/cubit.dart';
import 'package:campuspay/admin/features/accounts/presentation/manage/cubit/states.dart';
import 'package:campuspay/core/helpers/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/widgets/display_data_container.dart';

class StudentInfoDisplayData extends StatelessWidget {
  const StudentInfoDisplayData({super.key, required this.userId});

  final String userId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context)=>AccountCubit()..getDetailsAccounts(userId: userId),
      child: BlocConsumer<AccountCubit,AccountStates>(
        listener: (BuildContext context, state) {  },
        builder: (BuildContext context, Object? state) {
          var cubit=AccountCubit().get(context);
          if(state is GetDetailsAccountsSuccessStates) {
            return Column(
            children: [
               DisplayDataContainer(
                titel: "Name",
                prefixIcon: const Icon(Icons.person_2_outlined),
                text: cubit.getDetailAccountModel[0].fullName,
              ),
              verticalSpace(15),
               DisplayDataContainer(
                titel: "Email",
                prefixIcon: const Icon(Icons.email_outlined),
                text: cubit.getDetailAccountModel[0].email,
              ),
              // verticalSpace(15),
              // const DisplayDataContainer(
              //   titel: "Password",
              //   prefixIcon: Icon(Icons.person_2_outlined),
              //   text: "1234567898",
              // ),
              verticalSpace(15),
               DisplayDataContainer(
                titel: "ID_Number",
                prefixIcon: const Icon(Icons.person_2_outlined),
                text: cubit.getDetailAccountModel[0].ssn,
              ),
              // verticalSpace(15),
              // DisplayDataContainer(
              //   titel: "Mobile_number",
              //   prefixIcon: Icon(
              //     Icons.person_2_outlined,
              //     size: 20.sp,
              //   ),
              //   text: "010231456987",
              // ),
              // verticalSpace(15),
              // const DisplayDataContainer(
              //   titel: "City",
              //   prefixIcon: Icon(Icons.person_2_outlined),
              //   text: "Giza",
              // ),
              // verticalSpace(15),
              // const DisplayDataContainer(
              //   titel: "State",
              //   prefixIcon: Icon(Icons.person_2_outlined),
              //   text: "Student",
              // ),
              // verticalSpace(15),
              // const DisplayDataContainer(
              //   titel: "Job",
              //   prefixIcon: Icon(Icons.person_2_outlined),
              //   text: "Student",
              // ),
              // verticalSpace(15),
              // const DisplayDataContainer(
              //   titel: "zip_Code",
              //   prefixIcon: Icon(Icons.person_2_outlined),
              //   text: "58462",
              // ),
            ],
          );
          }else if(state is GetDetailsAccountsErrorStates){
            return Center(
              child: Text(state.error,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 25
              ),
              ),
            );
          }
          else{
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
