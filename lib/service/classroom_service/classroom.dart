import 'package:flutter/material.dart';
import 'package:xwanedu/feature/classroom/model/classroom_model/classroom_model.dart';

class ClassroomService {
  List<ClassroomModel> getClassroom() {
    return [
      ClassroomModel(
        subject: 'Advanced Mathematics',
        section: 'Section A • Period 2',
        teacher: 'Dr. Sarah Jenkins',
        students: 24,
        color: const Color(0xff1976E8),
        icon: Icons.functions,
      ),
      ClassroomModel(
        subject: 'English Literature',
        section: 'Section C • Period 4',
        teacher: 'Prof. Michael Reed',
        students: 18,
        color: const Color(0xff00875A),
        icon: Icons.language,
      ),

      ClassroomModel(
        subject: 'General Biology',
        section: 'Section B • Period 1',
        teacher: 'Ms. Elena Rodriguez',
        students: 32,
        color: const Color(0xffB17A00),
        icon: Icons.biotech,
      ),

      ClassroomModel(
        subject: 'World History',
        section: 'Section A • Period 5',
        teacher: 'Mr. David Thompson',
        students: 21,
        color: const Color(0xff57400D),
        icon: Icons.account_balance,
      ),
    ];
  }
}
