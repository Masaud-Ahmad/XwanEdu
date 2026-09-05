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
                  ClassRoomCardHeader(classroom: classroom),

                  // Teacher information
                  ClassRoomCardBottom(classroom: classroom),
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
