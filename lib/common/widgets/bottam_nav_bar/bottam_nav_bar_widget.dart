import 'package:flutter/material.dart';
import 'package:xwanedu/common/widgets/bottam_nav_bar/widgets/navbaritem.dart';
import 'package:xwanedu/constant/size.dart';

class BottomNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const BottomNavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      notchMargin: SizeConstant.sm,
      elevation: SizeConstant.sm,

      child: SizedBox(
        height: SizeConstant.sizeboxHeight,

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,

          children: [
            // HOME
            NavBarItem(
              onTap: onTap,
              currentIndex: currentIndex,
              index: 0,
              icon: Icons.home_outlined,
              activeIcon: Icons.home,
              title: 'Home',
            ),

            // SPACE FOR FAB
            const SizedBox(width: 50),

            // SETTINGS
            NavBarItem(
              onTap: onTap,
              currentIndex: currentIndex,
              index: 1,
              icon: Icons.settings_outlined,
              activeIcon: Icons.settings,
              title: 'Settings',
            ),
          ],
        ),
      ),
    );
  }
}
