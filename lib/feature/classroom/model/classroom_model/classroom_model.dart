import 'package:flutter/material.dart';

class ClassroomModel {
  final String subject;
  final String section;
  final String teacher;
  final int students;
  final Color color;
  final IconData icon;

  ClassroomModel({
    required this.subject,
    required this.section,
    required this.teacher,
    required this.students,
    required this.color,
    required this.icon,
  });
}
