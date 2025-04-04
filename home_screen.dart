import 'package:flutter/material.dart'; // Mengimpor Flutter Material untuk membangun UI
import 'quiz_screen.dart'; // Mengimpor halaman QuizScreen

// Kelas HomeScreen sebagai halaman awal aplikasi
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple, // Mengatur warna latar belakang menjadi ungu
      appBar: AppBar(title: Text("Quiz App")), // Menampilkan AppBar dengan judul
      body: Center(
        child: ElevatedButton(
          child: Text("Mulai Quiz"), // Tombol untuk memulai kuis
          onPressed: () {
            // Navigasi ke halaman QuizScreen ketika tombol ditekan
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => QuizScreen()),
            );
          },
        ),
      ),
    );
  }
}
