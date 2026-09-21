import 'package:flutter/material.dart';
import 'package:xwanedu/common/widgets/edutext/edutext.dart';
import 'package:xwanedu/constant/colors.dart';
import 'package:xwanedu/constant/size.dart';
import 'package:xwanedu/feature/attendence/viewmodle/attendenceviewmodel.dart';

class TeacherAttendanceScreen extends StatefulWidget {
  const TeacherAttendanceScreen({super.key});

  @override
  State<TeacherAttendanceScreen> createState() =>
      _TeacherAttendanceScreenState();
}

class _TeacherAttendanceScreenState extends State<TeacherAttendanceScreen> {
  @override
  Widget build(BuildContext context) {
    int presentCount = studentList.where((student) => student.isPresent).length;

    int absentCount = studentList.where((student) => !student.isPresent).length;

    return Scaffold(
      backgroundColor: const Color(0xFFF6F8FC),

      appBar: AppBar(
        title: EduText(
          name: 'Attendance',
          fontSize: SizeConstant.fontSizeLg.toInt(),
          fontcolor: AppColors.onSurface,
        ),
        backgroundColor: Colors.white,
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            EduText(
              name: 'DBMS  Lab 2026 c',
              fontSize: SizeConstant.fontSizeLg.toInt(),
              fontcolor: AppColors.onSurface,
            ),

            const SizedBox(height: 5),

            const SizedBox(height: 20),

            // Summary
            Container(
              padding: const EdgeInsets.all(16),

              decoration: BoxDecoration(
                color: const Color(0xFFEAF3FF),
                borderRadius: BorderRadius.circular(16),
              ),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,

                children: [
                  Column(
                    children: [
                      EduText(
                        name: "$presentCount",
                        fontSize: SizeConstant.fontSizeLg.toInt() + 3,
                        fontcolor: AppColors.success,
                      ),
                      EduText(
                        name: "Present",
                        fontSize: SizeConstant.fontSizeMd.toInt(),
                        fontcolor: AppColors.success,
                      ),
                    ],
                  ),

                  Column(
                    children: [
                      EduText(
                        name: "$absentCount",
                        fontSize: SizeConstant.fontSizeLg.toInt() + 3,
                        fontcolor: AppColors.error,
                      ),
                      EduText(
                        name: "Absent",
                        fontSize: SizeConstant.fontSizeMd.toInt(),
                        fontcolor: AppColors.error,
                      ),
                    ],
                  ),

                  Column(
                    children: [
                      EduText(
                        name: '${studentList.length}',
                        fontSize: SizeConstant.fontSizeLg.toInt() + 3,
                        fontcolor: AppColors.onSurface,
                      ),
                      EduText(
                        name: 'Total',
                        fontSize: SizeConstant.fontSizeMd.toInt(),
                        fontcolor: AppColors.onSurface,
                      ),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            EduText(
              name: 'Students',
              fontSize: SizeConstant.fontSizeMd.toInt() + 5,
              fontcolor: AppColors.onSurface,
            ),

            const SizedBox(height: 10),

            Expanded(
              child: ListView.builder(
                itemCount: studentList.length,

                itemBuilder: (context, index) {
                  final student = studentList[index];

                  return Container(
                    margin: const EdgeInsets.only(bottom: 12),
                    padding: const EdgeInsets.all(14),

                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(14),
                    ),

                    child: Row(
                      children: [
                        CircleAvatar(child: Text(student.name[0])),

                        const SizedBox(width: 12),

                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,

                            children: [
                              EduText(
                                name: student.name,
                                fontSize: SizeConstant.fontSizeSm.toInt() + 3,
                                fontcolor: AppColors.onSurface,
                              ),

                              EduText(
                                name: student.rollNumber,
                                fontSize: SizeConstant.fontSizeSm.toInt(),
                                fontcolor: const Color.fromARGB(
                                  255,
                                  144,
                                  145,
                                  146,
                                ),
                              ),
                            ],
                          ),
                        ),

                        // Present
                        ChoiceChip(
                          label: const Text('Present'),

                          selected: student.isPresent,

                          selectedColor: Colors.green.shade100,

                          onSelected: (_) {
                            setState(() {
                              student.isPresent = true;
                            });
                          },
                        ),

                        const SizedBox(width: 5),

                        // Absent
                        ChoiceChip(
                          label: const Text('Absent'),

                          selected: !student.isPresent,

                          selectedColor: Colors.red.shade100,

                          onSelected: (_) {
                            setState(() {
                              student.isPresent = false;
                            });
                          },
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),

            SizedBox(
              width: double.infinity,
              height: 52,

              child: ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Attendance Submitted')),
                  );
                },

                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF1656C9),

                  foregroundColor: Colors.white,
                ),

                child: const Text(
                  'Submit Attendance',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
