import 'package:flutter/material.dart';
import 'package:xwanedu/constant/colors.dart';
import 'package:xwanedu/constant/size.dart';
import 'package:xwanedu/feature/classroom/model/classroom_model/classroom_model.dart';

class ClassRoomCardHeader extends StatelessWidget {
  const ClassRoomCardHeader({super.key, required this.classroom});

  final ClassroomModel classroom;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        horizontal: SizeConstant.md,
        vertical: SizeConstant.md,
      ),
      color: AppColors.primary,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  classroom.subject,
                  style: TextStyle(
                    color: AppColors.onPrimary,
                    fontSize: SizeConstant.fontSizeLg,
                    fontWeight: FontWeight.w600,
                  ),
                ),

                const SizedBox(height: SizeConstant.xs / 2),

                Text(
                  classroom.section,
                  style: TextStyle(
                    color: Colors.white.withValues(alpha: 0.9),
                    fontSize: SizeConstant.fontSizeMd,
                  ),
                ),
              ],
            ),
          ),

          const Icon(
            Icons.functions_rounded,
            color: Colors.white70,
            size: SizeConstant.iconLg,
          ),
        ],
      ),
    );
  }
}
