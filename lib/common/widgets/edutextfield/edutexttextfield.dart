import 'package:flutter/material.dart';
import 'package:xwanedu/common/widgets/edutextfield/textfiled.dart';
import 'package:xwanedu/constant/size.dart';

class EduTextTextField extends StatelessWidget {
  const EduTextTextField({
    super.key,
    this.text,
    required this.icon,
    required this.hintText,
    this.forgetPassword,
    required this.controller,
  });

  final String? text;
  final IconData icon;
  final String hintText;
  final String? forgetPassword;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text ?? '',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: SizeConstant.fontSizeMd,
                color: Colors.black87,
              ),
            ),

            if (forgetPassword != null)
              GestureDetector(
                onTap: () {
                  // Forgot password
                },
                child: Text(
                  forgetPassword!,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                    color: Colors.blueAccent,
                  ),
                ),
              ),
          ],
        ),

        const SizedBox(height: 8),

        EduTextField(
          emailController: controller,
          fieldBg: Colors.white,
          borderColor: Colors.grey.shade300,
          primaryBlue: Colors.blueAccent,
          hintText: hintText,
          icon: icon,
        ),
      ],
    );
  }
}
