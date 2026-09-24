import 'package:flutter/material.dart';
import 'package:xwanedu/common/widgets/edu_icon/edu_icon.dart';
import 'package:xwanedu/common/widgets/edutext/edutext.dart';
import 'package:xwanedu/constant/colors.dart';
import 'package:xwanedu/constant/size.dart';

class StudentAttendanceScreen extends StatelessWidget {
  const StudentAttendanceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    int present = 24;
    int absent = 4;

    int total = present + absent;

    double percentage = (present / total) * 100;

    return Scaffold(
      backgroundColor: const Color(0xFFF6F8FC),

      appBar: AppBar(
        title: const EduText(
          name: 'Attendence',
          fontSize: SizeConstant.fontSizeMd,
          fontcolor: AppColors.onSurface,
        ),
        backgroundColor: AppColors.onPrimary,
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            const EduText(
              name: 'DBMS Lab 2026 C',
              fontSize: SizeConstant.fontSizeLg,
              fontcolor: AppColors.onSurface,
            ),
            const SizedBox(height: SizeConstant.lg),

            const EduText(
              name: 'Today\'s  Attendence',

              fontSize: SizeConstant.fontSizeLg - 2,
              fontcolor: AppColors.onSurface,
            ),

            const SizedBox(height: SizeConstant.md),

            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(25),

              decoration: BoxDecoration(
                color: Colors.green.shade50,
                borderRadius: BorderRadius.circular(16),
              ),

              child: Column(
                children: [
                  const EduIcon(
                    borderVisible: false,
                    iconData: Icons.check_circle,
                    isVisible: false,
                    iconsize: SizeConstant.iconLg + 20,
                    iconcolor: AppColors.success,
                  ),

                  SizedBox(height: 10),

                  Text(
                    'PRESENT',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 25),

            const EduText(
              name: "Overall Attendence",
              fontSize: SizeConstant.fontSizeLg,
              fontcolor: AppColors.onSurface,
            ),

            const SizedBox(height: 10),

            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(22),

              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),

              child: Column(
                children: [
                  Text(
                    '${percentage.toStringAsFixed(0)}%',
                    style: const TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF1656C9),
                    ),
                  ),

                  const SizedBox(height: 15),

                  LinearProgressIndicator(
                    value: percentage / 100,
                    minHeight: 8,
                  ),

                  const SizedBox(height: 25),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,

                    children: [
                      Column(
                        children: [
                          Text(
                            '$present',
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.green,
                            ),
                          ),

                          const EduText(
                            name: "Present",
                            fontSize: SizeConstant.fontSizeMd,
                            fontcolor: AppColors.success,
                          ),
                        ],
                      ),

                      Column(
                        children: [
                          Text(
                            '$absent',
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.red,
                            ),
                          ),

                          const EduText(
                            name: "Absent",
                            fontSize: SizeConstant.fontSizeMd,
                            fontcolor: AppColors.error,
                          ),
                        ],
                      ),

                      Column(
                        children: [
                          EduText(
                            name: '$total',
                            fontSize: SizeConstant.fontSizeMd,
                            fontcolor: AppColors.onSurface,
                          ),

                          const EduText(
                            name: "Total",
                            fontSize: SizeConstant.fontSizeMd,
                            fontcolor: AppColors.onSurface,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
