import 'package:flutter/material.dart';

class GiveMarksScreen extends StatelessWidget {
  const GiveMarksScreen({
    super.key,
    required this.title,
    required this.totalMarks,
  });

  final String title;
  final int totalMarks;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FC),

      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        centerTitle: true,

        title: const Text(
          'Give Marks',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),

        child: Column(
          children: [
            // ====================================
            // ASSIGNMENT / QUIZ INFORMATION
            // ====================================
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
                    height: 48,
                    width: 48,

                    decoration: BoxDecoration(
                      color: const Color(0xFFE8F2FF),
                      borderRadius: BorderRadius.circular(10),
                    ),

                    child: const Icon(
                      Icons.description_outlined,
                      color: Color(0xFF1656C9),
                    ),
                  ),

                  const SizedBox(width: 12),

                  Column(
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
                        '$totalMarks Marks',
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 18),

            // ====================================
            // STUDENTS
            // ====================================
            Expanded(
              child: ListView(
                children: [
                  studentMarkTile(
                    name: 'Ahmed Khan',
                    rollNumber: '23PWCSE2210',
                    initials: 'AH',
                    marks: totalMarks == 20 ? '18' : '9',
                    totalMarks: totalMarks,
                    color: Colors.blue,
                  ),

                  studentMarkTile(
                    name: 'Sara Ali',
                    rollNumber: '23PWCSE2211',
                    initials: 'SA',
                    marks: totalMarks == 20 ? '16' : '8',
                    totalMarks: totalMarks,
                    color: Colors.purple,
                  ),

                  studentMarkTile(
                    name: 'Fatima Ahmad',
                    rollNumber: '23PWCSE2212',
                    initials: 'FA',
                    marks: totalMarks == 20 ? '19' : '10',
                    totalMarks: totalMarks,
                    color: Colors.green,
                  ),

                  studentMarkTile(
                    name: 'Hamza Raza',
                    rollNumber: '23PWCSE2213',
                    initials: 'HA',
                    marks: totalMarks == 20 ? '14' : '7',
                    totalMarks: totalMarks,
                    color: Colors.orange,
                  ),

                  studentMarkTile(
                    name: 'Ayesha Latif',
                    rollNumber: '23PWCSE2214',
                    initials: 'AL',
                    marks: totalMarks == 20 ? '17' : '8',
                    totalMarks: totalMarks,
                    color: Colors.blue,
                  ),
                ],
              ),
            ),

            // ====================================
            // SAVE BUTTON
            // ====================================
            SizedBox(
              width: double.infinity,
              height: 50,

              child: ElevatedButton(
                onPressed: () {},

                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF1656C9),
                  foregroundColor: Colors.white,

                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),

                child: const Text(
                  'Save Marks',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // ============================================
  // STUDENT TILE
  // ============================================

  Widget studentMarkTile({
    required String name,
    required String rollNumber,
    required String initials,
    required String marks,
    required int totalMarks,
    required Color color,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),

      child: Row(
        children: [
          // STUDENT AVATAR
          CircleAvatar(
            radius: 22,

            backgroundColor: color.withValues(alpha: 0.15),

            child: Text(
              initials,
              style: TextStyle(color: color, fontWeight: FontWeight.bold),
            ),
          ),

          const SizedBox(width: 12),

          // STUDENT DETAILS
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Text(name, style: const TextStyle(fontWeight: FontWeight.w600)),

                const SizedBox(height: 3),

                Text(
                  rollNumber,
                  style: const TextStyle(color: Colors.grey, fontSize: 11),
                ),
              ],
            ),
          ),

          // MARKS FIELD
          SizedBox(
            width: 55,
            height: 42,

            child: TextField(
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,

              decoration: InputDecoration(
                hintText: marks,

                contentPadding: EdgeInsets.zero,

                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ),

          const SizedBox(width: 6),

          Text('/$totalMarks', style: const TextStyle(color: Colors.grey)),
        ],
      ),
    );
  }
}
