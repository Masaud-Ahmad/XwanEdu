import 'package:flutter/material.dart';

class EduTextField extends StatelessWidget {
  const EduTextField({
    super.key,
    required TextEditingController controller,
    required this.fieldBg,
    required this.borderColor,
    required this.primaryBlue,
    required this.hintText,
    this.icon,
    this.maxline,
    this.leftPadding = 4,
  }) : _controller = controller;

  final TextEditingController _controller;
  final Color fieldBg;
  final Color borderColor;
  final Color primaryBlue;
  final String hintText;
  final IconData? icon;

  final double? leftPadding;

  final int? maxline;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _controller,
      maxLines: maxline,
      keyboardType: TextInputType.emailAddress,

      decoration: InputDecoration(
        hintText: hintText,

        hintStyle: const TextStyle(color: Color(0xFF9CA3AF), fontSize: 14),
        prefixIcon: icon != null
            ? Icon(icon, color: Color(0xFF9CA3AF), size: 20)
            : null,
        filled: true,

        fillColor: fieldBg,
        contentPadding: EdgeInsets.all(leftPadding!),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: borderColor),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: borderColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: primaryBlue, width: 1.5),
        ),
      ),
    );
  }
}
