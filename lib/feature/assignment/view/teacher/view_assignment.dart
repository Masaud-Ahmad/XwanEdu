import 'package:flutter/material.dart';
import 'package:xwanedu/common/widgets/edutext/edutext.dart';
import 'package:xwanedu/common/widgets/elevated_button/elevated_button.dart';
import 'package:xwanedu/constant/colors.dart';
import 'package:xwanedu/constant/size.dart';
import 'package:xwanedu/feature/assignment/data.dart';
import 'package:xwanedu/utils/dialog_box.dart';

class AssignmentSubmissionsScreen extends StatefulWidget {
  const AssignmentSubmissionsScreen({super.key, required this.assignmentTitle});

  final String assignmentTitle;

  @override
  State<AssignmentSubmissionsScreen> createState() =>
      _AssignmentSubmissionsScreenState();
}

class _AssignmentSubmissionsScreenState
    extends State<AssignmentSubmissionsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,

      appBar: AppBar(
        backgroundColor: AppColors.primary,
        foregroundColor: AppColors.onPrimary,

        title: const EduText(
          name: "Submission",
          fontSize: SizeConstant.fontSizeLg,
          fontcolor: AppColors.onPrimary,
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            EduText(
              name: widget.assignmentTitle,
              fontSize: SizeConstant.fontSizeLg,
              fontcolor: AppColors.onSurface,
            ),

            const SizedBox(height: 20),

            Expanded(
              child: ListView.builder(
                itemCount: submissions.length,

                itemBuilder: (context, index) {
                  final student = submissions[index];

                  return Container(
                    margin: const EdgeInsets.only(bottom: 12),
                    padding: const EdgeInsets.all(15),

                    decoration: BoxDecoration(
                      color: AppColors.successLight,
                      borderRadius: BorderRadius.circular(14),
                    ),

                    child: Column(
                      children: [
                        Row(
                          children: [
                            CircleAvatar(child: Text(student.name[0])),

                            const SizedBox(width: 12),

                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  EduText(
                                    name: student.name,
                                    fontSize: SizeConstant.fontSizeMd,
                                    fontcolor: AppColors.onSurface,
                                  ),
                                  EduText(
                                    name: student.rollNumber,
                                    fontSize: SizeConstant.fontSizeSm,
                                    fontcolor: const Color.fromARGB(
                                      255,
                                      101,
                                      104,
                                      109,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            EduText(
                              name: student.submitted
                                  ? "Submitted"
                                  : 'Not Submitted',
                              fontSize: SizeConstant.fontSizeMd,
                              fontcolor: student.submitted
                                  ? AppColors.success
                                  : AppColors.error,
                            ),
                          ],
                        ),

                        if (student.submitted) ...[
                          const SizedBox(height: 14),

                          Row(
                            children: [
                              Expanded(
                                child: EduButton(
                                  borderRadius: 30,
                                  height: 40,
                                  backgroundColor: const Color.fromARGB(
                                    255,
                                    236,
                                    238,
                                    241,
                                  ),
                                  text: 'View File',
                                  textColor: AppColors.onSurfaceVariant,
                                  onPressed: () {},
                                ),
                              ),

                              const SizedBox(width: 10),

                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      Colors.blue, // Button background color
                                  foregroundColor:
                                      Colors.white, // Text and icon color
                                  elevation: 6, // Shadow depth

                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                      40,
                                    ), // Rounded corners
                                  ),
                                ),
                                onPressed: () {
                                  // Your action here

                                  DialogBox.giveStudentMarks(
                                    onSave: (marks) {
                                      setState(() {
                                        student.marks = marks;
                                      });
                                    },
                                  );
                                },

                                child: Text(
                                  student.marks == null
                                      ? 'Give Marks'
                                      : '${student.marks}/20',
                                ),
                              ),
                            ],
                          ),
                        ],
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
