import 'package:flutter/material.dart';
import 'package:xwanedu/constant/colors.dart';
import 'package:xwanedu/constant/size.dart';

class OnBoardingSubTitle extends StatelessWidget {
  const OnBoardingSubTitle({super.key, required this.subtitle});

  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: SizeConstant.sm),
      child: Text(
        subtitle,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: SizeConstant.fontSizeMd,
          height: SizeConstant.lineHeight,
          color: AppColors.onSurfaceVariant,
        ),
      ),
    );
  }
}
