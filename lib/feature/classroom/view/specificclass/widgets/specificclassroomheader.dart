import 'package:flutter/material.dart';
import 'package:xwanedu/common/widgets/circleimage/circleimage.dart';
import 'package:xwanedu/common/widgets/edu_icon/edu_icon.dart';
import 'package:xwanedu/constant/colors.dart';
import 'package:xwanedu/constant/size.dart';

class SpecificClassroomHeader extends StatelessWidget {
  const SpecificClassroomHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(SizeConstant.cardRadiusLg),
        border: Border.all(color: const Color(0xFF35305E), width: 1.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Top Card Header Section (Blue/Purple Accent Style)
          Container(
            padding: const EdgeInsets.all(SizeConstant.md),
            decoration: const BoxDecoration(
              color: AppColors.primary,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(SizeConstant.cardRadiusLg),
                topRight: Radius.circular(SizeConstant.cardRadiusLg),
              ),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'DBMS Lab Spring 2026 C',
                        style: TextStyle(
                          fontSize: SizeConstant.fontSizeLg - 2,
                          fontWeight: FontWeight.bold,
                          color: AppColors.onPrimary,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Databases • Section C',
                        style: TextStyle(
                          color: AppColors.onPrimary,
                          fontSize: SizeConstant.fontSizeMd,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // Bottom Teacher & Details Section
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: SizeConstant.md,
              vertical: SizeConstant.md,
            ),
            child: Row(
              children: [
                const CircleImage(
                  imageUrl: 'imageUrl',
                  width: SizeConstant.iconLg * 1.5,
                  height: SizeConstant.iconLg * 1.5,
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Sumayyea Salahuddin',
                        style: TextStyle(
                          fontSize: SizeConstant.fontSizeMd - 2,
                          fontWeight: FontWeight.bold,
                          color: AppColors.onSurface,
                        ),
                      ),
                      SizedBox(height: SizeConstant.xs),
                      Text(
                        '42 Students',
                        style: TextStyle(
                          color: AppColors.onSurface,
                          fontSize: SizeConstant.fontSizeSm,
                        ),
                      ),
                    ],
                  ),
                ),
                EduIcon(
                  iconData: Icons.more_vert,
                  isVisible: false,
                  iconsize: SizeConstant.iconMd.toInt(),
                  onTap: () {},
                  borderVisible: false,
                  iconcolor: AppColors.primary,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
