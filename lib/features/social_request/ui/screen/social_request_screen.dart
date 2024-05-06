import 'package:flutter/material.dart';

import '../widget/social_request_textfiled.dart';

class SocialRequestScreen extends StatelessWidget {
  const SocialRequestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              SocialRequestTextFiled(),
            ],
          ),
        ),
      ),
    );
  }
}
