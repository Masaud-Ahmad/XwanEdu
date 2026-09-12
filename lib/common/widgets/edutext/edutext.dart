import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({
    super.key,
    required this.name,
    required this.fontSize,
    required this.fontcolor,
  });
  final String name;
  final int fontSize;
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
