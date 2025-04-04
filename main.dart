import 'package:flutter/material.dart'; // Mengimpor package Material Design untuk UI
import 'package:provider/provider.dart'; // Mengimpor Provider untuk state management
import 'screen/home_screen.dart'; // Mengimpor file yang berisi halaman utama
import 'providers/quiz_provider.dart'; // Mengimpor provider untuk mengelola state kuis

// Fungsi utama yang menjalankan aplikasi
void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => QuizProvider(), // Menggunakan QuizProvider sebagai state management
      child: MyApp(), // Menjalankan aplikasi MyApp
    ),
  );
}

// Kelas utama aplikasi yang merupakan StatelessWidget
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Menyembunyikan label debug di pojok kanan atas
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white), // Menggunakan Material 3 dengan warna dasar putih
        useMaterial3: true, // Mengaktifkan Material 3
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white, // Warna latar AppBar putih
          foregroundColor: Colors.purple, // Warna teks dan ikon di AppBar ungu
          elevation: 4, // Memberikan efek bayangan pada AppBar
        ),
      ),
      home: HomeScreen(), // Halaman utama yang akan ditampilkan pertama kali
      onGenerateRoute: (settings) {
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) {
            return FadeTransition(
              opacity: animation, // Efek transisi fade in/out antar halaman
              child: HomeScreen(),
            );
          },
        );
      },
    );
  }
}
