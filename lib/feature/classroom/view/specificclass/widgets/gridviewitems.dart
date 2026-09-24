import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:xwanedu/common/widgets/edu_container/edu_container.dart';
import 'package:xwanedu/constant/colors.dart';
import 'package:xwanedu/constant/size.dart';
import 'package:xwanedu/constant/text_constant.dart';
import 'package:xwanedu/feature/assignment/view/teacher/teacher_assignment.dart';

class GridViewItems extends StatelessWidget {
  const GridViewItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: SizeConstant.md),
        Row(
          children: const [
            Icon(
              Icons.apps,
              color: AppColors.onSurface,
              size: SizeConstant.iconMd - 4,
            ),
            SizedBox(width: 8),
            Text(
              TextConstant.quickAction,
              style: TextStyle(
                fontSize: SizeConstant.lg,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        const SizedBox(height: SizeConstant.md),

        // Quick Actions Grid (Non-reusable custom widgets, fully inline)
        GridView.count(
          crossAxisCount: 2,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 1.2,
          children: [
            EduContainerWidget(
              title: 'Quizzes',
              subTitle: 'Attempt quizzes and view scores',
              icon: Icons.bar_chart,
              ontap: () => TeacherAssignmentScreen(),
            ),

            EduContainerWidget(
              title: 'Assignments',
              subTitle: 'Submit work and view grades',
              icon: Icons.edit_note,
              ontap: () => TeacherAssignmentScreen(),
            ),

            EduContainerWidget(
              title: 'Resources',
              subTitle: 'Download study materials',
              icon: Icons.folder,
              ontap: () {
                Get.to(() => const TeacherAssignmentScreen());
              },
            ),

            EduContainerWidget(
              title: 'Reports',
              subTitle: 'View class performance',
              icon: Icons.show_chart,
              ontap: () => TeacherAssignmentScreen(),
            ),
          ],
        ),
      ],
    );
  }
}
