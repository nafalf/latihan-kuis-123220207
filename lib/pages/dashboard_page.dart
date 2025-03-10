import 'package:flutter/material.dart';
import 'package:latihan_kuis_ptpm/pages/profile_page.dart';
import 'package:latihan_kuis_ptpm/pages/save_button.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key, required this.username, required this.opsional});
  final String username;
  final String? opsional;

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _nimController = TextEditingController();
  final TextEditingController _workExpController = TextEditingController();
  final TextEditingController _orgExpController = TextEditingController();
  final TextEditingController _hardSkillController = TextEditingController();
  final TextEditingController _softSkillController = TextEditingController();
  final TextEditingController _achievementsController = TextEditingController();

  void saveData() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return ProfilePage(
            nama: _nameController.text,
            nim: _nimController.text,
            pengalamanKerja: _workExpController.text,
            pengalamanOrganisasi: _orgExpController.text,
            hardSkill: _hardSkillController.text,
            softSkill: _softSkillController.text,
            pencapaian: _achievementsController.text,
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Selamat Datang ${widget.opsional != null && widget.opsional!.isNotEmpty ? widget.opsional : widget.username}",
          style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        toolbarHeight: 100.0, // Tinggi app bar disesuaikan
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SizedBox(height: 10), // Tambahkan sedikit jarak agar lebih rapi
            TextField(
              controller: _nameController,
              decoration: const InputDecoration(labelText: 'Nama Lengkap', border: OutlineInputBorder()),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: _nimController,
              decoration: const InputDecoration(labelText: 'NIM', border: OutlineInputBorder()),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: _workExpController,
              decoration: const InputDecoration(labelText: 'Pengalaman Kerja', border: OutlineInputBorder()),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: _orgExpController,
              decoration: const InputDecoration(labelText: 'Pengalaman Organisasi', border: OutlineInputBorder()),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: _hardSkillController,
              decoration: const InputDecoration(labelText: 'Hard Skill', border: OutlineInputBorder()),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: _softSkillController,
              decoration: const InputDecoration(labelText: 'Soft Skill', border: OutlineInputBorder()),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: _achievementsController,
              decoration: const InputDecoration(labelText: 'Pencapaian/Penghargaan', border: OutlineInputBorder()),
            ),
            const SizedBox(height: 20),
            SaveButton(
              onPressed: saveData,
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
