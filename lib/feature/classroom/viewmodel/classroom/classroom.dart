import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:xwanedu/feature/classroom/model/classroom_model/classroom_model.dart';
import 'package:xwanedu/service/classroom_service/classroom.dart';

class Classroom extends GetxController {
  final ClassroomService _service = ClassroomService();

  final RxList<ClassroomModel> _classroomList = <ClassroomModel>[].obs;

  List<ClassroomModel> get classroomList => _classroomList;
  @override
  void onInit() {
    super.onInit();

    loadClassroom();
  }

  Future<void> loadClassroom() async {
    try {
      final data = _service.getClassroom();
      _classroomList.assignAll(data);

      debugPrint('The data is$data');
    } catch (e) {
      debugPrint("THe error $e");
    }
  }
}
