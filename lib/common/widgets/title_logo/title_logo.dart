import 'package:flutter/material.dart';
import 'package:xwanedu/constant/size.dart';

class TitleLogo extends StatelessWidget {
  const TitleLogo({
    super.key,
    required this.lightBlueBg,
    required this.primaryBlue,
    required this.textGrey,
    required this.icon,
    required this.title,
    required this.subtitle,
  });

  final Color lightBlueBg;
  final Color primaryBlue;
  final Color textGrey;
  final IconData icon;
  final String title;
  final String subtitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Container(
            width: SizeConstant.lg * 2,
            height: SizeConstant.lg * 2,
            decoration: BoxDecoration(
              color: lightBlueBg,
              borderRadius: BorderRadius.circular(14),
            ),
            child: Icon(icon, color: Colors.blue, size: SizeConstant.iconLg),
          ),
        ),
        const SizedBox(height: SizeConstant.spaceBtwItems / 2),

        // Heading
        Center(
          child: Text(
            title,
            style: const TextStyle(
              fontSize: SizeConstant.fontSizeLg * 1.20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: SizeConstant.spaceBtwItems / 4),
        Text(
          subtitle,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: SizeConstant.fontSizeMd,
            color: Color(0xFF6B7280),
          ),
        ),
      ],
    );
  }
}
