import 'package:flutter/material.dart';
import 'package:xwanedu/constant/colors.dart';
import 'package:xwanedu/constant/size.dart';

class ThreeDotIconButton extends StatelessWidget {
  const ThreeDotIconButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: const Icon(
        Icons.more_vert_rounded,
        size: SizeConstant.iconLg / 1.2,
      ),
      color: AppColors.onSurfaceVariant,
      padding: EdgeInsets.zero,
      constraints: const BoxConstraints(
        minWidth: SizeConstant.iconLg,
        minHeight: SizeConstant.iconLg,
      ),
    );
  }
}
