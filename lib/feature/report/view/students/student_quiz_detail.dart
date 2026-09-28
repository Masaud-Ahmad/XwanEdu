import 'package:flutter/material.dart';

class StudentQuizDetailScreen extends StatelessWidget {
  const StudentQuizDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FC),

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        foregroundColor: Colors.black,
        title: const Text(
          'Quiz Report',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),

        child: Column(
          children: [
            // Quiz Card
            Container(
              padding: const EdgeInsets.all(14),

              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(14),
                border: Border.all(color: Colors.grey.shade200),
              ),

              child: Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,

                    decoration: BoxDecoration(
                      color: const Color(0xFFE6F0FF),
                      borderRadius: BorderRadius.circular(12),
                    ),

                    child: const Icon(
                      Icons.description_outlined,
                      color: Color(0xFF1656C9),
                      size: 28,
                    ),
                  ),

                  const SizedBox(width: 12),

                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Quiz 1',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        SizedBox(height: 4),

                        Text(
                          'DBMS Lab',
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),

                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 7,
                    ),

                    decoration: BoxDecoration(
                      color: const Color(0xFFE5F8EB),
                      borderRadius: BorderRadius.circular(10),
                    ),

                    child: const Text(
                      '9/10',
                      style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // Date
            _detailRow(
              icon: Icons.calendar_today_outlined,
              title: 'Date',
              value: 'Mar 12, 2026',
            ),

            const Divider(),

            // Time Taken
            _detailRow(
              icon: Icons.access_time,
              title: 'Time Taken',
              value: '8 minutes',
            ),

            const Divider(),

            // Marks
            _detailRow(icon: Icons.star, title: 'Marks', value: '9 / 10'),

            const Divider(),

            // Status
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 14),

              child: Row(
                children: [
                  const Icon(Icons.description_outlined, size: 22),

                  const SizedBox(width: 14),

                  const Expanded(
                    child: Text('Status', style: TextStyle(fontSize: 15)),
                  ),

                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 6,
                    ),

                    decoration: BoxDecoration(
                      color: const Color(0xFFE5F8EB),
                      borderRadius: BorderRadius.circular(10),
                    ),

                    child: const Text(
                      'Completed',
                      style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const Divider(),

            // Feedback
            const SizedBox(height: 10),

            const Row(
              children: [
                Icon(Icons.chat_bubble_outline, size: 22),

                SizedBox(width: 14),

                Text(
                  'Teacher Feedback',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                ),
              ],
            ),

            const SizedBox(height: 12),

            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(15),

              decoration: BoxDecoration(
                color: const Color(0xFFF0F3F7),
                borderRadius: BorderRadius.circular(12),
              ),

              child: const Text('Well done!', style: TextStyle(fontSize: 14)),
            ),
          ],
        ),
      ),
    );
  }

  Widget _detailRow({
    required IconData icon,
    required String title,
    required String value,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 14),

      child: Row(
        children: [
          Icon(icon, size: 22),

          const SizedBox(width: 14),

          Expanded(child: Text(title, style: const TextStyle(fontSize: 15))),

          Text(
            value,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
