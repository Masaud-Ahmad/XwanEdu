import 'package:flutter/material.dart';
import 'package:xwanedu/common/widgets/circleimage/circleimage.dart';
import 'package:xwanedu/common/widgets/edutext/edutext.dart';
import 'package:xwanedu/common/widgets/edu_icon/edu_icon.dart';
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
            CircleImage(
              imageUrl: imageUrl,
              width: SizeConstant.iconLg * 4,
              height: SizeConstant.iconLg * 4,
            ),

            // Camera Icon Badge
            EduIcon(
              iconData: Icons.camera_alt_outlined,
              onTap: onCameraTap,
              isVisible: true,
              iconsize: SizeConstant.iconLg,
              iconcolor: AppColors.primary,
              borderVisible:
                  false, // Set to true if you want a border around the badge
            ),
          ],
        ),

        const SizedBox(height: SizeConstant.spaceBtwItems),

        // 2. Name
        EduText(
          name: name,
          fontSize: SizeConstant.fontSizeLg,
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
