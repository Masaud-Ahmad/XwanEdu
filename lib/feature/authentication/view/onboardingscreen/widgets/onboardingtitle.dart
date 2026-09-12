import 'package:flutter/material.dart';
import 'package:xwanedu/constant/colors.dart';
import 'package:xwanedu/constant/size.dart';

class OnBoardingTitle extends StatelessWidget {
  const OnBoardingTitle({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: TextAlign.center,
      style: const TextStyle(
        fontSize: SizeConstant.fontSizeLg * 1.4,
        fontWeight: FontWeight.w800,
        color: AppColors.primary,
      ),
    );
  }
}
