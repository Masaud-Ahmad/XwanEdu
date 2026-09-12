import 'package:flutter/material.dart';

class EduImageIcon extends StatelessWidget {
  // 1. Declare the missing variable here
  final VoidCallback? onCameraTap;

  // 2. Add it to the constructor
  const EduImageIcon({super.key, this.onCameraTap});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      right: 4,
      child: GestureDetector(
        onTap: onCameraTap, // Now this will work correctly
        child: Container(
          padding: const EdgeInsets.all(6),
          decoration: BoxDecoration(
            color: const Color(0xFF1976D2), // Blue badge color
            shape: BoxShape.circle,
            border: Border.all(color: Colors.white, width: 2.5),
          ),
          child: const Icon(
            Icons.camera_alt_outlined,
            color: Colors.white,
            size: 18,
          ),
        ),
      ),
    );
  }
}
