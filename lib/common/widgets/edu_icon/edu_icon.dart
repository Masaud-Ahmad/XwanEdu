import 'package:flutter/material.dart';
import 'package:xwanedu/constant/colors.dart';
import 'package:xwanedu/constant/size.dart';

class EduIcon extends StatelessWidget {
  // 1. Declare the missing variable here
  final VoidCallback? onTap;
  final IconData iconData;
  final bool isVisible;
  final bool borderVisible;

  // 2. Add it to the constructor
  const EduIcon({
    super.key,
    this.onTap,
    this.iconData = Icons.camera_alt_outlined,
    this.isVisible = true,
    required this.borderVisible,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      right: 4,
      child: GestureDetector(
        onTap: onTap, // Now this will work correctly
        child: Container(
          padding: const EdgeInsets.all(SizeConstant.sm),
          decoration: BoxDecoration(
            color: isVisible ? AppColors.primary : null, // Blue badge color
            shape: BoxShape.circle,
            border: borderVisible
                ? Border.all(color: AppColors.onSurface, width: 2.5)
                : null,
          ),
          child: Icon(
            iconData,
            color: AppColors.onSurface,
            size: SizeConstant.iconMd,
          ),
        ),
      ),
    );
  }
}
