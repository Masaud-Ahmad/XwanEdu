import 'package:flutter/material.dart';
import 'package:xwanedu/constant/colors.dart';

class EduButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color? backgroundColor;
  final Color? textColor;
  final double width;
  final double height;
  final double borderRadius;
  final double fontSize;

  const EduButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.backgroundColor,
    this.textColor,
    this.width = double.infinity, // Defaults to full width
    this.height = 50.0, // Standard touch-friendly height
    this.borderRadius = 12.0, // Matches modern rounded UI
    this.fontSize = 16.0,
    fontweight = FontWeight.w600,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          // Use the provided color or fall back to a default primary color
          backgroundColor: backgroundColor ?? AppColors.primary,
          foregroundColor: textColor ?? Colors.white,
          elevation: 6, // Flat design; increase if you want a drop shadow
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(fontSize: fontSize, fontWeight: FontWeight.w900),
        ),
      ),
    );
  }
}
