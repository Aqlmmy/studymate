import 'package:flutter/material.dart';

import '../widgets/custom_app_bar.dart';
import '../widgets/custom_text.dart';
import '../widgets/task_card.dart';
import 'task_detail_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  void openTaskDetail(
    BuildContext context, {
    required String title,
    required String deadline,
    required String description,
  }) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => TaskDetailScreen(
          title: title,
          deadline: deadline,
          description: description,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'StudyMate'),

      body: LayoutBuilder(
        builder: (context, constraints) {
          final isDesktop = constraints.maxWidth >= 700;

          return SingleChildScrollView(
            padding: EdgeInsets.symmetric(
              horizontal: isDesktop ? 40 : 20,
              vertical: 24,
            ),

            child: Center(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 1000),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CustomText(
                      text: 'Halo, Mahasiswa! 👋',
                      size: 26,
                      weight: FontWeight.bold,
                    ),

                    const SizedBox(height: 8),

                    const CustomText(
                      text: 'Berikut daftar tugas yang perlu kamu selesaikan.',
                      size: 16,
                    ),

                    const SizedBox(height: 28),

                    GridView.count(
                      crossAxisCount: isDesktop ? 2 : 1,
                      crossAxisSpacing: 16,
                      mainAxisSpacing: 4,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),

                      children: [
                        TaskCard(
                          title: 'Pemrograman Sistem Mobile',
                          deadline: 'Deadline: 30 September 2026',
                          onTap: () {
                            openTaskDetail(
                              context,
                              title: 'Pemrograman Sistem Mobile',
                              deadline: '30 September 2026',
                              description:
                                  'Buat project sederhana dengan '
                                  'minimal 3 screen dan komponen '
                                  'visual custom.',
                            );
                          },
                        ),

                        TaskCard(
                          title: 'Keamanan Jaringan',
                          deadline: 'Deadline: 2 Oktober 2026',
                          onTap: () {
                            openTaskDetail(
                              context,
                              title: 'Keamanan Jaringan',
                              deadline: '2 Oktober 2026',
                              description:
                                  'Membuat rangkuman materi '
                                  'keamanan jaringan dan '
                                  'menjelaskan konsep dasar '
                                  'keamanan sistem.',
                            );
                          },
                        ),

                        TaskCard(
                          title: 'Basis Data',
                          deadline: 'Deadline: 5 Oktober 2026',
                          onTap: () {
                            openTaskDetail(
                              context,
                              title: 'Basis Data',
                              deadline: '5 Oktober 2026',
                              description:
                                  'Membuat database akademik '
                                  'sederhana yang terdiri dari '
                                  'tabel mahasiswa dan nilai.',
                            );
                          },
                        ),

                        TaskCard(
                          title: 'Rekayasa Perangkat Lunak',
                          deadline: 'Deadline: 8 Oktober 2026',
                          onTap: () {
                            openTaskDetail(
                              context,
                              title: 'Rekayasa Perangkat Lunak',
                              deadline: '8 Oktober 2026',
                              description:
                                  'Membuat rancangan sistem '
                                  'perangkat lunak menggunakan '
                                  'diagram UML sederhana.',
                            );
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
