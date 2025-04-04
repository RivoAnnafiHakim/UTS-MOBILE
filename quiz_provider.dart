import 'package:flutter/material.dart'; // Mengimpor package Material Design
import '../models/question_model.dart'; // Mengimpor model pertanyaan untuk digunakan dalam provider

// Provider untuk mengelola state kuis
class QuizProvider with ChangeNotifier {
  int _currentQuestionIndex = 0; // Menyimpan indeks pertanyaan saat ini
  int _score = 0; // Menyimpan skor pengguna

  // Getter untuk mendapatkan indeks pertanyaan saat ini
  int get currentQuestionIndex => _currentQuestionIndex;

  // Getter untuk mendapatkan skor pengguna
  int get score => _score;

  // Fungsi untuk menangani jawaban pengguna
  void answerQuestion(int selectedIndex) {
    // Jika jawaban benar, tambah skor
    if (selectedIndex == sampleQuestions[_currentQuestionIndex].answerIndex) {
      _score += 1;
    }
    _currentQuestionIndex++; // Pindah ke pertanyaan berikutnya

    notifyListeners(); // Memberi tahu UI bahwa ada perubahan state
  }

  // Fungsi untuk mereset kuis
  void resetQuiz() {
    _currentQuestionIndex = 0; // Reset indeks pertanyaan
    _score = 0; // Reset skor pengguna
    notifyListeners(); // Memperbarui UI
  }
}
