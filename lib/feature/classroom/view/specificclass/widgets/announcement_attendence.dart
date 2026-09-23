import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xwanedu/constant/colors.dart';
import 'package:xwanedu/constant/size.dart';
import 'package:xwanedu/feature/announcement/announcement_screen.dart';
import 'package:xwanedu/feature/attendence/view/studentscreen.dart';
import 'package:xwanedu/feature/attendence/view/teacherscreen.dart';

class AnnouoncementAttendence extends StatelessWidget {
  final VoidCallback? onAddAnnouncement;
  final VoidCallback? onMarkAttendance;
  final String latestAnnouncement;
  final String attendanceStatus;

  const AnnouoncementAttendence({
    super.key,
    this.onAddAnnouncement,
    this.onMarkAttendance,
    this.latestAnnouncement = "Final Exam Prep Posted",
    this.attendanceStatus = "Session #6 • 38/42",
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Left: Announcement Compact Block
        Expanded(
          flex: 11,
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () {
                Get.to(CreateAnnouncementScreen());
              },
              borderRadius: BorderRadius.circular(12),
              child: Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: AppColors.onSurface),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Row(
                          children: [
                            Icon(
                              Icons.arrow_back_ios,
                              size: SizeConstant.iconSm - 2,
                              color: AppColors.onSurface,
                            ),
                            SizedBox(width: 2),
                            Text(
                              "Announcements",
                              style: TextStyle(
                                fontSize: SizeConstant.fontSizeMd,
                                fontWeight: FontWeight.bold,
                                color: AppColors.onSurface,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 4,
                            vertical: 2,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: const Icon(
                            Icons.campaign,
                            size: SizeConstant.iconSm,
                            color: Colors.amber,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        const SizedBox(width: 5),
        // Right: Attendance Action Button/Card
        Expanded(
          flex: 9,
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () {
                Get.to(StudentAttendanceScreen());
              },
              borderRadius: BorderRadius.circular(12),
              child: Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: AppColors.onSurface),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Row(
                      children: [
                        Icon(
                          Icons.how_to_reg,
                          color: Colors.greenAccent,
                          size: SizeConstant.iconSm + 4,
                        ),
                        SizedBox(width: 5),
                        Text(
                          "Attendance",
                          style: TextStyle(
                            fontSize: SizeConstant.fontSizeMd - 2,
                            fontWeight: FontWeight.bold,
                            color: AppColors.onSurface,
                          ),
                        ),

                        SizedBox(width: 10),

                        Icon(
                          Icons.arrow_forward_ios,
                          size: SizeConstant.iconSm - 2,
                          color: AppColors.onSurface,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
