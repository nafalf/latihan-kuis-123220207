import 'package:flutter/material.dart';
import 'package:latihan_kuis_ptpm/pages/login_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({
    super.key,
    required this.nama,
    required this.nim,
    required this.pengalamanKerja,
    required this.pengalamanOrganisasi,
    required this.hardSkill,
    required this.softSkill,
    required this.pencapaian,
  });

  final String nama;
  final String nim;
  final String pengalamanKerja;
  final String pengalamanOrganisasi;
  final String hardSkill;
  final String softSkill;
  final String pencapaian;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profile Page')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Center( //center horizontal semua elemen
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/salah.jpg'), 
              ),
              const SizedBox(height: 20),
              Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start, // Teks rata kiri
                    children: [
                      Text('Nama: $nama', style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                      Text('NIM: $nim', style: const TextStyle(fontSize: 16)),
                      Text('Pengalaman Kerja: $pengalamanKerja', style: const TextStyle(fontSize: 16)),
                      Text('Pengalaman Organisasi: $pengalamanOrganisasi', style: const TextStyle(fontSize: 16)),
                      Text('Hard Skill: $hardSkill', style: const TextStyle(fontSize: 16)),
                      Text('Soft Skill: $softSkill', style: const TextStyle(fontSize: 16)),
                      Text('Pencapaian/Penghargaan: $pencapaian', style: const TextStyle(fontSize: 16)),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginPage()),
                    (Route<dynamic> route) => false,
                  );
                },
                child: const Text('Logout'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
