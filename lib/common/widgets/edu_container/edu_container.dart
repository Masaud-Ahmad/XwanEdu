import 'package:flutter/material.dart';
import 'package:xwanedu/constant/colors.dart';
import 'package:xwanedu/constant/size.dart';

class EduContainerWidget extends StatelessWidget {
  const EduContainerWidget({
    super.key,
    required this.title,
    required this.subTitle,
    required this.icon,
  });

  final String title;
  final String subTitle;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      // Space between black border and blue container
      padding: const EdgeInsets.all(3),

      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 1),
        borderRadius: BorderRadius.circular(16),
      ),

      child: Container(
        padding: const EdgeInsets.all(SizeConstant.md),

        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 137, 212, 241),
          borderRadius: BorderRadius.circular(13),
        ),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Icon(icon, color: AppColors.onSurface, size: SizeConstant.iconLg),

            const SizedBox(height: 12),

            Text(
              title,
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),

            const SizedBox(height: 4),

            Text(
              subTitle,
              style: const TextStyle(fontSize: 11, color: Colors.white54),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
