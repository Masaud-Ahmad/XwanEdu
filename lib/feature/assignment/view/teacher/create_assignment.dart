import 'package:flutter/material.dart';
import 'package:xwanedu/common/widgets/edu_icon/edu_icon.dart';
import 'package:xwanedu/common/widgets/edutext/edutext.dart';
import 'package:xwanedu/common/widgets/edutextfield/textfiled.dart';
import 'package:xwanedu/common/widgets/elevated_button/elevated_button.dart';
import 'package:xwanedu/constant/colors.dart';
import 'package:xwanedu/constant/size.dart';
import 'package:xwanedu/feature/assignment/data.dart';
import '../../model/assignment_model.dart';

class CreateAssignmentScreen extends StatefulWidget {
  const CreateAssignmentScreen({super.key});

  @override
  State<CreateAssignmentScreen> createState() => _CreateAssignmentScreenState();
}

class _CreateAssignmentScreenState extends State<CreateAssignmentScreen> {
  final titleController = TextEditingController();
  final descriptionController = TextEditingController();
  final marksController = TextEditingController();

  DateTime? dueDate;

  String? selectedFile;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6F8FC),

      appBar: AppBar(
        title: const Text('Create Assignment'),
        backgroundColor: Colors.white,
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(18),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const EduText(
              name: "Assignment Title",
              fontSize: SizeConstant.fontSizeMd,
              fontcolor: AppColors.onSurface,
            ),

            const SizedBox(height: 8),

            EduTextField(
              leftPadding: 10,
              controller: titleController,
              fieldBg: AppColors.onPrimary,
              borderColor: AppColors.onSurface,
              primaryBlue: AppColors.primary,
              hintText: 'Enter Assignment Title',
            ),
            const SizedBox(height: 20),

            const EduText(
              name: 'Description',
              fontSize: SizeConstant.fontSizeMd,
              fontcolor: AppColors.onSurface,
            ),

            const SizedBox(height: 8),

            EduTextField(
              leftPadding: 10,
              maxline: 5,
              controller: descriptionController,
              fieldBg: AppColors.onPrimary,
              borderColor: AppColors.onSurface,
              primaryBlue: AppColors.onPrimary,
              hintText: "Description",
            ),

            const SizedBox(height: 20),

            const EduText(
              name: "Due Date",
              fontSize: SizeConstant.fontSizeMd,
              fontcolor: AppColors.onSurface,
            ),

            const SizedBox(height: 8),

            InkWell(
              onTap: () async {
                final date = await showDatePicker(
                  context: context,
                  firstDate: DateTime.now(),
                  lastDate: DateTime(2030),
                  initialDate: DateTime.now(),
                );

                if (date != null) {
                  setState(() {
                    dueDate = date;
                  });
                }
              },

              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),

                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.grey.shade400),
                ),

                child: Row(
                  children: [
                    const EduIcon(
                      borderVisible: false,
                      iconData: Icons.calendar_month_outlined,
                      isVisible: false,
                      iconsize: SizeConstant.iconSm + 2,
                      iconcolor: AppColors.onSurfaceVariant,
                    ),
                    const SizedBox(width: 10),

                    Text(
                      dueDate == null
                          ? 'Select due date'
                          : '${dueDate!.day}/${dueDate!.month}/${dueDate!.year}',
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20),

            const EduText(
              name: "Total Marks",
              fontSize: SizeConstant.fontSizeMd,
              fontcolor: AppColors.onSurface,
            ),

            const SizedBox(height: 8),
            EduTextField(
              leftPadding: 10,
              controller: marksController,
              fieldBg: AppColors.onPrimary,
              borderColor: AppColors.onSurface,
              primaryBlue: AppColors.primary,
              hintText: "Example-10",
            ),
            const SizedBox(height: 20),

            const EduText(
              name: "Attachment",
              fontSize: SizeConstant.fontSizeMd,
              fontcolor: AppColors.onSurface,
            ),

            const SizedBox(height: 8),

            OutlinedButton.icon(
              onPressed: () {
                setState(() {
                  selectedFile = 'assignment_questions.pdf';
                });
              },
              icon: const Icon(Icons.attach_file),
              label: Text(selectedFile ?? 'Add File'),
            ),

            const SizedBox(height: 35),

            SizedBox(
              width: double.infinity,
              height: 52,

              child: EduButton(
                text: "Create Assignment",
                onPressed: () {
                  assignments.add(
                    AssignmentModel(
                      id: DateTime.now().millisecondsSinceEpoch.toString(),
                      title: titleController.text,
                      description: descriptionController.text,
                      dueDate: dueDate == null
                          ? 'No Due Date'
                          : '${dueDate!.day}/${dueDate!.month}/${dueDate!.year}',
                      totalMarks: int.tryParse(marksController.text) ?? 0,
                      attachment: selectedFile,
                      submittedStudents: 0,
                      totalStudents: 42,
                    ),
                  );
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
