import 'package:flutter/material.dart';
import 'package:xwanedu/feature/report/view/teacher/teacher_give_marks.dart';

class TeacherReportScreen extends StatefulWidget {
  const TeacherReportScreen({super.key});

  @override
  State<TeacherReportScreen> createState() => _TeacherReportScreenState();
}

class _TeacherReportScreenState extends State<TeacherReportScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: const Color(0xFFF8F9FC),

        appBar: AppBar(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 0,
          centerTitle: true,
          title: const Text(
            'Reports',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),

        body: Padding(
          padding: const EdgeInsets.all(16),

          child: Column(
            children: [
              // ---------------- TABS ----------------
              Container(
                height: 45,
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(10),
                ),

                child: TabBar(
                  indicatorSize: TabBarIndicatorSize.tab,

                  indicator: BoxDecoration(
                    color: const Color(0xFF1976E8),
                    borderRadius: BorderRadius.circular(10),
                  ),

                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.black,

                  tabs: const [
                    Tab(text: 'Assignments'),
                    Tab(text: 'Quizzes'),
                  ],
                ),
              ),

              const SizedBox(height: 15),

              Expanded(
                child: TabBarView(
                  children: [
                    // =====================================
                    // ASSIGNMENT REPORT
                    // =====================================
                    ListView(
                      children: [
                        reportCard(
                          context: context,
                          title: 'Database Design',
                          date: 'Due: Mar 10, 2026',
                          marks: '20 Marks',
                          submitted: '28/30',
                          color: Colors.blue,
                          totalMarks: 20,
                        ),

                        reportCard(
                          context: context,
                          title: 'Normalized Schema',
                          date: 'Due: Mar 1, 2026',
                          marks: '20 Marks',
                          submitted: '26/30',
                          color: Colors.purple,
                          totalMarks: 20,
                        ),

                        reportCard(
                          context: context,
                          title: 'ER Diagram',
                          date: 'Due: Feb 20, 2026',
                          marks: '20 Marks',
                          submitted: '30/30',
                          color: Colors.orange,
                          totalMarks: 20,
                        ),

                        reportCard(
                          context: context,
                          title: 'SQL Queries',
                          date: 'Due: Feb 10, 2026',
                          marks: '20 Marks',
                          submitted: '27/30',
                          color: Colors.green,
                          totalMarks: 20,
                        ),
                      ],
                    ),

                    // =====================================
                    // QUIZ REPORT
                    // =====================================
                    ListView(
                      children: [
                        reportCard(
                          context: context,
                          title: 'Quiz 1',
                          date: 'Mar 12, 2026',
                          marks: '10 Marks',
                          submitted: '28/30',
                          color: Colors.blue,
                          totalMarks: 10,
                        ),

                        reportCard(
                          context: context,
                          title: 'Quiz 2',
                          date: 'Mar 5, 2026',
                          marks: '10 Marks',
                          submitted: '25/30',
                          color: Colors.purple,
                          totalMarks: 10,
                        ),

                        reportCard(
                          context: context,
                          title: 'Quiz 3',
                          date: 'Feb 25, 2026',
                          marks: '10 Marks',
                          submitted: '30/30',
                          color: Colors.orange,
                          totalMarks: 10,
                        ),

                        reportCard(
                          context: context,
                          title: 'Quiz 4',
                          date: 'Feb 15, 2026',
                          marks: '10 Marks',
                          submitted: '27/30',
                          color: Colors.green,
                          totalMarks: 10,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // ============================================
  Widget reportCard({
    required BuildContext context,
    required String title,
    required String date,
    required String marks,
    required String submitted,
    required Color color,
    required int totalMarks,
  }) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) =>
                GiveMarksScreen(title: title, totalMarks: totalMarks),
          ),
        );
      },

      child: Container(
        margin: const EdgeInsets.only(bottom: 12),
        padding: const EdgeInsets.all(14),

        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(14),
          border: Border.all(color: Colors.grey.shade200),
        ),

        child: Row(
          children: [
            // ICON
            Container(
              height: 48,
              width: 48,

              decoration: BoxDecoration(
                color: color.withValues(alpha: 0.12),
                borderRadius: BorderRadius.circular(10),
              ),

              child: Icon(Icons.description_outlined, color: color),
            ),

            const SizedBox(width: 12),

            // INFORMATION
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),

                  const SizedBox(height: 4),

                  Text(
                    date,
                    style: const TextStyle(color: Colors.grey, fontSize: 11),
                  ),

                  const SizedBox(height: 3),

                  Text(
                    marks,
                    style: const TextStyle(color: Colors.grey, fontSize: 11),
                  ),
                ],
              ),
            ),

            // SUBMITTED
            Column(
              children: [
                Text(
                  submitted,
                  style: const TextStyle(
                    color: Color(0xFF1656C9),
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),

                const Text(
                  'Submitted',
                  style: TextStyle(color: Colors.grey, fontSize: 10),
                ),
              ],
            ),

            const SizedBox(width: 5),

            const Icon(Icons.chevron_right, color: Colors.grey),
          ],
        ),
      ),
    );
  }
}
