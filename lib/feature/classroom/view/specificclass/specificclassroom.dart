// import 'package:flutter/material.dart';
// import 'package:xwanedu/common/widgets/bottam_nav_bar/bottam_nav_bar_widget.dart';
// import 'package:xwanedu/constant/colors.dart';
// import 'package:xwanedu/constant/size.dart';
// import 'package:xwanedu/feature/classroom/view/specificclass/widgets/gridviewitems.dart';
// import 'package:xwanedu/feature/classroom/view/specificclass/widgets/specificclassroomheader.dart';

// class ClassroomDashboardScreen extends StatelessWidget {
//   const ClassroomDashboardScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: SingleChildScrollView(
//           padding: const EdgeInsets.all(SizeConstant.md),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               // Header Section
//               SpecificClassroomHeader(),
//               const SizedBox(height: SizeConstant.md),

//               // Quick Actions Header
//               GridViewItems(),
//               const SizedBox(height: SizeConstant.md),

//               // Recent Activity Header
//               Row(
//                 children: const [
//                   Icon(Icons.history, color: Colors.purpleAccent, size: 20),
//                   SizedBox(width: 8),
//                   Text(
//                     "Recent Activity",
//                     style: TextStyle(
//                       fontSize: 18,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.white,
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),

//       floatingActionButton: FloatingActionButton(
//         onPressed: () {},

//         backgroundColor: AppColors.primary,

//         child: const Icon(Icons.chat_sharp, color: AppColors.onPrimary),
//       ),

//       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

//       bottomNavigationBar: BottomNavBar(
//         currentIndex: 0,
//         items: [
//           NavItem(icon: Icons.stream, activeIcon: Icons.home, title: 'Stream'),

//           NavItem(
//             icon: Icons.assignment,
//             activeIcon: Icons.task,
//             title: 'ClassWork',
//           ),

//           NavItem(
//             icon: Icons.calendar_month_outlined,
//             activeIcon: Icons.calendar_month,
//             title: 'Calendar',
//           ),

//           NavItem(
//             icon: Icons.people,
//             activeIcon: Icons.settings,
//             title: 'Students',
//           ),
//         ],
//         onTap: (index) {
//           // Handle navigation tap
//         },
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:xwanedu/common/widgets/bottam_nav_bar/bottam_nav_bar_widget.dart';
import 'package:xwanedu/constant/colors.dart';
import 'package:xwanedu/constant/size.dart';
import 'package:xwanedu/feature/classroom/view/specificclass/widgets/gridviewitems.dart';
import 'package:xwanedu/feature/classroom/view/specificclass/widgets/specificclassroomheader.dart';

class ClassroomDashboardScreen extends StatelessWidget {
  const ClassroomDashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(SizeConstant.md),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header Section
              const SpecificClassroomHeader(),
              const SizedBox(height: SizeConstant.md),

              // Modular Announcements Section
              ClassroomQuickOpsRow(),
              const SizedBox(height: SizeConstant.md),

              // Quick Actions Header / Grid
              const GridViewItems(),
              const SizedBox(height: SizeConstant.md),

              // Recent Activity Header
              Row(
                children: const [
                  Icon(Icons.history, color: Colors.purpleAccent, size: 20),
                  SizedBox(width: 8),
                  Text(
                    "Recent Activity",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: AppColors.primary,
        child: const Icon(Icons.chat_sharp, color: AppColors.onPrimary),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavBar(
        currentIndex: 0,
        items: const [
          NavItem(icon: Icons.stream, activeIcon: Icons.home, title: 'Stream'),
          NavItem(
            icon: Icons.assignment,
            activeIcon: Icons.task,
            title: 'ClassWork',
          ),
          NavItem(
            icon: Icons.calendar_month_outlined,
            activeIcon: Icons.calendar_month,
            title: 'Calendar',
          ),
          NavItem(
            icon: Icons.people,
            activeIcon: Icons.settings,
            title: 'Students',
          ),
        ],
        onTap: (index) {
          // Handle navigation tap
        },
      ),
    );
  }
}

class ClassroomQuickOpsRow extends StatelessWidget {
  final VoidCallback? onAddAnnouncement;
  final VoidCallback? onMarkAttendance;
  final String latestAnnouncement;
  final String attendanceStatus;

  const ClassroomQuickOpsRow({
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
              onTap: onAddAnnouncement,
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
                              size: 9,
                              color: AppColors.onSurface,
                            ),
                            SizedBox(width: 5),
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
                            horizontal: 6,
                            vertical: 2,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: const Icon(
                            Icons.campaign,
                            color: Colors.amberAccent,
                            size: 15,
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
        const SizedBox(width: 10),
        // Right: Attendance Action Button/Card
        Expanded(
          flex: 9,
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: onMarkAttendance,
              borderRadius: BorderRadius.circular(12),
              child: Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: AppColors.primary.withOpacity(0.35),
                  ),
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
                          size: 15,
                        ),
                        SizedBox(width: 5),
                        Text(
                          "Attendance",
                          style: TextStyle(
                            fontSize: SizeConstant.fontSizeMd,
                            fontWeight: FontWeight.bold,
                            color: AppColors.onSurface,
                          ),
                        ),

                        SizedBox(width: 10),

                        Icon(
                          Icons.arrow_forward_ios,
                          size: 9,
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
