import 'package:flutter/material.dart';
import 'package:xwanedu/common/widgets/three_dot_button/three_dot_button.dart';
import 'package:xwanedu/constant/colors.dart';
import 'package:xwanedu/constant/size.dart';
import 'package:xwanedu/feature/classroom/model/classroom_model/classroom_model.dart';

class ClassRoomCardBottom extends StatelessWidget {
  const ClassRoomCardBottom({super.key, required this.classroom});

  final ClassroomModel classroom;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      child: Row(
        children: [
          // Teacher image
          const CircleAvatar(
            radius: SizeConstant.iconMd,
            backgroundImage: AssetImage(''),
          ),

          const SizedBox(width: 10),

          // Teacher name + students
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  classroom.teacher,
                  style: TextStyle(
                    color: AppColors.onSurface,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),

                const SizedBox(height: 2),

                Text(
                  "${classroom.students} Students",
                  style: TextStyle(
                    color: AppColors.onSurfaceVariant,
                    fontSize: 11,
                  ),
                ),
              ],
            ),
          ),

          // Three-dot menu
          ThreeDotIconButton(),
        ],
      ),
    );
  }
}
