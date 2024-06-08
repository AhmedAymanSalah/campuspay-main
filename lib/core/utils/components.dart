import 'package:flutter/material.dart';

Future<void> buildShowDialog({
  context,
  required String image,
  required String name,
  required Function function,
  bool cancel = false,
}) =>
    showDialog(
      context: context,
      builder: (context) =>
          AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            backgroundColor: Theme
                .of(context)
                .scaffoldBackgroundColor,
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  image,
                  height: 60,
                  width: 60,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(name),
                const SizedBox(
                  height: 10,
                ),
                cancel
                    ? Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('Cancel'),
                    ),
                    TextButton(
                      onPressed: () {
                        function();
                      },
                      child: const Text('OK'),
                    ),
                  ],
                )
                    : Center(
                  child: TextButton(
                    onPressed: () {
                      function();
                    },
                    child: const Text('OK'),
                  ),
                ),
              ],
            ),
          ),
    );

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