// ignore_for_file: library_private_types_in_public_api, avoid_print

import 'package:campuspay/core/helpers/spacing.dart';
import 'package:campuspay/core/theme/colors.dart';
import 'package:campuspay/core/widgets/app_button.dart';
import 'package:campuspay/core/widgets/custom_text_widget.dart';
import 'package:campuspay/features/profile/data/presentation/manage/cubit/cubit.dart';
import 'package:campuspay/features/profile/data/presentation/manage/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeedbackPage extends StatefulWidget {
  const FeedbackPage({super.key});

  @override
  _FeedbackPageState createState() => _FeedbackPageState();
}

class _FeedbackPageState extends State<FeedbackPage> {
  double _rating = 0.0;
  var formKey=GlobalKey<FormState>();
  final TextEditingController _feedbackController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) =>ProfileCubit(),
      child: BlocConsumer<ProfileCubit,ProfileStates>(
        listener: (BuildContext context, state) {
          if(state is AddFeedbackSuccessStates){
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: CustomTextWidget(
                  text: "Feedback submitted! Thank you.",
                  fontSize: 12,
                  color: ColorsManager.white,
                ),
              ),
            );
          }else if(state is AddFeedbackErrorStates){
            ScaffoldMessenger.of(context).showSnackBar(
               SnackBar(
                content: CustomTextWidget(
                  text: state.error,
                  fontSize: 12,
                  color: ColorsManager.white,
                ),
              ),
            );
          }
        },
        builder: (BuildContext context, Object? state) {
          return Form(
            key: formKey,
            child: Scaffold(
              appBar: AppBar(
                title: const CustomTextWidget(
                  text: "Feedback",
                  color: ColorsManager.darkBlue,
                  fontWeight: FontWeight.bold,
                ),
              ),
              body: Padding(
                padding: const EdgeInsets.all(16.0),
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      verticalSpace(100),
                      const CustomTextWidget(
                        text: "How was your experience?",
                        fontWeight: FontWeight.bold,
                        color: ColorsManager.gray,
                      ),
                      verticalSpace(15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // Rating stars
                          for (int i = 1; i <= 5; i++)
                            IconButton(
                              icon: Icon(
                                i <= _rating ? Icons.star : Icons.star_border,
                                color: Colors.orange,
                              ),
                              onPressed: () {
                                setState(
                                      () {
                                    _rating = i.toDouble();
                                  },
                                );
                              },
                            ),
                        ],
                      ),
                      verticalSpace(20),
                      TextFormField(
                        controller: _feedbackController,
                        validator: (v){
                          if(v!.isEmpty){
                            return 'Please enter feedback';
                          }return null;
                        },
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: ColorsManager.darkBlue,
                              width: 1.3,
                            ),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: ColorsManager.mainBlue,
                              width: 1.3,
                            ),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          labelText: 'Enter your feedback here',
                          labelStyle: const TextStyle(fontFamily: "Roboto Slab"),
                          border: const OutlineInputBorder(),
                        ),
                        maxLines: 7,
                      ),
                      verticalSpace(50),
                      AppTextButton(
                        buttonColor: ColorsManager.darkBlue,
                        text: "Submit",
                        onPressed: () {
                          if(formKey.currentState!.validate()){
                            ProfileCubit().get(context).addFeedback(feedback: _feedbackController.text);
                            String feedbackText = _feedbackController.text;
                            // Implement your feedback submission logic here
                            // For demonstration purposes, let's print the feedback and rating
                            print('Feedback: $feedbackText, Rating: $_rating');
                            // Show a snackbar or navigate to a thank you page
                          }

                        },
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    _feedbackController.dispose();
    super.dispose();
  }
}
