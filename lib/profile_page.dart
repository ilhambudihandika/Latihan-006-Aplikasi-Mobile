
import 'package:flutter/material.dart';
import 'profile_stats.dart';
import 'experience_card.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  final List<Map<String, String>> experiences = const [
    {
      'title': 'Belajar Flutter',
      'description': 'Mempelajari dasar pengembangan aplikasi mobile.',
    },
    {
      'title': 'Membuat Aplikasi Profil',
      'description': 'Membuat halaman profil menggunakan Flutter.',
    },
    {
      'title': 'Belajar Pemrograman Dart',
      'description': 'Mempelajari dasar bahasa pemrograman Dart.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text('Profil Mahasiswa'),
        centerTitle: true,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const ProfileAvatar(),
            const SizedBox(height: 20),
            const ProfileInfo(),
            const SizedBox(height: 25),
            const ProfileStats(),
            const SizedBox(height: 25),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Pengalaman',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: experiences.length,
                itemBuilder: (context, index) {
                  return ExperienceCard(
                    title: experiences[index]['title']!,
                    description: experiences[index]['description']!,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 60,
      backgroundColor: Colors.blue,
      child: CircleAvatar(
        radius: 55,
        backgroundColor: Color(0xFFE3F2FD),
        child: Icon(
          Icons.person,
          size: 60,
          color: Colors.blue,
        ),
      ),
    );
  }
}

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: const [
            Text(
              'BIODATA MAHASISWA',
              style: TextStyle(
                fontSize: 12,
                color: Colors.blue,
                letterSpacing: 2,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Ilham Budi Handika',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Teknik Informatika',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
