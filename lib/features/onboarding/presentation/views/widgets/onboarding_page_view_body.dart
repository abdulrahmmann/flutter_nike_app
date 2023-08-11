import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nike_app/core/utils/app_colors.dart';
import 'package:nike_app/core/utils/app_styles.dart';
import 'package:nike_app/features/onboarding/data/controller/onboarding_controller.dart';
import 'package:nike_app/features/onboarding/data/static/onboarding_static_list_data.dart';
import 'custom_button.dart';
import 'page_view_controller.dart';

class OnBoardingPageViewBody extends GetView<OnboardingControllerImplementation> {
  const OnBoardingPageViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    Get.put(OnboardingControllerImplementation());
    return Column(
      children: [
        SizedBox(
          height: height * 0.8, // Adjust the height as needed
          child: PageView.builder(
              controller : controller.pageController,
            onPageChanged: (val) {
              controller.onPageChange(val);
            },
            itemCount: onboardingList.length,
            itemBuilder: (context, i) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16), // Add horizontal padding
              child: Column( // wrap with SingleChildScrollView .
                children: [
                  SizedBox(height: height * 0.07),
                  Image.asset(
                    onboardingList[i].image!,
                    fit: BoxFit.fitWidth,
                    width: 339.98,
                    height: 339.95,
                  ),
                  Container(
                    width: double.infinity,
                    height: 166,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/vector2.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: height * 0.025),
                        Text(
                          onboardingList[i].title!,
                          style: AppStyles.textStyle34,
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: height * 0.018),
                        Text(
                          onboardingList[i].content!,
                          style: AppStyles.textStyle16,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  // SizedBox(height: height * 0.025),
                  // custom button
                ],
              ),
            ),
          ),
        ),
        Column(
          children: [
            // page view controller.
            const PageViewController(),

            SizedBox(height: height*.05,),

            // custom button
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: CustomButton(
                text: 'Next',
                backgroundColor: Colors.white,
                textColor: AppColors.kGBlackColor1,
              ),
            ),
          ],
        ),
      ],
    );
  }
}


