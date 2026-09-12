import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xwanedu/feature/authentication/view/login/login.dart';

class Onboarding extends GetxController {
  static Onboarding get instance => Get.find();
  PageController pageController = PageController();

  RxInt currentPage = 0.obs;

  void updateCurrentPage(int index) {
    currentPage.value = index;
  }

  void nextPage() {
    if (currentPage.value < 2) {
      pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      Get.offAll(() => const LoginScreen());
    }
  }

  void skipOnboarding() {
    currentPage.value = 2;
    // Navigate to the next screen or perform any other action
    pageController.jumpToPage(currentPage.value);
  }

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }
}
