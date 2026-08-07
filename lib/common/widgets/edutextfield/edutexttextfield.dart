import 'package:flutter/material.dart';
import 'package:xwanedu/common/widgets/edutextfield/textfiled.dart';
import 'package:xwanedu/constant/size.dart';

class EduTextTextField extends StatelessWidget {
  EduTextTextField({
    super.key,
    this.text,
    required this.icon,
    required this.hintText,
    this.forgetPassword,
  });
  final String? text;
  final TextEditingController _Controller = TextEditingController();
  final IconData icon;
  final String hintText;
  final String? forgetPassword;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
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

            GestureDetector(
              onTap: () {
                // Handle forget password action
              },
              child: Text(
                forgetPassword ?? '',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                  color: Colors.blueAccent,
                ),
              ),
            ),
          ],
        ),

        EduTextField(
          emailController: _Controller,
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
