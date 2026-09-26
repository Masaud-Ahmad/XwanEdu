import 'package:flutter/material.dart';
import 'package:xwanedu/common/widgets/edu_icon/edu_icon.dart';
import 'package:xwanedu/common/widgets/edutext/edutext.dart';
import 'package:xwanedu/constant/colors.dart';
import 'package:xwanedu/constant/size.dart';

class ResourceCard extends StatelessWidget {
  const ResourceCard({
    super.key,
    required this.icon,
    required this.title,
    required this.fileInfo,
    required this.date,
    this.onDownload,
    this.onMore,
  });

  final IconData icon;
  final String title;
  final String fileInfo;
  final String date;

  final VoidCallback? onDownload;
  final VoidCallback? onMore;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(SizeConstant.sm + 3),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(SizeConstant.sm),
        border: Border.all(color: const Color.fromARGB(255, 211, 212, 216)),
      ),
      child: Row(
        children: [
          // File Icon
          EduIcon(
            borderVisible: false,
            iconsize: 55,
            iconcolor: AppColors.onSurfaceVariant,
            iconData: icon,
            isVisible: false,
          ),

          const SizedBox(width: 14),

          // Resource Information
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                EduText(
                  name: title,
                  fontSize: SizeConstant.fontSizeMd,
                  fontcolor: AppColors.onSurface,
                ),

                const SizedBox(height: 5),

                EduText(
                  name: fileInfo,
                  fontSize: SizeConstant.fontSizeSm,
                  fontcolor: AppColors.outline,
                ),

                EduText(
                  name: date,
                  fontSize: SizeConstant.fontSizeSm - 2,
                  fontcolor: const Color.fromARGB(255, 131, 134, 141),
                ),
              ],
            ),
          ),

          // Download
          EduIcon(
            borderVisible: false,
            iconsize: SizeConstant.iconMd,
            iconcolor: AppColors.secondary,
            isVisible: false,
            iconData: Icons.download,
            onTap: onDownload,
          ),

          const SizedBox(width: SizeConstant.sm - 2),

          // More
          EduIcon(
            borderVisible: false,
            iconsize: SizeConstant.iconMd - 1,
            iconcolor: AppColors.outline,
            isVisible: false,
            iconData: Icons.more_vert,
            onTap: onMore,
          ),
        ],
      ),
    );
  }
}
