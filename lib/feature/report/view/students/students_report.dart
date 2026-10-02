import 'package:flutter/material.dart';

class StudentReportScreen extends StatelessWidget {
  const StudentReportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,

      child: Scaffold(
        backgroundColor: const Color(0xFFF8F9FC),

        appBar: AppBar(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
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
              // Tabs
              Container(
                height: 45,
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(12),
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
                    // =========================
                    // ASSIGNMENT REPORT
                    // =========================
                    ListView(
                      children: [
                        reportCard(
                          title: 'Database Design',
                          date: 'Submitted: Mar 10, 2026',
                          marks: '18/20',
                          iconColor: Colors.blue,
                        ),

                        reportCard(
                          title: 'Normalized Schema',
                          date: 'Submitted: Mar 1, 2026',
                          marks: '16/20',
                          iconColor: Colors.purple,
                        ),

                        reportCard(
                          title: 'ER Diagram',
                          date: 'Submitted: Feb 20, 2026',
                          marks: '19/20',
                          iconColor: Colors.orange,
                        ),

                        reportCard(
                          title: 'SQL Queries',
                          date: 'Submitted: Feb 10, 2026',
                          marks: '14/20',
                          iconColor: Colors.green,
                        ),
                      ],
                    ),

                    // =========================
                    // QUIZ REPORT
                    // =========================
                    ListView(
                      children: [
                        reportCard(
                          title: 'Quiz 1',
                          date: 'Attempted: Mar 12, 2026',
                          marks: '9/10',
                          iconColor: Colors.blue,
                        ),

                        reportCard(
                          title: 'Quiz 2',
                          date: 'Attempted: Mar 1, 2026',
                          marks: '8/10',
                          iconColor: Colors.purple,
                        ),

                        reportCard(
                          title: 'Quiz 3',
                          date: 'Attempted: Feb 25, 2026',
                          marks: '10/10',
                          iconColor: Colors.orange,
                        ),

                        reportCard(
                          title: 'Quiz 4',
                          date: 'Attempted: Feb 15, 2026',
                          marks: '7/10',
                          iconColor: Colors.green,
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

  // Simple reusable card
  Widget reportCard({
    required String title,
    required String date,
    required String marks,
    required Color iconColor,
    
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(14),

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: Colors.grey.shade300),
      ),

      child: Row(
        children: [
          // Icon
          Container(
            height: 45,
            width: 45,

            decoration: BoxDecoration(
              color: iconColor.withValues(alpha: 0.12),
              borderRadius: BorderRadius.circular(10),
            ),

            child: Icon(Icons.description_outlined, color: iconColor),
          ),

          const SizedBox(width: 12),

          // Title + Subject + Date
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),

                const SizedBox(height: 3),

                const Text(
                  'DBMS Lab',
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),

                const SizedBox(height: 3),

                Text(
                  date,
                  style: const TextStyle(color: Colors.grey, fontSize: 11),
                ),
              ],
            ),
          ),

          // Marks
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),

            decoration: BoxDecoration(
              color: Colors.green.shade50,
              borderRadius: BorderRadius.circular(10),
            ),

            child: Text(
              marks,
              style: const TextStyle(
                color: Colors.green,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
