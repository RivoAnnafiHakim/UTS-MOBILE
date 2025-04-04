import 'package:flutter/material.dart'; // Mengimpor Flutter Material untuk UI
import 'package:provider/provider.dart'; // Mengimpor Provider untuk state management
import '../providers/quiz_provider.dart'; // Mengimpor QuizProvider untuk mengelola state kuis
import 'home_screen.dart'; // Mengimpor halaman HomeScreen untuk navigasi ulang

// Kelas ResultScreen sebagai halaman hasil kuis
class ResultScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final quiz = Provider.of<QuizProvider>(context); // Mengakses instance QuizProvider

    return Scaffold(
      backgroundColor: Colors.purple, // Mengatur warna latar belakang menjadi ungu
      appBar: AppBar(title: Text("Hasil Quiz")), // Menampilkan AppBar dengan judul
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center, // Menengahkan elemen secara vertikal
        children: [
          // Menampilkan skor pengguna
          Text(
            "Berikut Merupakan Hasil Quiz Yang Telah Anda Kerjakan: ${quiz.score}/${quiz.currentQuestionIndex}",
            style: TextStyle(fontSize: 24, color: Colors.white),
          ),
          SizedBox(height: 20), // Memberikan jarak antar elemen

          // Tombol untuk mengulangi kuis
          ElevatedButton(
            child: Text("Ulangi Quiz"),
            onPressed: () {
              quiz.resetQuiz(); // Mengatur ulang skor dan indeks pertanyaan

              // Kembali ke halaman utama (HomeScreen)
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => HomeScreen()),
              );
            },
          ),
        ],
      ),
    );
  }
}
