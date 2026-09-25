import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DialogBox {
  static void giveStudentMarks({required Function(int marks) onSave}) {
    final TextEditingController marksController = TextEditingController();

    showDialog(
      context: Get.overlayContext!,
      barrierDismissible: false,
      builder: (_) => AlertDialog(
        content: TextField(
          controller: marksController,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            hintText: 'Enter marks',

            border: const OutlineInputBorder(),
          ),
        ),

        actions: [
          TextButton(
            onPressed: () {
              Get.back();
            },
            child: const Text('Cancel'),
          ),

          ElevatedButton(
            onPressed: () {
              final marks = int.tryParse(marksController.text);

              if (marks == null || marks < 0) {
                Get.snackbar(
                  'Invalid Marks',
                  'Marks Should be Greater than 0 ',
                );
                return;
              }

              onSave(marks);

              Get.back();
            },
            child: const Text('Save'),
          ),
        ],
      ),
    );
  }
}
