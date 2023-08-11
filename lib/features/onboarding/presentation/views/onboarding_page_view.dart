
import 'package:flutter/material.dart';
import 'package:nike_app/core/utils/app_colors.dart';
import 'widgets/onboarding_page_view_body.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.kPrimaryColor,
        body: OnBoardingPageViewBody(),
      ),
    );
  }
}
