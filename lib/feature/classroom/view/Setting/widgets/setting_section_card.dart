import 'package:flutter/material.dart';
import 'package:xwanedu/common/widgets/edutext.dart';
import 'package:xwanedu/constant/colors.dart';
import 'package:xwanedu/constant/size.dart';

class SettingSectionCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final Widget child;

  const SettingSectionCard({
    super.key,
    required this.title,
    required this.icon,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColors.onPrimary,
        borderRadius: BorderRadius.circular(SizeConstant.borderRadiusLg),
        border: Border.all(color: AppColors.onSurfaceVariant),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(51), // 0.02 * 255
            blurRadius: SizeConstant.borderRadiusMd,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Dynamic Card Header
          Row(
            children: [
              Icon(
                icon,
                color: AppColors.primary,
                size: SizeConstant.iconLg * .9,
              ),
              const SizedBox(width: SizeConstant.sm),
              TextWidget(
                name: title,
                fontSize: SizeConstant.fontSizeMd.toInt(),
                fontcolor: AppColors.primary,
              ),
            ],
          ),
          const SizedBox(height: SizeConstant.spaceBtwSections),

          // Custom Content Passed as Child
          child,
        ],
      ),
    );
  }
}
