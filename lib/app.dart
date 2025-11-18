import 'package:flutter/material.dart';

void main() {
  // Fungsi utama yang menjalankan aplikasi.
  // MyApp adalah 'root widget' (widget utama)
  runApp(const MyApp());
}

// 1. Root Widget Aplikasi
// Menggunakan StatelessWidget untuk komponen tanpa state yang berubah
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // MaterialApp mendefinisikan tampilan dasar aplikasi (tema, rute)
    return MaterialApp(
      title: 'Aplikasi Desain Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue, // Warna utama aplikasi
      ),
      // Menetapkan halaman pertama (Home Screen)
      home: const HomeScreen(),
      //sidhnuisadniusadh
    );
  }
}

// 2. Halaman Utama (Screen Design)
// Menggunakan StatefulWidget jika halaman memiliki state yang dapat berubah
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Scaffold adalah kerangka dasar untuk sebuah halaman (screen)
    // yang menyediakan App Bar, Body, dan komponen lainnya.
    return Scaffold(
      // --- Bagian Atas Halaman (Header) ---
      appBar: AppBar(
        title: const Text('Halaman Utama'),
        backgroundColor: Colors.teal, // Warna AppBar
        centerTitle: true, // Judul di tengah
      ),

      // --- Bagian Isi Halaman (Body) ---
      body: Center(
        // Center menempatkan widget di tengah layar

        // Column menyusun widget secara vertikal
        child: Column(
          // mainAxisAlignment mengatur penempatan widget di sumbu utama (vertikal)
          mainAxisAlignment: MainAxisAlignment.center,

          // Children berisi daftar widget yang akan ditampilkan
          children: <Widget>[
            // Widget Teks
            const Text(
              'Selamat Datang di Desain Flutter!',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),

            // Memberi jarak vertikal
            const SizedBox(height: 30),

            // Widget Tombol (ElevatedButton)
            ElevatedButton(
              onPressed: () {
                // Logika ketika tombol ditekan
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Tombol Berhasil Ditekan!')),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal, // Warna tombol
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text(
                'Tekan Saya',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),

            // Memberi jarak vertikal
            const SizedBox(height: 20),

            // Contoh Padding
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                color: Colors.grey[200],
                padding: const EdgeInsets.all(8.0),
                child: const Text('Ini adalah contoh penggunaan Padding.'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
