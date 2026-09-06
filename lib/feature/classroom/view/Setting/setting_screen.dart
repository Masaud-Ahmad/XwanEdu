import 'package:flutter/material.dart';
import 'package:xwanedu/common/widgets/edutext.dart';
import 'package:xwanedu/common/widgets/edutextfield/textfiled.dart';
import 'package:xwanedu/common/widgets/elevated_button/elevated_button.dart';
import 'package:xwanedu/constant/colors.dart';
import 'package:xwanedu/constant/size.dart';
import 'package:xwanedu/constant/text_constant.dart';
import 'package:xwanedu/feature/classroom/view/Setting/widgets/editprofile.dart';
import 'package:xwanedu/feature/classroom/view/Setting/widgets/setting_section_card.dart';

class SettingsScreenView extends StatelessWidget {
  const SettingsScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Stack(
              children: [
                EditableProfileAvatar(
                  imageUrl: 'https://via.placeholder.com/150',
                  name: 'Alex Johnson',
                  subtitle: 'Student',
                ),
              ],
            ),
            const SizedBox(height: SizeConstant.spaceBtwSections),
            // ----------------------------------------
            // 1. PERSONAL INFORMATION CARD
            // ----------------------------------------
            Column(
              children: [
                SettingSectionCard(
                  title: 'Personal Information',
                  icon: Icons.person_outline,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Full Name',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF0A2540),
                        ),
                      ),
                      const SizedBox(height: SizeConstant.spaceBtwItems),
                      EduTextField(
                        emailController: TextEditingController(
                          text: 'Alex Johnson',
                        ),
                        fieldBg: AppColors.onPrimary,
                        borderColor: AppColors.onSurfaceVariant,
                        primaryBlue: AppColors.primary,
                        hintText: TextConstant.fullName,
                        // Assuming your EduTextField supports removing the prefix icon if null
                        // icon: Icons.person_outline_outlined,
                      ),
                      const SizedBox(height: 20),

                      const Text(
                        TextConstant.email,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF0A2540),
                        ),
                      ),
                      const SizedBox(height: SizeConstant.spaceBtwItems / 2),
                      EduTextField(
                        emailController: TextEditingController(
                          text: 'alex.johnson@eduflow.ac.edu',
                        ),
                        fieldBg: AppColors.onPrimary,
                        borderColor: AppColors.onSurfaceVariant,
                        primaryBlue: AppColors.primary,
                        hintText: 'Email',
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 20),

                // ----------------------------------------
                // 2. PREFERENCES CARD
                // ----------------------------------------
                SettingSectionCard(
                  title: TextConstant.preferences,
                  icon: Icons
                      .language, // Globe icon matching your reference image
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        TextConstant.displayLanguage,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF0A2540),
                        ),
                      ),
                      const SizedBox(height: SizeConstant.spaceBtwItems),
                      // Replace with your custom dropdown widget
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 14,
                        ),
                        decoration: BoxDecoration(
                          color: AppColors.onPrimary,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: AppColors.onSurfaceVariant),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text('English (US)'),
                            Icon(Icons.keyboard_arrow_down, color: Colors.grey),
                          ],
                        ),
                      ),
                      const SizedBox(height: 24),

                      // Dark Mode Toggle
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextWidget(
                            name: TextConstant.darkMode,
                            fontSize: SizeConstant.fontSizeMd.toInt(),
                            fontcolor: Color(0xFF0A2540),
                          ),
                          Switch(
                            value: false,
                            onChanged: (bool value) {
                              // Handle toggle state
                            },
                            // ignore: deprecated_member_use
                            activeColor: AppColors.primary,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: SizeConstant.spaceBtwSections),

            EduButton(text: 'Save', onPressed: () {}),
            const SizedBox(height: SizeConstant.spaceBtwSections),
          ],
        ),
      ),
    );
  }
}
