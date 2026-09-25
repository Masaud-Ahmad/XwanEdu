import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:xwanedu/common/widgets/edu_container/edu_container.dart';
import 'package:xwanedu/common/widgets/edutext/edutext.dart';
import 'package:xwanedu/common/widgets/edutextfield/textfiled.dart';
import 'package:xwanedu/common/widgets/elevated_button/elevated_button.dart';
import 'package:xwanedu/constant/colors.dart';
import 'package:xwanedu/constant/size.dart';
import 'package:xwanedu/utils/file_picker.dart';

class CreateAnnouncementScreen extends StatefulWidget {
  const CreateAnnouncementScreen({super.key});

  @override
  State<CreateAnnouncementScreen> createState() =>
      _CreateAnnouncementScreenState();
}

class _CreateAnnouncementScreenState extends State<CreateAnnouncementScreen> {
  final _titleController = TextEditingController();
  final _contentController = TextEditingController();

  final String _date = 'Mar 15, 2026';
  final String _time = '10:00 AM';

  @override
  void dispose() {
    _titleController.dispose();
    _contentController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Soft classroom/app background
      backgroundColor: AppColors.background,

      appBar: AppBar(
        // Keep app bar clean instead of strong blue
        backgroundColor: AppColors.surface,
        elevation: 5,

        leading: const CloseButton(color: AppColors.onSurface),

        title: const Text(
          'Create Announcement',
          style: TextStyle(
            color: AppColors.onSurface,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            // Course Info Banner
            Container(
              padding: const EdgeInsets.all(12),

              decoration: BoxDecoration(
                // Light blue classroom accent
                color: const Color(0xFFE8F0FE),

                borderRadius: BorderRadius.circular(12),

                border: Border.all(color: const Color(0xFFD6E4FF)),
              ),

              child: const Row(
                children: [
                  Icon(Icons.campaign, color: AppColors.primary, size: 28),

                  SizedBox(width: 12),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      EduText(
                        name: 'DBMS Lab Spring 2026 C',
                        fontSize: SizeConstant.fontSizeSm + 3,
                        fontcolor: AppColors.onSurface,
                      ),

                      EduText(
                        name: 'Section C • 42 Students',
                        fontSize: SizeConstant.fontSizeSm,
                        fontcolor: Color(0xFF667085),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // Title
            const EduText(
              name: 'Title *',
              fontSize: SizeConstant.fontSizeSm + 1,
              fontcolor: AppColors.onSurface,
            ),

            const SizedBox(height: 6),

            EduTextField(
              controller: _titleController,

              fieldBg: AppColors.surface,

              // Softer border
              borderColor: const Color(0xFFE2E8F0),

              primaryBlue: AppColors.primary,

              hintText: "Enter announcement Title",
            ),

            const SizedBox(height: 16),

            const EduText(
              name: 'Content ',
              fontSize: SizeConstant.fontSizeSm + 1,
              fontcolor: AppColors.onSurface,
            ),

            const SizedBox(height: 6),

            EduTextField(
              controller: _contentController,

              fieldBg: AppColors.surface,

              borderColor: const Color(0xFFE2E8F0),

              primaryBlue: AppColors.primary,

              hintText: 'Write Your announcement Here',

              maxline: 5,
            ),

            const SizedBox(height: 12),

            // Attach File
            const EduText(
              name: 'Attach File (Optional)',
              fontSize: SizeConstant.fontSizeSm,
              fontcolor: AppColors.onSurface,
            ),

            const SizedBox(height: 6),

            FilePickerTile(title: 'Choose File', onTap: () {}),

            const SizedBox(height: 16),

            // Date and Time
            const EduText(
              name: 'Date & Time',
              fontSize: SizeConstant.fontSizeSm,
              fontcolor: AppColors.onSurface,
            ),

            const SizedBox(height: 6),

            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(12),

                    decoration: BoxDecoration(
                      // White card
                      color: AppColors.surface,

                      border: Border.all(color: const Color(0xFFE2E8F0)),

                      borderRadius: BorderRadius.circular(10),
                    ),

                    child: Row(
                      children: [
                        const Icon(
                          Icons.calendar_today_outlined,
                          size: 16,

                          // Brand blue
                          color: AppColors.primary,
                        ),

                        const SizedBox(width: 8),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,

                          children: [
                            const Text(
                              'Date',
                              style: TextStyle(
                                color: Color(0xFF98A2B3),
                                fontSize: 10,
                              ),
                            ),

                            Text(
                              _date,
                              style: const TextStyle(
                                color: AppColors.onSurface,
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),

                const SizedBox(width: 12),

                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(12),

                    decoration: BoxDecoration(
                      color: AppColors.surface,

                      border: Border.all(color: const Color(0xFFE2E8F0)),

                      borderRadius: BorderRadius.circular(10),
                    ),

                    child: Row(
                      children: [
                        const Icon(
                          Icons.access_time_outlined,
                          size: 16,
                          color: AppColors.primary,
                        ),

                        const SizedBox(width: 8),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,

                          children: [
                            const Text(
                              'Time',
                              style: TextStyle(
                                color: Color(0xFF98A2B3),
                                fontSize: 10,
                              ),
                            ),

                            Text(
                              _time,
                              style: const TextStyle(
                                color: AppColors.onSurface,
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: SizeConstant.xl * 2),

            Row(
              children: [
                Expanded(
                  flex: 1,

                  child: EduButton(
                    borderRadius: 45,

                    isBorderVisible: true,

                    isBackgroundVisible: false,

                    // Neutral Cancel button
                    borderColor: const Color(0xFFCBD5E1),

                    textColor: const Color(0xFF475569),

                    text: 'Cancel',

                    onPressed: () {},
                  ),
                ),

                const SizedBox(width: 12),

                Expanded(
                  flex: 2,

                  child: EduButton(
                    borderRadius: 40,

                    // Main classroom brand action
                    backgroundColor: AppColors.primary,

                    textColor: Colors.white,

                    text: 'Post Announcement',

                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
