import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xwanedu/common/widgets/bottam_nav_bar/bottam_nav_bar_widget.dart';
import 'package:xwanedu/constant/colors.dart';
import 'package:xwanedu/feature/classroom/view/Setting/setting_screen.dart';
import 'package:xwanedu/feature/classroom/view/classroomscreen/classroom_screen.dart';
import 'package:xwanedu/feature/classroom/viewmodel/classroom/classroom_dashboard.dart';

class ClassroomDashboard extends StatefulWidget {
  const ClassroomDashboard({super.key});

  @override
  State<ClassroomDashboard> createState() => _ClassroomDashboardState();
}

class _ClassroomDashboardState extends State<ClassroomDashboard> {
  final NavigationController controller = Get.put(NavigationController());

  final List<Widget> screens = const [ClassroomScreen(), SettingsScreenView()];

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text(
            controller.currentIndex.value == 0 ? 'Classroom' : 'Settings',
            style: const TextStyle(color: AppColors.onPrimary),
          ),
          backgroundColor: AppColors.primary,
        ),
        body: screens[controller.currentIndex.value],

        floatingActionButton: FloatingActionButton(
          onPressed: controller.openScanner,

          backgroundColor: AppColors.primary,

          child: const Icon(Icons.qr_code_scanner, color: AppColors.onPrimary),
        ),

        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

        bottomNavigationBar: BottomNavBar(
          currentIndex: controller.currentIndex.value,

          onTap: (index) {
            controller.changePage(index);
          },
        ),
      ),
    );
  }
}
