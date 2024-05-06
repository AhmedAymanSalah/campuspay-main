import 'package:flutter/material.dart';

Future buildShowLoading(context) async {
  return await showDialog(
      context: context,
      builder: (context) {
        return const AlertDialog(
          title: Text('Please Wait'),
          content: SizedBox(
            height: 50,
            child: Center(child: CircularProgressIndicator()),
          ),
        );
      });
}