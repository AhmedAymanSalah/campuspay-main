import 'package:flutter/material.dart';

class CustomRadioListTitle extends StatelessWidget {
  const CustomRadioListTitle({super.key, this.cubit});

  final cubit;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: RadioListTile(
            contentPadding: EdgeInsets.zero,
            activeColor: Colors.blue,
            title: const Text('Student'),
            value: 'Student',
            groupValue: cubit.type,
            onChanged: (value) {
              cubit.changeRadioList(value);
            },
          ),
        ),
        Expanded(
          child: RadioListTile(
            contentPadding: EdgeInsets.zero,
            activeColor: Colors.blue,
            title: const Text('Donor'),
            value: 'Donor',
            groupValue: cubit.type,
            onChanged: (value) {
              cubit.changeRadioList(value);
            },
          ),
        ),
      ],
    );
  }
}
