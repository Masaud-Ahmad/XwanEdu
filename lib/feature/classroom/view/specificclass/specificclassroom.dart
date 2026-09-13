import 'package:flutter/material.dart';
import 'package:xwanedu/common/widgets/circleimage/circleimage.dart';
import 'package:xwanedu/common/widgets/edu_icon/edu_icon.dart';
import 'package:xwanedu/constant/colors.dart';
import 'package:xwanedu/constant/size.dart';
import 'package:xwanedu/constant/text_constant.dart';

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
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    SizeConstant.cardRadiusLg,
                  ),
                  border: Border.all(
                    color: const Color(0xFF35305E),
                    width: 1.0,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Top Card Header Section (Blue/Purple Accent Style)
                    Container(
                      padding: const EdgeInsets.all(SizeConstant.md),
                      decoration: const BoxDecoration(
                        color: AppColors.primary,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(SizeConstant.cardRadiusLg),
                          topRight: Radius.circular(SizeConstant.cardRadiusLg),
                        ),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'DBMS Lab Spring 2026 C',
                                  style: TextStyle(
                                    fontSize: SizeConstant.fontSizeLg - 2,
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.onPrimary,
                                  ),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  'Databases • Section C',
                                  style: TextStyle(
                                    color: AppColors.onPrimary,
                                    fontSize: SizeConstant.fontSizeMd,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Bottom Teacher & Details Section
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: SizeConstant.md,
                        vertical: SizeConstant.md,
                      ),
                      child: Row(
                        children: [
                          const CircleImage(
                            imageUrl: 'imageUrl',
                            width: SizeConstant.iconLg * 1.5,
                            height: SizeConstant.iconLg * 1.5,
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Sumayyea Salahuddin',
                                  style: TextStyle(
                                    fontSize: SizeConstant.fontSizeMd - 2,
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.onSurface,
                                  ),
                                ),
                                SizedBox(height: SizeConstant.xs),
                                Text(
                                  '42 Students',
                                  style: TextStyle(
                                    color: AppColors.onSurface,
                                    fontSize: SizeConstant.fontSizeSm,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          EduIcon(
                            iconData: Icons.more_vert,
                            isVisible: false,
                            onTap: () {},
                            borderVisible: false,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: SizeConstant.md),

              Column(
                children: [
                  // Quick Actions Header
                  Row(
                    children: const [
                      Icon(
                        Icons.apps,
                        color: AppColors.onSurface,
                        size: SizeConstant.iconMd - 4,
                      ),
                      SizedBox(width: 8),
                      Text(
                        TextConstant.quickAction,
                        style: TextStyle(
                          fontSize: SizeConstant.lg,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: SizeConstant.cardElevation),

                  // Quick Actions Grid (Non-reusable custom widgets, fully inline)
                  GridView.count(
                    crossAxisCount: 2,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 1.2,
                    children: [
                      SpecificClassWidget(
                        title: 'Announcements',
                        subTitle: 'Share updates with students',
                        icon: Icons.campaign,
                      ),

                      SpecificClassWidget(
                        title: 'Quizzes',
                        subTitle: 'Attempt quizzes and view scores',
                        icon: Icons.bar_chart,
                      ),

                      SpecificClassWidget(
                        title: 'Assignments',
                        subTitle: 'Submit work and view grades',
                        icon: Icons.edit_note,
                      ),

                      SpecificClassWidget(
                        title: 'Students',
                        subTitle: 'View classmates',
                        icon: Icons.people,
                      ),

                      SpecificClassWidget(
                        title: 'Resources',
                        subTitle: 'Download study materials',
                        icon: Icons.folder,
                      ),

                      SpecificClassWidget(
                        title: 'Reports',
                        subTitle: 'View class performance',
                        icon: Icons.show_chart,
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 24),

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

class SpecificClassWidget extends StatefulWidget {
  const SpecificClassWidget({
    super.key,
    required this.title,
    required this.subTitle,
    required this.icon,
  });

  @override
  State<SpecificClassWidget> createState() => _SpecificClassWidgetState();
  final String title;
  final String subTitle;
  final IconData icon;
}

class _SpecificClassWidgetState extends State<SpecificClassWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(SizeConstant.md),
      decoration: BoxDecoration(
        color: const Color(0xFF262243),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(widget.icon as IconData?, color: Colors.orangeAccent, size: 28),
          SizedBox(height: 12),
          Text(
            widget.title,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 4),
          Text(
            widget.subTitle,
            style: TextStyle(fontSize: 11, color: Colors.white54),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
