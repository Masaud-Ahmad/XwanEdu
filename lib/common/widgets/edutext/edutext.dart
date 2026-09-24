import 'package:flutter/material.dart';

class EduText extends StatelessWidget {
  const EduText({
    super.key,
    required this.name,
    required this.fontSize,
    required this.fontcolor,
  });
  final String name;
  final double fontSize;
  final Color fontcolor;

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: TextStyle(
        fontSize: fontSize.toDouble(),
        fontWeight: FontWeight.bold,
        color: fontcolor, // Dark blue text
      ),
    );
  }
}
