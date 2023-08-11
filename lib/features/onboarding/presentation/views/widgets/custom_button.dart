
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:nike_app/core/utils/app_fonts.dart';
import 'package:nike_app/core/utils/app_router.dart';
import 'package:nike_app/features/onboarding/data/controller/onboarding_controller.dart';
import 'package:nike_app/features/onboarding/data/static/onboarding_static_list_data.dart';

class CustomButton extends GetView<OnboardingControllerImplementation> {
  const CustomButton(
      {Key? key, required this.text, required this.textColor, required this.backgroundColor});

  final String text;
  final Color textColor;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        controller.next();
        // if (controller.currentPage == onboardingList.length) {
        //   GoRouter.of(context).push(AppRouter.kSignInView);
        // }
      },
      child: Container(
        padding: const EdgeInsets.all(16),
        width: double.infinity,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(13),
          color: backgroundColor,
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 14,
            color: textColor,
            fontWeight: FontWeight.w600,
            fontFamily: AppFonts.kRaleway,
          ),
        ),
      ),
    );
  }
}
