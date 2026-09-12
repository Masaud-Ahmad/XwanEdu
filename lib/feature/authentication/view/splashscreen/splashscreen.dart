import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:xwanedu/common/widgets/title_logo/title_logo.dart';
import 'package:xwanedu/constant/colors.dart';
import 'package:xwanedu/constant/size.dart';
import 'package:xwanedu/constant/text_constant.dart';
import 'package:xwanedu/feature/authentication/view/onboardingscreen/onboardingscreen.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 3), () {
      if (!mounted) return;

      Get.offAll(() => const Onboardingscreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.surface,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: TitleLogo(
              lightBlueBg: AppColors.secondary,
              primaryBlue: AppColors.surface,
              textGrey: AppColors.onSurfaceVariant,
              icon: Icons.school_outlined,
              title: TextConstant.welcome + TextConstant.appName,
              subtitle: TextConstant.splashScreenSlogan,
              iconSize: SizeConstant.iconLg * 3,
              contianerWidth: SizeConstant.iconLg * 3.5,
              contianerhigth: SizeConstant.iconMd * 4.5,
            ),
          ),
        ],
      ),
    );
  }
}
