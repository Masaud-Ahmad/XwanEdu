import 'package:flutter/material.dart';

class FilePickerTile extends StatelessWidget {
  const FilePickerTile({
    super.key,
    required this.title,
    required this.onTap,
    this.subtitle = 'PDF, DOC, PPT, Images (Max 10 MB)',
    this.leadingIcon = Icons.attach_file,
    this.trailingIcon = Icons.chevron_right,
    this.iconColor = Colors.blue,
    this.borderColor,
    this.backgroundColor = Colors.transparent,
  });

  // Required
  final String title;
  final VoidCallback onTap;

  // Optional
  final String subtitle;
  final IconData leadingIcon;
  final IconData trailingIcon;
  final Color iconColor;
  final Color? borderColor;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(10),

      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),

        decoration: BoxDecoration(
          color: backgroundColor,
          border: Border.all(color: borderColor ?? Colors.grey.shade300),
          borderRadius: BorderRadius.circular(10),
        ),

        child: Row(
          children: [
            Icon(leadingIcon, color: iconColor, size: 20),

            const SizedBox(width: 12),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 13,
                    ),
                  ),

                  const SizedBox(height: 2),

                  Text(
                    subtitle,
                    style: const TextStyle(color: Colors.grey, fontSize: 11),
                  ),
                ],
              ),
            ),

            Icon(trailingIcon, color: Colors.grey),
          ],
        ),
      ),
    );
  }
}
