import 'package:flutter/material.dart';
import 'package:xwanedu/common/widgets/edutext/edutext.dart';
import 'package:xwanedu/common/widgets/edutextfield/edutexttextfield.dart';
import 'package:xwanedu/constant/colors.dart';
import 'package:xwanedu/constant/size.dart';
import 'package:xwanedu/feature/resources/widgets/resource_card.dart';

class ResourcesScreen extends StatefulWidget {
  const ResourcesScreen({super.key});

  @override
  State<ResourcesScreen> createState() => _ResourcesScreenState();
}

class _ResourcesScreenState extends State<ResourcesScreen> {
  final _searchController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _searchController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,

      appBar: AppBar(
        backgroundColor: AppColors.primary,
        foregroundColor: AppColors.onPrimary,
        elevation: 2,
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            EduText(
              name: "Resource",
              fontSize: SizeConstant.fontSizeMd + 5,
              fontcolor: AppColors.onPrimary,
            ),
            EduText(
              name: "DBMs Lab Spring",
              fontSize: SizeConstant.fontSizeMd - 4,
              fontcolor: AppColors.onPrimary,
            ),
          ],
        ),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(SizeConstant.md - 4),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Search Field
            EduTextTextField(
              icon: Icons.search,
              hintText: 'Search resources...',
              controller: _searchController,
            ),

            const SizedBox(height: SizeConstant.md),

            const EduText(
              name: "Share Resources",
              fontSize: SizeConstant.fontSizeLg,
              fontcolor: AppColors.onSurface,
            ),

            const EduText(
              name: "Study Material Shared By Teacher",
              fontSize: SizeConstant.fontSizeMd - 4,
              fontcolor: Color.fromARGB(255, 152, 155, 158),
            ),

            const SizedBox(height: 18),

            // Resource 1
            ResourceCard(
              icon: Icons.picture_as_pdf_outlined,
              title: 'Normalization',
              fileInfo: 'PDF • 2.4 MB',
              date: 'Shared Sep 26, 2026',
            ),

            const SizedBox(height: 12),

            // Resource 2
            ResourceCard(
              icon: Icons.slideshow_outlined,
              title: 'SQL Joins Lecture',
              fileInfo: 'PPTX • 5.1 MB',
              date: 'Shared Sep 24, 2026',
            ),

            const SizedBox(height: 12),

            // Resource 3
            ResourceCard(
              icon: Icons.description_outlined,
              title: 'ER Diagram Notes',
              fileInfo: 'PDF • 1.8 MB',
              date: 'Shared Sep 21, 2026',
            ),

            const SizedBox(height: 12),

            // Resource 4
            ResourceCard(
              icon: Icons.article_outlined,
              title: 'DBMS Lab Manual',
              fileInfo: 'DOCX • 3.2 MB',
              date: 'Shared Sep 18, 2026',
            ),
          ],
        ),
      ),
    );
  }
}
