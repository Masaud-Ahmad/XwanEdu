import 'package:flutter/material.dart';
import 'package:xwanedu/common/widgets/edutext/edutext.dart';
import 'package:xwanedu/constant/colors.dart';
import 'package:xwanedu/constant/size.dart';
import 'package:xwanedu/feature/report/view/teacher/widget/report_card.dart';

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
        backgroundColor: AppColors.background,

        appBar: AppBar(
          backgroundColor: AppColors.background,
          foregroundColor: AppColors.onSurface,
          elevation: 0,
          centerTitle: true,
          title: const EduText(
            name: 'Reports',
            fontSize: SizeConstant.lg,
            fontcolor: AppColors.onSurface,
          ),
        ),

        body: Padding(
          padding: const EdgeInsets.all(SizeConstant.lg),

          child: Column(
            children: [
              // ---------------- TABS ----------------
              Container(
                height: 45,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 218, 221, 226),
                  borderRadius: BorderRadius.circular(10),
                ),

                child: TabBar(
                  indicatorSize: TabBarIndicatorSize.tab,

                  indicator: BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.circular(10),
                  ),

                  labelColor: AppColors.background,
                  unselectedLabelColor: AppColors.onSurface,

                  tabs: const [
                    Tab(text: 'Assignments'),
                    Tab(text: 'Quizzes'),
                  ],
                ),
              ),

              const SizedBox(height: SizeConstant.lg),

              Expanded(
                child: TabBarView(
                  children: [
                    // =====================================
                    // ASSIGNMENT REPORT
                    // =====================================
                    ListView(
                      children: [
                        ReportCard(
                          title: 'Database Design',
                          date: 'Due: Mar 10, 2026',
                          marks: '20 Marks',
                          submitted: '28/30',
                          color: AppColors.info,
                          totalMarks: 20,
                        ),

                        ReportCard(
                          title: 'Normalized Schema',
                          date: 'Due: Mar 1, 2026',
                          marks: '20 Marks',
                          submitted: '26/30',
                          color: Colors.purple,
                          totalMarks: 20,
                        ),

                        ReportCard(
                          title: 'ER Diagram',
                          date: 'Due: Feb 20, 2026',
                          marks: '20 Marks',
                          submitted: '30/30',
                          color: Colors.orange,
                          totalMarks: 20,
                        ),

                        ReportCard(
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
                        ReportCard(
                          title: 'Quiz 1',
                          date: 'Mar 12, 2026',
                          marks: '10 Marks',
                          submitted: '28/30',
                          color: AppColors.primary,
                          totalMarks: 10,
                        ),

                        ReportCard(
                          title: 'Quiz 2',
                          date: 'Mar 5, 2026',
                          marks: '10 Marks',
                          submitted: '25/30',
                          color: Colors.purple,
                          totalMarks: 10,
                        ),

                        ReportCard(
                          title: 'Quiz 3',
                          date: 'Feb 25, 2026',
                          marks: '10 Marks',
                          submitted: '30/30',
                          color: Colors.orange,
                          totalMarks: 10,
                        ),

                        ReportCard(
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
}
