import 'package:flutter/material.dart';

class TaskCard extends StatelessWidget {
  final String title;
  final String deadline;
  final VoidCallback onTap;

  const TaskCard({
    super.key,
    required this.title,
    required this.deadline,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      margin: const EdgeInsets.only(bottom: 12),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: ListTile(
        contentPadding: const EdgeInsets.all(16),

        leading: const CircleAvatar(child: Icon(Icons.assignment)),

        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),

        subtitle: Text(deadline),

        trailing: const Icon(Icons.arrow_forward_ios, size: 18),

        onTap: onTap,
      ),
    );
  }
}
