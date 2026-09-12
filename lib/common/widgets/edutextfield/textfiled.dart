import 'package:flutter/material.dart';

class EduTextField extends StatelessWidget {
  const EduTextField({
    super.key,
    required TextEditingController emailController,
    required this.fieldBg,
    required this.borderColor,
    required this.primaryBlue,
    required this.hintText,
    this.icon,
  }) : _emailController = emailController;

  final TextEditingController _emailController;
  final Color fieldBg;
  final Color borderColor;
  final Color primaryBlue;
  final String hintText;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _emailController,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(color: Color(0xFF9CA3AF)),
        prefixIcon: icon != null
            ? Icon(icon, color: Color(0xFF9CA3AF), size: 20)
            : null,
        filled: true,
        fillColor: fieldBg,
        contentPadding: const EdgeInsets.symmetric(vertical: 14),
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
