import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xwanedu/constant/colors.dart';
import 'package:xwanedu/constant/size.dart';
import 'package:xwanedu/constant/text_constant.dart';
import 'package:xwanedu/feature/authentication/viewmodel/onboarding/onboarding.dart';

class NextSkipbuttons extends StatelessWidget {
  const NextSkipbuttons({super.key, required this.controller});

  final Onboarding controller;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      right: 0,
      bottom: SizeConstant.lg * 2,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: SizeConstant.md),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Skip button
            Obx(
              () => controller.currentPage.value == 2
                  ? const SizedBox(width: 80)
                  : TextButton(
                      onPressed: controller.skipOnboarding,
                      style: TextButton.styleFrom(
                        foregroundColor: AppColors.onSurfaceVariant,
                        padding: const EdgeInsets.symmetric(
                          horizontal: SizeConstant.buttonElevation,
                          vertical: SizeConstant.buttonElevation,
                        ),
                      ),
                      child: const Text(
                        TextConstant.skip,
                        style: TextStyle(
                          fontSize: SizeConstant.fontSizeMd,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
            ),

            // Next button
            ElevatedButton(
              onPressed: controller.nextPage,
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primary,
                foregroundColor: AppColors.onPrimary,
                elevation: 0,
                padding: const EdgeInsets.symmetric(
                  horizontal: 26,
                  vertical: 14,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    SizeConstant.borderRadiusMd,
                  ),
                ),
              ),
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    TextConstant.next,
                    style: TextStyle(
                      fontSize: SizeConstant.fontSizeMd,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(width: 8),
                  Icon(Icons.arrow_forward_rounded, size: 19),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
