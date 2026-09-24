import 'package:xwanedu/feature/assignment/model/assignment_model.dart';

List<AssignmentModel> assignments = [
  AssignmentModel(
    id: '1',
    title: 'Database Normalization',
    description: 'Normalize the given database tables up to Third Normal Form.',
    dueDate: '28 Sep 2026',
    totalMarks: 20,
    attachment: 'normalization_questions.pdf',
    submittedStudents: 28,
    totalStudents: 42,
  ),

  AssignmentModel(
    id: '2',
    title: 'SQL Queries',
    description:
        'Write SQL queries for the questions provided in the attached file.',
    dueDate: '05 Oct 2026',
    totalMarks: 15,
    submittedStudents: 12,
    totalStudents: 42,
  ),
];

List<StudentSubmissionModel> submissions = [
  StudentSubmissionModel(
    name: 'Ahmed Khan',
    rollNumber: '23PWCSE2210',
    submitted: true,
    fileName: 'ahmed_assignment.pdf',
  ),
  StudentSubmissionModel(
    name: 'Sara Khan',
    rollNumber: '23PWCSE2245',
    submitted: true,
    fileName: 'sara_assignment.pdf',
  ),
  StudentSubmissionModel(
    name: 'Ali Hassan',
    rollNumber: '23PWCSE2260',
    submitted: false,
  ),
];
