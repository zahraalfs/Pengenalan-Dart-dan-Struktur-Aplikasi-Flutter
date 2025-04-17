import 'package:flutter/material.dart';
import '../models/student.dart';

class ProfileCard extends StatelessWidget {
  final Student student;

  const ProfileCard({super.key, required this.student});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.all(16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      color: const Color.fromARGB(
        255,
        185,
        185,
        185,
      ), // Mengatur warna latar belakang menjadi abu-abu
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(student.photoUrl),
              radius: 50,
            ),
            const SizedBox(height: 16),
            Text(
              student.name,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text('NPM: ${student.npm}'),
            Text('Jurusan: ${student.jurusan}'),
            Text('Fakultas: ${student.fakultas}'),
            Text('Universitas: ${student.universitas}'),
          ],
        ),
      ),
    );
  }
}
