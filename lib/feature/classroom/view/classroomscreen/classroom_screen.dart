import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xwanedu/constant/colors.dart';
import 'package:xwanedu/constant/size.dart';
import 'package:xwanedu/feature/classroom/view/classroomscreen/widgets/cardbottom.dart';
import 'package:xwanedu/feature/classroom/view/classroomscreen/widgets/cardheader.dart';
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
      body: Obx(
        () => ListView.builder(
          padding: const EdgeInsets.all(SizeConstant.sm),

          itemCount: controller.classroomList.length,

          itemBuilder: (context, index) {
            final classroom = controller.classroomList[index];

            return Container(
              margin: const EdgeInsets.symmetric(
                horizontal: SizeConstant.sm,
                vertical:
                    SizeConstant.sm /
                    2, // Slightly tighter vertical spacing for lists
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(
                  SizeConstant.borderRadiusLg,
                ),
                border: Border.all(
                  color: AppColors.surfaceContainerHigh,
                  width: 1.0,
                ),
                // 1. ADD SOFT SHADOW: Gives the card a friendly, floating appearance
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withAlpha(10),
                    blurRadius: 16,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              // 2. ADD MATERIAL WRAPPER: Required for the InkWell ripple effect to clip correctly
              child: Material(
                color: Colors
                    .transparent, // Lets the white container background show through
                borderRadius: BorderRadius.circular(
                  SizeConstant.borderRadiusLg,
                ),
                clipBehavior: Clip.antiAlias,
                // 3. ADD INKWELL: Makes the card interactive with a tactile splash effect
                child: InkWell(
                  // Optional: Give the splash a subtle educational blue tint
                  highlightColor: Colors.blue.withAlpha(128),
                  splashColor: Colors.blue.withAlpha(26),
                  onTap: () {},
                  child: Column(
                    mainAxisSize:
                        MainAxisSize.min, // Prevents layout overflow issues
                    crossAxisAlignment: CrossAxisAlignment
                        .stretch, // Ensures header spans full width
                    children: [
                      // Blue Header (Subject name, class time, or gradient banner)
                      ClassRoomCardHeader(classroom: classroom),

                      // Teacher information & stats (Avatar, next assignment, etc.)
                      ClassRoomCardBottom(classroom: classroom),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
