import 'package:flutter/material.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/state_manager.dart';
import 'package:xwanedu/constant/images.dart';
import 'package:xwanedu/constant/text_constant.dart';
import 'package:xwanedu/feature/authentication/view/onboardingscreen/widgets/onboardingbuttons.dart';
import 'package:xwanedu/feature/authentication/view/onboardingscreen/widgets/onboardingpage.dart';
import 'package:xwanedu/feature/authentication/viewmodel/onboarding/onboarding.dart';

class Onboardingscreen extends StatefulWidget {
  const Onboardingscreen({super.key});

  @override
  State<Onboardingscreen> createState() => _OnboardingscreenState();
}

final controller = Get.put(Onboarding());

class _OnboardingscreenState extends State<Onboardingscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updateCurrentPage,
            children: [
              OnBoardingPage(
                imagePath: ImagesConstant.onBoardingScreen1,
                title: TextConstant.onBoardingTitle1,
                subtitle: TextConstant.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                imagePath: ImagesConstant.onBoardingScreen2,
                title: TextConstant.onBoardingTitle2,
                subtitle: TextConstant.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                imagePath: ImagesConstant.onBoardingScreen3,
                title: TextConstant.onBoardingTitle3,
                subtitle: TextConstant.onBoardingSubTitle3,
              ),
            ],
          ),
          //Next and Skip Buttons
          NextSkipbuttons(controller: controller),
        ],
      ),
    );
  }
}
