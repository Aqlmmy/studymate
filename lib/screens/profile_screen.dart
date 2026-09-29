import 'package:flutter/material.dart';

import '../widgets/custom_app_bar.dart';
import '../widgets/custom_text.dart';
import '../widgets/secondary_button.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Profil'),

      body: Padding(
        padding: const EdgeInsets.all(24),

        child: Column(
          children: [
            const SizedBox(height: 30),

            const CircleAvatar(radius: 55, child: Icon(Icons.person, size: 55)),

            const SizedBox(height: 20),

            const CustomText(
              text: 'Mahasiswa Informatika',
              size: 22,
              weight: FontWeight.bold,
            ),

            const SizedBox(height: 8),

            const CustomText(text: 'mahasiswa@untirta.ac.id', size: 15),

            const SizedBox(height: 30),

            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.indigo.withValues(alpha: 0.08),
              ),

              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: 'Informasi Mahasiswa',
                    size: 18,
                    weight: FontWeight.bold,
                  ),

                  SizedBox(height: 12),

                  CustomText(text: 'Program Studi: Informatika', size: 15),

                  SizedBox(height: 6),

                  CustomText(text: 'Status: Mahasiswa Aktif', size: 15),
                ],
              ),
            ),

            const SizedBox(height: 30),

            SecondaryButton(text: 'Edit Profil', onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
