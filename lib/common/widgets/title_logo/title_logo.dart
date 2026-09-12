import 'package:flutter/material.dart';
import 'package:xwanedu/constant/colors.dart';
import 'package:xwanedu/constant/size.dart';

class TitleLogo extends StatelessWidget {
  const TitleLogo({
    super.key,
    required this.primaryBlue,
    required this.textGrey,
    required this.icon,
    required this.title,
    required this.subtitle,
    this.iconSize = SizeConstant.iconLg,
    this.contianerWidth = SizeConstant.iconLg * 2,
    this.contianerhigth = SizeConstant.iconMd * 2,
    required this.lightBlueBg,
  });

  final Color lightBlueBg;
  final Color primaryBlue;
  final Color textGrey;
  final IconData icon;
  final String title;
  final String subtitle;
  final double iconSize;
  final double contianerWidth;
  final double contianerhigth;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Container(
            width: contianerWidth,
            height: contianerhigth,
            decoration: BoxDecoration(
              color: lightBlueBg,
              borderRadius: BorderRadius.circular(14),
            ),
            child: Icon(icon, color: primaryBlue, size: iconSize),
          ),
        ),
        const SizedBox(height: SizeConstant.spaceBtwItems),

        // Heading
        Text(
          title,
          style: const TextStyle(
            fontSize: SizeConstant.fontSizeLg * 1.20,
            fontWeight: FontWeight.bold,
            color: AppColors.onSurface,
          ),
        ),
        const SizedBox(height: SizeConstant.spaceBtwItems / 4),
        Text(
          subtitle,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: SizeConstant.fontSizeMd,
            color: AppColors.onSurfaceVariant,
          ),
        ),
      ],
    );
  }
}
