import '../../../../core/helpers/extentions.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/widgets/app_button.dart';
import '../../../../core/widgets/custom_text_widget.dart';
import '../../data/models/onboarding_model.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../../core/routes/routes.dart';

import '../../data/models/list_data.dart';

// ignore: must_be_immutable
class BuildItemOnBoarding extends StatefulWidget {
  BuildItemOnBoarding({super.key, this.index});
  int? index;

  @override
  State<BuildItemOnBoarding> createState() => _BuildItemOnBoardingState();
}

PageController onBoardingController = PageController();

List<OnBoardingModel> model = onBoardingList;

class _BuildItemOnBoardingState extends State<BuildItemOnBoarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // app name (text)
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20.h),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomTextWidget(
                      color: ColorsManager.darkGrey,
                      text: "Campus",
                      fontWeight: FontWeight.bold,
                      fontSize: 26,
                      fontFamily: "Agbalumo",
                    ),
                    CustomTextWidget(
                      text: "pay",
                      color: ColorsManager.mainBlue,
                      fontWeight: FontWeight.bold,
                      fontSize: 26,
                      fontFamily: "Agbalumo",
                    ),
                  ],
                ),
              ),
              // photo
              verticalSpace(25),

              Container(
                height: 350.h,
                width: double.infinity.w,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(model[widget.index!].image),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              //text from to line

              Center(
                child: CustomTextWidget(
                  text: model[widget.index!].body,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.bold,
                  textAlign: TextAlign.center,
                ),
              ),
              verticalSpace(20),
              SmoothPageIndicator(
                controller: onBoardingController,
                count: onBoardingList.length,
                axisDirection: Axis.horizontal,
                effect: const SlideEffect(
                  spacing: 8.0,
                  radius: 10.0,
                  dotWidth: 14.0,
                  dotHeight: 16.0,
                  paintStyle: PaintingStyle.fill,
                  strokeWidth: 1.5,
                  dotColor: Colors.black,
                  activeDotColor: Colors.blue,
                ),
              ),
              // // 2 button
              verticalSpace(50),

              AppTextButton(
                text: model[widget.index!].textButton,
                onPressed: () {
                  if (widget.index == 0) {
                    setState(() {
                      onBoardingController.nextPage(
                          duration: const Duration(seconds: 1),
                          curve: Curves.linearToEaseOut);
                    });
                  } else {
                    context.navigateToReplacement(Routes.attentionPage);
                  }
                },
              ),
              AppTextButton(
                text: "Sign In",
                onPressed: () {
                  context.navigateTo(Routes.loginScreen);
                },
                buttonColor: Colors.white,
                textColor: ColorsManager.mainBlue,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
//   void submitOnBoarding(BuildContext context) {
//     context.navigateToReplacement(Routes.loginScreen);
//     CacheHelper().saveData(
//       key: Routes.onBoardingScreen,
//       value: true,
//     );
//   }
// }




