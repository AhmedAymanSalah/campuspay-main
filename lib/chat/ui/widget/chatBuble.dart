import 'package:campuspay/chat/model/message.dart';
import 'package:campuspay/core/helpers/spacing.dart';
import 'package:campuspay/core/widgets/custom_text_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:intl/intl.dart';

import 'package:campuspay/core/theme/colors.dart';

class ChatBubble extends StatelessWidget {
  final Message message;
  final bool isUserMessage;

  const ChatBubble({
    Key? key,
    required this.message,
    required this.isUserMessage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String formattedTime = DateFormat('hh:mm a').format(message.createdAt);

    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: isUserMessage ? ColorsManager.darkBlue : Colors.grey[300],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTextWidget(
                text: message.id ?? 'Unknown',
                fontSize: 13.sp,
                fontWeight: FontWeight.bold,
                color: isUserMessage ? Colors.white70 : Colors.black54,
              ),
              verticalSpace(2),
              CustomTextWidget(
                text: message.content,
                color: isUserMessage ? Colors.white : Colors.black,
                fontSize: 14,
                maxLines: 100,
                fontWeight: FontWeight.bold,
              ),
            ],
          ),
        ),
        verticalSpace(15),
        Positioned(
          bottom: 0,
          right: 12,
          // child: Container(
          //   padding: EdgeInsets.symmetric(horizontal: 8, vertical: 1),
          //   decoration: BoxDecoration(
          //     color: isUserMessage ? Colors.blueGrey : Colors.grey[300],
          //     borderRadius: BorderRadius.only(
          //       topLeft: Radius.circular(10),
          //       bottomRight: Radius.circular(20),
          //     ),
          //   ),
          child: CustomTextWidget(
            text: formattedTime,
            fontSize: 13.sp,
            color: isUserMessage ? Colors.white70 : Colors.black54,
          ),
        ),
        // ),
      ],
    );
  }
}
