import 'package:flutter/material.dart';
import 'package:xwanedu/common/widgets/title_logo/title_logo.dart';
import 'package:xwanedu/constant/colors.dart';
import 'package:xwanedu/constant/size.dart';
import 'package:xwanedu/constant/text_constant.dart';
import 'package:xwanedu/feature/authentication/login/screen/login.dart';

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
      // Navigate to the next screen after the delay
      // You can use Navigator.pushReplacement to replace the current screen
      // with the next screen.
      Navigator.pushReplacement(
        // ignore: use_build_context_synchronously
        context,
        MaterialPageRoute(
          builder: (context) => const LoginScreen(),
        ), // Replace NextScreen with your actual next screen widget
      );
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
