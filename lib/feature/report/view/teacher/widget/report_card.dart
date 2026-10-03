import 'package:flutter/material.dart';
import 'package:xwanedu/common/widgets/edu_icon/edu_icon.dart';
import 'package:xwanedu/common/widgets/edutext/edutext.dart';
import 'package:xwanedu/constant/colors.dart';
import 'package:xwanedu/constant/size.dart';
import 'package:xwanedu/feature/report/view/teacher/teacher_give_marks.dart';

class ReportCard extends StatelessWidget {
  const ReportCard({
    super.key,
    required this.title,
    required this.date,
    required this.marks,
    required this.submitted,
    required this.color,
    required this.totalMarks,
  });

  final String title;
  final String date;
  final String marks;
  final String submitted;
  final Color color;
  final int totalMarks;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) =>
                GiveMarksScreen(title: title, totalMarks: totalMarks),
          ),
        );
      },

      child: Container(
        margin: const EdgeInsets.only(bottom: 12),
        padding: const EdgeInsets.all(14),

        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(14),
          border: Border.all(color: Colors.grey.shade200),
        ),

        child: Row(
          children: [
            // Icon
            Container(
              height: SizeConstant.lg * 2,
              width: SizeConstant.lg * 2,

              decoration: BoxDecoration(
                color: color.withValues(alpha: 0.12),
                borderRadius: BorderRadius.circular(10),
              ),

              child: EduIcon(
                borderVisible: false,
                iconsize: SizeConstant.iconMd,
                iconcolor: color,
                isVisible: false,
              ),
            ),

            const SizedBox(width: SizeConstant.md),

            // Assignment / Quiz Information
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  EduText(
                    name: title,
                    fontSize: SizeConstant.fontSizeSm + 2,
                    fontcolor: AppColors.onSurface,
                  ),

                  const SizedBox(height: 4),

                  EduText(
                    name: date,
                    fontSize: SizeConstant.fontSizeSm,
                    fontcolor: AppColors.greyColor,
                  ),

                  const SizedBox(height: 3),

                  EduText(
                    name: marks,
                    fontSize: SizeConstant.fontSizeSm,
                    fontcolor: AppColors.greyColor,
                  ),
                ],
              ),
            ),

            // Submitted Count
            Column(
              children: [
                EduText(
                  name: submitted,
                  fontSize: SizeConstant.fontSizeMd,
                  fontcolor: AppColors.info,
                ),

                const EduText(
                  name: 'Submitted',
                  fontSize: SizeConstant.fontSizeSm - 2,
                  fontcolor: AppColors.greyColor,
                ),
              ],
            ),

            const SizedBox(width: 5),

            const Icon(Icons.chevron_right, color: Colors.grey),
          ],
        ),
      ),
    );
  }
}
