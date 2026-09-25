import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:xwanedu/common/widgets/edu_icon/edu_icon.dart';
import 'package:xwanedu/common/widgets/edutext/edutext.dart';
import 'package:xwanedu/common/widgets/elevated_button/elevated_button.dart';
import 'package:xwanedu/constant/colors.dart';
import 'package:xwanedu/constant/size.dart';
import 'package:xwanedu/feature/assignment/data.dart';
import 'package:xwanedu/feature/assignment/view/teacher/create_assignment.dart';
import 'package:xwanedu/feature/assignment/view/teacher/view_assignment.dart';

class TeacherAssignmentScreen extends StatefulWidget {
  const TeacherAssignmentScreen({super.key});

  @override
  State<TeacherAssignmentScreen> createState() =>
      _TeacherAssignmentScreenState();
}

class _TeacherAssignmentScreenState extends State<TeacherAssignmentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,

      appBar: AppBar(
        title: const EduText(
          name: "Assignments",
          fontSize: SizeConstant.fontSizeMd,
          fontcolor: AppColors.onSurface,
        ),
        backgroundColor: AppColors.background,
      ),

      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: const Color(0xFF1656C9),
        foregroundColor: Colors.white,
        icon: const Icon(Icons.add),
        label: const Text('Create'),
        onPressed: () async {
          await Get.to(CreateAssignmentScreen());

          setState(() {});
        },
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const EduText(
              name: "DBMS Lab",
              fontSize: SizeConstant.fontSizeLg,
              fontcolor: AppColors.onSurface,
            ),

            const SizedBox(height: 5),

            const EduText(
              name: "Managment Classroom System",
              fontSize: SizeConstant.fontSizeSm + 3,
              fontcolor: AppColors.outline,
            ),

            const SizedBox(height: 20),

            Expanded(
              child: ListView.builder(
                itemCount: assignments.length,

                itemBuilder: (context, index) {
                  final assignment = assignments[index];

                  return Container(
                    margin: const EdgeInsets.only(bottom: 14),
                    padding: const EdgeInsets.all(16),

                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.grey.shade200),
                    ),

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(
                                SizeConstant.sm - 4,
                              ),
                              decoration: BoxDecoration(
                                color: AppColors.surfaceContainerLow,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: EduIcon(
                                borderVisible: false,
                                iconsize: SizeConstant.iconMd + 6,
                                iconcolor: AppColors.secondary,
                                iconData: Icons.assignment_outlined,
                                isVisible: false,
                              ),
                            ),

                            const SizedBox(width: 12),

                            Expanded(
                              child: EduText(
                                name: assignment.title,
                                fontSize: SizeConstant.fontSizeMd,
                                fontcolor: AppColors.onSurface,
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(height: 14),

                        EduText(
                          name: assignment.description,
                          fontSize: SizeConstant.fontSizeSm + 1,
                          fontcolor: AppColors.outline,
                        ),

                        const SizedBox(height: SizeConstant.sm),

                        Row(
                          children: [
                            const EduIcon(
                              borderVisible: false,
                              iconsize: SizeConstant.iconMd - 2,
                              iconcolor: AppColors.onSurfaceVariant,
                              iconData: Icons.calendar_today_outlined,
                              isVisible: false,
                            ),

                            const SizedBox(width: 6),

                            EduText(
                              name: 'Due ${assignment.dueDate}',
                              fontSize: SizeConstant.md - 3,
                              fontcolor: AppColors.onSurfaceVariant,
                            ),

                            const Spacer(),

                            Text(
                              '${assignment.totalMarks} Marks',
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(height: 16),

                        Text(
                          '${assignment.submittedStudents} / '
                          '${assignment.totalStudents} Submitted',
                          style: const TextStyle(
                            color: Color(0xFF1656C9),
                            fontWeight: FontWeight.w600,
                          ),
                        ),

                        const SizedBox(height: 12),

                        SizedBox(
                          width: double.infinity,
                          child: EduButton(
                            text: "View Submission",
                            onPressed: () => Get.to(
                              AssignmentSubmissionsScreen(
                                assignmentTitle: assignment.title,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
