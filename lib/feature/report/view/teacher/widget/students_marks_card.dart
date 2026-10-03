import 'package:flutter/material.dart';

class StudentMarkTile extends StatelessWidget {
  const StudentMarkTile({
    super.key,
    required this.name,
    required this.rollNumber,
    required this.initials,
    required this.marks,
    required this.totalMarks,
    required this.color,
  });

  final String name;
  final String rollNumber;
  final String initials;
  final String marks;
  final int totalMarks;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),

      child: Row(
        children: [
          // Student Avatar
          CircleAvatar(
            radius: 22,
            backgroundColor: color.withValues(alpha: 0.15),

            child: Text(
              initials,
              style: TextStyle(color: color, fontWeight: FontWeight.bold),
            ),
          ),

          const SizedBox(width: 12),

          // Student Details
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

          // Marks Field
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
