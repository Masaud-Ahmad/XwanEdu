import 'package:flutter/material.dart';
import 'package:xwanedu/constant/colors.dart';

class EduButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  final Color? backgroundColor;
  final Color? textColor;
  final Color? borderColor;

  final double width;
  final double height;
  final double borderRadius;
  final double fontSize;
  final double borderWidth;

  final FontWeight fontWeight;

  final bool isBackgroundVisible;
  final bool isBorderVisible;

  const EduButton({
    super.key,
    required this.text,
    required this.onPressed,

    this.backgroundColor,
    this.textColor,
    this.borderColor,

    this.width = double.infinity,
    this.height = 50,
    this.borderRadius = 12,
    this.fontSize = 16,
    this.borderWidth = 1,

    this.fontWeight = FontWeight.w600,

    this.isBackgroundVisible = true,
    this.isBorderVisible = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,

      child: ElevatedButton(
        onPressed: onPressed,

        style: ElevatedButton.styleFrom(
          backgroundColor: isBackgroundVisible
              ? backgroundColor ?? AppColors.primary
              : Colors.transparent,

          foregroundColor:
              textColor ??
              (isBackgroundVisible ? Colors.white : AppColors.primary),

          elevation: isBackgroundVisible ? 4 : 0,

          side: isBorderVisible
              ? BorderSide(
                  color: borderColor ?? AppColors.primary,
                  width: borderWidth,
                )
              : BorderSide.none,

          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),

        child: Text(
          text,
          style: TextStyle(fontSize: fontSize, fontWeight: fontWeight),
        ),
      ),
    );
  }
}
