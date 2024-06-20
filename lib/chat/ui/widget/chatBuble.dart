

import 'package:campuspay/chat/model/message.dart';
import 'package:campuspay/core/utils/constant.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class ChatBuble extends StatelessWidget {
  const ChatBuble({
    Key? key,
    required this.message,
  }) : super(key: key);
  
  final Message message;

  @override
  Widget build(BuildContext context) {
    String formattedTime = DateFormat('hh:mm a').format(message.createdAt);

    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        padding: const EdgeInsets.only(left: 16, top: 16, bottom: 16, right: 16),
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(32),
            topRight: Radius.circular(32),
            bottomRight: Radius.circular(32),
          ),
          color: kPrimaryColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(message.content),
            SizedBox(height: 5),
            Text(
              formattedTime,
              style: TextStyle(
                color: Colors.white70,
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}



class ChatBubleForFriend extends StatelessWidget {
  const ChatBubleForFriend({
    super.key,
    required this.message,
  });
  
  final Message message;

  @override
  Widget build(BuildContext context) {
    String formattedTime = DateFormat('hh:mm a').format(message.createdAt);

    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        padding: const EdgeInsets.only(left: 16, top: 16, bottom: 16, right: 16),
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(32),
            topRight: Radius.circular(32),
            bottomLeft: Radius.circular(32),
          ),
          color: Color(0xff006D84),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              message.content,
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
            SizedBox(height: 5),
            Text(
              formattedTime,
              style: TextStyle(
                color: Colors.white70,
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}