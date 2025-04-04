import 'package:flutter/material.dart'; // Mengimpor Flutter Material untuk UI
import 'package:provider/provider.dart'; // Mengimpor Provider untuk state management
import '../providers/quiz_provider.dart'; // Mengimpor QuizProvider untuk mengelola state kuis
import '../models/question_model.dart'; // Mengimpor model pertanyaan
import 'result_screen.dart'; // Mengimpor halaman ResultScreen

// Kelas QuizScreen sebagai halaman kuis utama
class QuizScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<QuizProvider>( // Menggunakan Consumer untuk mengakses state QuizProvider
      builder: (context, quiz, child) {
        // Jika semua pertanyaan telah dijawab, navigasi ke halaman hasil (ResultScreen)
        if (quiz.currentQuestionIndex >= sampleQuestions.length) {
          return ResultScreen();
        }

        final question = sampleQuestions[quiz.currentQuestionIndex]; // Mengambil pertanyaan saat ini

        return Scaffold(
          backgroundColor: Colors.purple, // Mengatur warna latar belakang menjadi ungu
          appBar: AppBar(title: Text("Quiz")), // Menampilkan AppBar dengan judul
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Menengahkan elemen secara vertikal
            children: [
              // Menampilkan pertanyaan saat ini
              Text(question.question, style: TextStyle(fontSize: 20, color: Colors.white)),

              // Menampilkan pilihan jawaban dalam bentuk tombol
              ...question.options.asMap().entries.map((entry) {
                int idx = entry.key; // Indeks pilihan
                String option = entry.value; // Teks pilihan
                return ElevatedButton(
                  child: Text(option), // Menampilkan teks pilihan
                  onPressed: () => quiz.answerQuestion(idx), // Menjawab pertanyaan ketika tombol ditekan
                );
              }).toList(),
            ],
          ),
        );
      },
    );
  }
}
