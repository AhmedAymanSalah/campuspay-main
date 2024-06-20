import 'package:campuspay/chat/ui/widget/chatBuble.dart';
import 'package:campuspay/core/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';import 'package:campuspay/core/widgets/custom_text_widget.dart';
import 'package:campuspay/chat/model/message.dart';
import 'package:campuspay/core/theme/colors.dart';
import 'package:campuspay/features/profile/data/presentation/manage/cubit/cubit.dart';
import 'package:campuspay/features/profile/data/presentation/manage/cubit/states.dart';

class ChatPage extends StatelessWidget {
  static const String id = 'ChatPage';

  final ScrollController _controller = ScrollController();
  final TextEditingController _textController = TextEditingController();

  final CollectionReference messages =
      FirebaseFirestore.instance.collection('messages');

  ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    var email = ModalRoute.of(context)!.settings.arguments as String?;

    return BlocProvider(
      create: (BuildContext context) => ProfileCubit()..getProfile(),
      child: BlocConsumer<ProfileCubit, ProfileStates>(
        listener: (BuildContext context, state) {},
        builder: (BuildContext context, Object? state) {
          var cubit = ProfileCubit().get(context);
          if (cubit.profileModel != null) {
            return StreamBuilder<QuerySnapshot>(
              stream:
                  messages.orderBy('createdAt', descending: true).snapshots(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  List<Message> messagesList = snapshot.data!.docs
                      .map((doc) => Message.fromJson(doc))
                      .toList();

                  return Scaffold(
                    appBar: AppBar(
                      backgroundColor: ColorsManager.darkBlue,
                      centerTitle: true,
                      title: const CustomTextWidget(
                        text: "Chat",
                        color: ColorsManager.white,
                      ),
                    ),
                    body: Column(
                      children: [
                        Expanded(
                          child: ListView.builder(
                            reverse: true,
                            controller: _controller,
                            itemCount: messagesList.length,
                            itemBuilder: (context, index) {
                              // Determine if the message is from the current user or other users
                              bool isUserMessage =
                                  messagesList[index].id == cubit.profileModel!.email!;

                              return Align(
                                alignment: isUserMessage
                                    ? Alignment.centerRight
                                    : Alignment.centerLeft,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 8, horizontal: 16),
                                  child: ChatBubble(
                                    message: messagesList[index],
                                    isUserMessage: isUserMessage,
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Expanded(
                                child: TextField(
                                  controller: _textController,
                                  decoration: InputDecoration(
                                    hintText: 'Message',
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(16),
                                      borderSide: const BorderSide(
                                        color: kPrimaryColor,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              IconButton(
                                icon: Icon(Icons.send, color: kPrimaryColor),
                                onPressed: () {
                                  if (_textController.text.isNotEmpty) {
                                    messages.add({
                                      'message': _textController.text,
                                      'createdAt': DateTime.now(),
                                      'id': cubit.profileModel!.email!,
                                    });
                                    _textController.clear();
                                    _controller.animateTo(
                                      0,
                                      duration:
                                          const Duration(milliseconds: 500),
                                      curve: Curves.easeIn,
                                    );
                                  }
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                } else {
                  return const Scaffold(
                    body: Center(
                      child: CircularProgressIndicator(),
                    ),
                  );
                }
              },
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
