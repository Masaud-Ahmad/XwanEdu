import 'package:flutter/material.dart';
import 'package:xwanedu/common/widgets/circleimage.dart';
import 'package:xwanedu/common/widgets/edutext.dart';
import 'package:xwanedu/common/widgets/imageicon.dart';
import 'package:xwanedu/constant/colors.dart';
import 'package:xwanedu/constant/size.dart';

class EditableProfileAvatar extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String subtitle;
  final VoidCallback? onCameraTap;

  const EditableProfileAvatar({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.subtitle,
    this.onCameraTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // 1. The Avatar and the Badge
        Stack(
          children: [
            // Circular Image
            CircleImage(imageUrl: imageUrl),

            // Camera Icon Badge
            EduImageIcon(onCameraTap: onCameraTap),
          ],
        ),

        const SizedBox(height: SizeConstant.spaceBtwItems),

        // 2. Name
        TextWidget(
          name: name,
          fontSize: SizeConstant.fontSizeLg.toInt(),
          fontcolor: AppColors.primary,
          // Note: Add a bold font weight in your TextWidget if it supports it
        ),

        const SizedBox(height: 4),

        // 3. Subtitle / Role
        Text(
          subtitle,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Color(
              0xFF5A7184,
            ), // A soft slate/grey color matching the design
          ),
        ),
      ],
    );
  }
}
