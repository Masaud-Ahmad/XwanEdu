import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavigationController extends GetxController {
  var currentIndex = 0.obs;

  void changePage(int index) {
    currentIndex.value = index;
  }

  void openScanner() {
    // Scanner navigation will be added here
    debugPrint('Scanner opened');
  }
}
