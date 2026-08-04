import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:xwanedu/constant/size.dart';

class SocialButton extends StatelessWidget {
  final String label;
  final IconData icon;
  final double iconSize;
  final VoidCallback onTap;

  const SocialButton({
    super.key,
    required this.label,
    required this.icon,
    required this.onTap,
    this.iconSize = SizeConstant.iconMd,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onTap,
      style: OutlinedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 14),
        side: const BorderSide(color: Color(0xFFE2E5EA)),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: iconSize, color: Colors.black87),
          const SizedBox(width: 6),
          Text(
            label,
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 14,
              color: Colors.black87,
            ),
          ),
        ],
      ),
    );
  }
}
