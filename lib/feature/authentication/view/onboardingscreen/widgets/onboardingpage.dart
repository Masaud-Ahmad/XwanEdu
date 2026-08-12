import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:xwanedu/constant/size.dart';
import 'package:xwanedu/feature/authentication/view/onboardingscreen/widgets/onboardingsubtitle.dart';
import 'package:xwanedu/feature/authentication/view/onboardingscreen/widgets/onboardingtitle.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key,
    required this.imagePath,
    required this.title,
    required this.subtitle,
  });

  final String imagePath;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: (SizeConstant.productItemHeight * 2),
          height: (SizeConstant.productItemHeight * 2),
          alignment: Alignment.center,
          child: Lottie.asset(
            imagePath,
            width: (SizeConstant.productItemHeight * 2) - 40,
            height: (SizeConstant.productItemHeight * 2) - 40,
            fit: BoxFit.contain,
          ),
        ),

        OnBoardingTitle(title: title),

        const SizedBox(height: SizeConstant.spaceBtwItems / 5),

        OnBoardingSubTitle(subtitle: subtitle),
      ],
    );
  }
}
