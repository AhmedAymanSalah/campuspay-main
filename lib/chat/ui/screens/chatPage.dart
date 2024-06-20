import 'package:campuspay/chat/model/message.dart';
import 'package:campuspay/chat/ui/widget/chatBuble.dart';
import 'package:campuspay/core/theme/colors.dart';
import 'package:campuspay/core/utils/constant.dart';
import 'package:campuspay/core/widgets/custom_text_widget.dart';
import 'package:campuspay/features/profile/data/presentation/manage/cubit/cubit.dart';
import 'package:campuspay/features/profile/data/presentation/manage/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChatPage extends StatelessWidget {
  static String id = 'ChatPage';

  final _controller = ScrollController();
  final TextEditingController controller = TextEditingController();

  final CollectionReference messages = 
    FirebaseFirestore.instance.collection(kMessagesCollections);

  ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    var email = ModalRoute.of(context)!.settings.arguments as String?;

    return BlocProvider(
      create: (BuildContext context)=>ProfileCubit()..getProfile(),
      child: BlocConsumer<ProfileCubit,ProfileStates>(
        listener: (BuildContext context, state) {},
        builder: (BuildContext context, Object? state) {
          var cubit=ProfileCubit().get(context);
          if(cubit.profileModel !=null) {
            return StreamBuilder<QuerySnapshot>(
      stream: messages.orderBy(kCreatedAt, descending: true).snapshots(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<Message> messagesList = snapshot.data!.docs.map((doc) {
            return Message.fromJson(doc);
          }).toList();

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
                      return messagesList[index].id == email
                          ? ChatBuble(message: messagesList[index])
                          : ChatBubleForFriend(message: messagesList[index]);
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          controller: controller,
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
                        icon: const Icon(Icons.send, color: kPrimaryColor),
                        onPressed: () {
                          if (controller.text.isNotEmpty) {
                            messages.add({
                              kMessage: controller.text,
                              kCreatedAt: DateTime.now(),
                              'id': email,
                            });
                            controller.clear();
                            _controller.animateTo(
                              0,
                              duration: const Duration(milliseconds: 500),
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
              child: Text(
                'Loading ...',
                style: TextStyle(
                  color: Colors.amberAccent,
                  fontSize: 30,
                ),
              ),
            ),
          );
        }
      },
    );
          }else{
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
