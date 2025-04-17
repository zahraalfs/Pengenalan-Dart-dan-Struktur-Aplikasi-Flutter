import 'package:flutter/material.dart';
import '../models/student.dart';
import '../widgets/profile_card.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final Student student = Student(
    name: 'Zahra Alfiani Safitri',
    npm: '23621107',
    jurusan: 'Sistem Informasi',
    fakultas: 'Ilmu Komputer',
    universitas: 'Universitas Yapis Papua',
    photoUrl: 'assets/zaracantik.jpg',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Biodata Mahasiswa',
          style: TextStyle(
            color: Colors.white, // Mengatur warna teks menjadi putih
            fontWeight: FontWeight.bold, // Mengatur teks menjadi tebal
            fontSize: 24, // Mengatur ukuran font menjadi lebih besar
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 46, 46, 45),
      ),
      body: Stack(
        children: [
          // Background image
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/background.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Centering the ProfileCard
          Center(child: ProfileCard(student: student)),
        ],
      ),
    );
  }
}
