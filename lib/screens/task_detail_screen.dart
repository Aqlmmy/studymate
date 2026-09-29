import 'package:flutter/material.dart';

import '../widgets/custom_text.dart';
import '../widgets/primary_button.dart';
import '../widgets/secondary_button.dart';

class TaskDetailScreen extends StatefulWidget {
  final String title;
  final String deadline;
  final String description;

  const TaskDetailScreen({
    super.key,
    required this.title,
    required this.deadline,
    required this.description,
  });

  @override
  State<TaskDetailScreen> createState() => _TaskDetailScreenState();
}

class _TaskDetailScreenState extends State<TaskDetailScreen> {
  bool isCompleted = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const CustomText(
          text: 'Detail Tugas',
          size: 20,
          weight: FontWeight.bold,
        ),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(text: widget.title, size: 24, weight: FontWeight.bold),

            const SizedBox(height: 12),

            CustomText(text: 'Deadline: ${widget.deadline}', size: 16),

            const SizedBox(height: 24),

            CustomText(text: widget.description, size: 16),

            const SizedBox(height: 30),

            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: isCompleted
                    ? Colors.green.shade100
                    : Colors.orange.shade100,
                borderRadius: BorderRadius.circular(12),
              ),
              child: CustomText(
                text: isCompleted
                    ? '✓ Tugas sudah selesai'
                    : '○ Tugas belum selesai',
                size: 16,
                weight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            PrimaryButton(
              text: isCompleted ? 'Tugas Selesai ✓' : 'Tandai Selesai',
              onPressed: () {
                setState(() {
                  isCompleted = !isCompleted;
                });
              },
            ),

            const SizedBox(height: 12),

            SecondaryButton(
              text: 'Kembali',
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
