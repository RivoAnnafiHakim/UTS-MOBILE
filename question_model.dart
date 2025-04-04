// Model data untuk pertanyaan kuis
class Question {
  final String question; // Pertanyaan yang akan ditampilkan
  final List<String> options; // Pilihan jawaban
  final int answerIndex; // Indeks jawaban yang benar

  // Konstruktor kelas Question
  Question({required this.question, required this.options, required this.answerIndex});
}

// Daftar pertanyaan sampel untuk kuis
List<Question> sampleQuestions = [
  Question(
    question: "1. Apa yang dimaksud dengan Manajemen Informatika?", // Pertanyaan
    options: [
      "A. Ilmu yang mempelajari cara mengelola sumber daya manusia",
      "B. Ilmu yang mempelajari sistem komputer dan pengelolaan informasi", // Jawaban benar (index 1)
      "C. Ilmu yang fokus pada desain grafis dan multimedia",
      "D. Ilmu yang hanya mempelajari pemrograman"
    ],
    answerIndex: 1, // Indeks jawaban yang benar dalam list "options"
  ),
  Question(
    question: "2. Apa bahasa pemrograman utama yang sering digunakan dalam pengembangan aplikasi berbasis web?",
    options: [
      "A. Python",
      "B. C++",
      "C. PHP", // Jawaban benar (index 2)
      "D. Kotlin"
    ],
    answerIndex: 2,
  ),
  Question(
    question: "3. Apa kepanjangan dari ERP dalam dunia Manajemen Informatika?",
    options: ["A. Enterprise Resource Planning",
      "B. Electronic Resource Processing",
      "C. Enterprise Routing Program",
      "D. Electronic Routing Protocol"],
    answerIndex: 0,
  ),
  Question(
    question: "4. Manakah dari berikut ini yang merupakan database management system (DBMS)?",
    options: ["A. Adobe Photoshop",
      "B. MySQL",
      "C. Microsoft Word",
      "D. AutoCAD"],
    answerIndex: 1,
  ),
  Question(
    question: "5. Apa tujuan utama dari sistem informasi manajemen?",
    options: ["A. Mempermudah akses data dan pengambilan keputusan",
      "B. Menyediakan hiburan bagi pengguna",
      "C. Meningkatkan tampilan grafis aplikasi",
      "D. Menghapus data yang tidak terpakai"],
    answerIndex: 0,
  ),
  Question(
    question: "6. Apa kepanjangan dari SDLC dalam pengembangan sistem?",
    options: ["A. Software Development Life Cycle",
      "B. System Data Learning Concept",
      "C. Structured Design Logical Component",
      "D. Software Deployment Local Control"],
    answerIndex: 0,
  ),
  Question(
    question: "7. Dalam konsep keamanan sistem informasi, apa kepanjangan dari CIA?",
    options: ["A. Confidentiality, Integrity, Availability",
      "B. Control, Integration, Accuracy",
      "C. Computing, Information, Access",
      "D. Central Intelligence Agency"],
    answerIndex: 0,
  ),
  Question(
    question: "8. Apa fungsi utama dari UML dalam pengembangan perangkat lunak?",
    options: ["A. Menyusun kode pemrograman",
      "B. Membantu dalam dokumentasi dan pemodelan sistem",
      "C. Mempercepat proses debugging",
      "D. Meningkatkan keamanan data"],
    answerIndex: 1,
  ),
  Question(
    question: "9. Apa yang dimaksud dengan Business Intelligence (BI)?",
    options: ["A. Teknologi untuk menganalisis dan mengelola data bisnis",
      "B. Algoritma pemrograman berbasis AI",
      "C. Sistem keamanan jaringan berbasis firewall",
      "D. Aplikasi untuk desain grafis"],
    answerIndex: 0,
  ),
  Question(
    question: "10. Dalam konsep Big Data, apa yang dimaksud dengan (5V)?",
    options: ["A. Volume, Velocity, Variety, Veracity, Value",
      "B. Virtualization, Vision, Variety, Velocity, Value",
      "C. Volume, Validation, Versioning, Versatility, Visibility",
      "D. Verification, Volume, Virtualization, Velocity, Variability"],
    answerIndex: 0,
  ),
];
