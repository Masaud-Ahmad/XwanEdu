import 'package:flutter/material.dart';
import 'package:xwanedu/constant/colors.dart';
import 'package:xwanedu/constant/size.dart';

class EduIcon extends StatelessWidget {
  final VoidCallback? onTap;
  final IconData iconData;
  final bool isVisible;
  final bool borderVisible;
  final double iconsize;
  final Color iconcolor;

  const EduIcon({
    super.key,
    this.onTap,
    this.iconData = Icons.camera_alt_outlined,
    this.isVisible = true,
    required this.borderVisible,
    required this.iconsize,
    required this.iconcolor,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      right: 4,
      child: Material(
        color: Colors.transparent,
        shape: const CircleBorder(),
        child: InkWell(
          onTap: onTap,

          // Click effect
          splashColor: AppColors.primary.withValues(alpha: 0.3),
          highlightColor: AppColors.primary.withValues(alpha: 0.15),

          customBorder: const CircleBorder(),

          child: Container(
            padding: EdgeInsets.all(SizeConstant.xs - 2),
            decoration: BoxDecoration(
              color: isVisible ? AppColors.primary : null,
              shape: BoxShape.circle,
              border: borderVisible
                  ? Border.all(color: AppColors.onSurface, width: 2.5)
                  : null,
            ),
            child: Icon(iconData, color: iconcolor, size: iconsize),
          ),
        ),
      ),
    );
  }
}
