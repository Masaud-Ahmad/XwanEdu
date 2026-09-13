import 'package:flutter/material.dart';
import 'package:xwanedu/constant/size.dart';
import 'package:xwanedu/feature/classroom/view/specificclass/widgets/gridviewitems.dart';
import 'package:xwanedu/feature/classroom/view/specificclass/widgets/specificclassroomheader.dart';

class ClassroomDashboardScreen extends StatelessWidget {
  const ClassroomDashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(SizeConstant.md),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header Section
              SpecificClassroomHeader(),
              const SizedBox(height: SizeConstant.md),

              // Quick Actions Header
              GridViewItems(),
              const SizedBox(height: SizeConstant.md),

              // Recent Activity Header
              Row(
                children: const [
                  Icon(Icons.history, color: Colors.purpleAccent, size: 20),
                  SizedBox(width: 8),
                  Text(
                    "Recent Activity",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
