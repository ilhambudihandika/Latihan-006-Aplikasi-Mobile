
import 'package:flutter/material.dart';
import 'profile_stats.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text('Tentang Saya'),
        centerTitle: true,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: const [
                ProfileAvatar(),
                SizedBox(height: 20),
                ProfileInfo(),
                SizedBox(height: 30),
                ProfileStats(),
              ],
            ),
          ),
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
              'PROFILE MAHASISWA',
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
