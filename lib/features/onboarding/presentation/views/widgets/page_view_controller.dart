import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nike_app/core/utils/app_colors.dart';
import 'package:nike_app/features/onboarding/data/controller/onboarding_controller.dart';
import 'package:nike_app/features/onboarding/data/static/onboarding_static_list_data.dart';

class PageViewController extends StatelessWidget {
  const PageViewController({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnboardingControllerImplementation>(
        builder: (controller) => Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(
                  onboardingList.length,
                  (index) => AnimatedContainer(
                    duration: const Duration(microseconds: 900),
                    width: controller.currentPage == index? 42: 28,
                    height: 5,
                    margin: const EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                      color: controller.currentPage == index? AppColors.kYellowColor: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ],
            ));
  }
}
