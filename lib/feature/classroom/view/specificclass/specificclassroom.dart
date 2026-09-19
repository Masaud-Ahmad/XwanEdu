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
import 'package:xwanedu/feature/classroom/view/specificclass/widgets/announcement_attendence.dart';
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
              AnnouoncementAttendence(),
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
