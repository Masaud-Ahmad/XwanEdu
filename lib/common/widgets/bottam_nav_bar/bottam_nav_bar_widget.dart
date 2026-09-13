import 'package:flutter/material.dart';
import 'package:xwanedu/common/widgets/bottam_nav_bar/widgets/navbaritem.dart';
import 'package:xwanedu/constant/size.dart';

class BottomNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  // Different items can be passed from different screens
  final List<NavItem> items;

  // Different shape can also be passed
  final NotchedShape? shape;

  const BottomNavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
    required this.items,
    this.shape,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: shape,
      notchMargin: SizeConstant.sm,
      elevation: SizeConstant.sm,

      child: SizedBox(
        height: SizeConstant.sizeboxHeight,

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,

          children: List.generate(items.length, (index) {
            final item = items[index];

            return NavBarItem(
              onTap: onTap,
              currentIndex: currentIndex,
              index: index,
              icon: item.icon,
              activeIcon: item.activeIcon,
              title: item.title,
            );
          }),
        ),
      ),
    );
  }
}

// This contains information about one navbar button
class NavItem {
  final IconData icon;
  final IconData activeIcon;
  final String title;

  const NavItem({
    required this.icon,
    required this.activeIcon,
    required this.title,
  });
}
