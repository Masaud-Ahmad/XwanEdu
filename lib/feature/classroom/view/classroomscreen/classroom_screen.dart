import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xwanedu/common/widgets/three_dot_button/three_dot_button.dart';
import 'package:xwanedu/constant/colors.dart';
import 'package:xwanedu/constant/size.dart';
import 'package:xwanedu/feature/classroom/viewmodel/classroom/classroom.dart';

class ClassroomScreen extends StatefulWidget {
  const ClassroomScreen({super.key});

  @override
  State<ClassroomScreen> createState() => _ClassroomScreenState();
}

class _ClassroomScreenState extends State<ClassroomScreen> {
  @override
  Widget build(BuildContext context) {
    final Classroom controller = Get.put(Classroom());

    return Scaffold(
      appBar: AppBar(title: const Text('XwanEdu')),

      body: Obx(
        () => ListView.builder(
          padding: const EdgeInsets.all(SizeConstant.sm),

          itemCount: controller.classroomList.length,

          itemBuilder: (context, index) {
            final classroom = controller.classroomList[index];

            return Container(
              margin: const EdgeInsets.all(SizeConstant.sm / 2),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(
                  SizeConstant.borderRadiusLg - 2,
                ),
                border: Border.all(color: AppColors.surfaceContainerHigh),
              ),
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  // Blue Header
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(
                      horizontal: SizeConstant.md,
                      vertical: SizeConstant.md,
                    ),
                    color: AppColors.primary,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                classroom.subject,
                                style: TextStyle(
                                  color: AppColors.onPrimary,
                                  fontSize: SizeConstant.fontSizeLg,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),

                              const SizedBox(height: SizeConstant.xs / 2),

                              Text(
                                classroom.section,
                                style: TextStyle(
                                  color: Colors.white.withValues(alpha: 0.9),
                                  fontSize: SizeConstant.fontSizeMd,
                                ),
                              ),
                            ],
                          ),
                        ),

                        const Icon(
                          Icons.functions_rounded,
                          color: Colors.white70,
                          size: SizeConstant.iconLg,
                        ),
                      ],
                    ),
                  ),

                  // Teacher information
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 10,
                    ),
                    child: Row(
                      children: [
                        // Teacher image
                        const CircleAvatar(
                          radius: SizeConstant.iconMd,
                          backgroundImage: AssetImage(''),
                        ),

                        const SizedBox(width: 10),

                        // Teacher name + students
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                classroom.teacher,
                                style: TextStyle(
                                  color: AppColors.onSurface,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),

                              const SizedBox(height: 2),

                              Text(
                                "${classroom.students} Students",
                                style: TextStyle(
                                  color: AppColors.onSurfaceVariant,
                                  fontSize: 11,
                                ),
                              ),
                            ],
                          ),
                        ),

                        // Three-dot menu
                        ThreeDotIconButton(),
                      ],
                    ),
                  ),
                  //                  const SizedBox(height: SizeConstant.md),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
