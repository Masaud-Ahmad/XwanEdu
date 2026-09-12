import 'package:flutter/material.dart';
import 'package:xwanedu/constant/colors.dart';
import 'package:xwanedu/constant/size.dart';

class NavBarItem extends StatelessWidget {
  const NavBarItem({
    super.key,
    required this.onTap,
    required this.currentIndex,
    required this.index,
    required this.icon,
    required this.activeIcon,
    required this.title,
  });

  final Function(int) onTap;
  final int currentIndex;
  final int index;

  final IconData icon;
  final IconData activeIcon;
  final String title;

  @override
  Widget build(BuildContext context) {
    final bool isSelected = currentIndex == index;

    return GestureDetector(
      onTap: () => onTap(index),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Icon(
            isSelected ? activeIcon : icon,
            size: SizeConstant.iconLg * .9,
            color: isSelected ? AppColors.primary : AppColors.onSurfaceVariant,
          ),

          const SizedBox(height: SizeConstant.xs),

          Text(
            title,
            style: TextStyle(
              fontSize: SizeConstant.fontSizeSm,

              fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,

              color: isSelected
                  ? AppColors.primary
                  : AppColors.onSurfaceVariant,
            ),
          ),
        ],
      ),
    );
  }
}
