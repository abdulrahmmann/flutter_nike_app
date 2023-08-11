
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class OnboardingController extends GetxController {

  void next();

  void onPageChange(int index);

}

class OnboardingControllerImplementation extends OnboardingController {
  int currentPage = 0;
  late PageController pageController;
  @override
  void next() {
    currentPage++;
    pageController.animateToPage(
        currentPage,
        duration: const Duration(microseconds: 900),
        curve: Curves.easeIn
    );
  }

  @override
  void onPageChange(int index) {
    currentPage = index;
    update();
  }

  @override
  void onInit() {
    super.onInit();
    pageController = PageController();
  }

}