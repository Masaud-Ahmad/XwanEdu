class AssignmentModel {
  final String id;
  final String title;
  final String description;
  final String dueDate;
  final int totalMarks;
  final String? attachment;
  final int submittedStudents;
  final int totalStudents;

  AssignmentModel({
    required this.id,
    required this.title,
    required this.description,
    required this.dueDate,
    required this.totalMarks,
    this.attachment,
    this.submittedStudents = 0,
    this.totalStudents = 0,
  });
}

class StudentSubmissionModel {
  final String name;
  final String rollNumber;
  final bool submitted;
  final String? fileName;
  int? marks;

  StudentSubmissionModel({
    required this.name,
    required this.rollNumber,
    required this.submitted,
    this.fileName,
    this.marks,
  });
}
