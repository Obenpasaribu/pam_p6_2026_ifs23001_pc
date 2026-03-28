// lib/data/dummy_data.dart

import 'models/plant_model.dart';

/// Kelas untuk menyimpan data statis (dummy)
/// Menggunakan static method agar tidak perlu instansiasi
class DummyData {
  DummyData._();

  static List<PlantModel> getPlantsData() {
    return const [
      PlantModel(
        nama: 'Casing',
        gambar: 'assets/images/img_casing.png',
        deskripsi: 'Wadah utama untuk menempatkan semua komponen internal komputer.',
        harga: 'Rp850.000,00',
        kegunaan: 'Melindungi komponen internal dari debu, benturan fisik, dan mengatur aliran udara (airflow).',
      ),
      PlantModel(
        nama: 'CPU',
        gambar: 'assets/images/img_cpu.png',
        deskripsi: 'Central Processing Unit, otak dari sebuah komputer yang menjalankan instruksi program.',
        harga: 'Rp3.500.000,00',
        kegunaan: 'Melakukan pemrosesan data, perhitungan logika, dan mengontrol koordinasi antar perangkat keras.',
      ),
      PlantModel(
        nama: 'GPU',
        gambar: 'assets/images/img_gpu.png',
        deskripsi: 'Graphics Processing Unit yang khusus menangani pemrosesan grafis dan visual tinggi.',
        harga: 'Rp8.200.000,00',
        kegunaan: 'Mengolah data visual untuk ditampilkan ke monitor, sangat penting untuk gaming dan rendering video.',
      ),
      PlantModel(
        nama: 'Monitor',
        gambar: 'assets/images/img_monitor.png',
        deskripsi: 'Perangkat output yang menampilkan informasi visual dari komputer kepada pengguna.',
        harga: 'Rp2.150.000,00',
        kegunaan: 'Menampilkan antarmuka grafis, teks, gambar, dan video agar dapat dilihat oleh pengguna.',
      ),
      PlantModel(
        nama: 'Motherboard',
        gambar: 'assets/images/img_motherboard.png',
        deskripsi: 'Papan sirkuit utama yang menghubungkan seluruh komponen komputer agar bisa berkomunikasi.',
        harga: 'Rp1.950.000,00',
        kegunaan: 'Jalur komunikasi antar komponen seperti CPU, RAM, GPU, dan media penyimpanan.',
      ),
      PlantModel(
        nama: 'PSU',
        gambar: 'assets/images/img_psu.png',
        deskripsi: 'Power Supply Unit yang mengubah arus listrik AC menjadi DC untuk memberi daya pada komputer.',
        harga: 'Rp950.000,00',
        kegunaan: 'Menyuplai daya listrik yang stabil ke seluruh komponen perangkat keras di dalam casing.',
      ),
      PlantModel(
        nama: 'RAM',
        gambar: 'assets/images/img_ram.png',
        deskripsi: 'Random Access Memory, penyimpanan data sementara yang sangat cepat untuk aplikasi yang sedang berjalan.',
        harga: 'Rp1.200.000,00',
        kegunaan: 'Menyimpan instruksi data sementara yang dibutuhkan CPU untuk diproses secara instan.',
      ),
      PlantModel(
        nama: 'SSD',
        gambar: 'assets/images/img_ssd.png',
        deskripsi: 'Solid State Drive, media penyimpanan data permanen berbasis memori flash yang sangat cepat.',
        harga: 'Rp1.100.000,00',
        kegunaan: 'Menyimpan sistem operasi, aplikasi, dan file pribadi dengan kecepatan akses data yang tinggi.',
      ),
      PlantModel(
        nama: 'Keyboard',
        gambar: 'assets/images/img_keyboard.png',
        deskripsi: 'Perangkat input utama berupa papan ketik untuk memasukkan karakter dan instruksi.',
        harga: 'Rp450.000,00',
        kegunaan: 'Mengetik teks, memberikan perintah pintasan, dan mengontrol navigasi di komputer.',
      ),
      PlantModel(
        nama: 'Mouse',
        gambar: 'assets/images/img_mouse.png',
        deskripsi: 'Perangkat penunjuk (pointing device) untuk berinteraksi dengan antarmuka grafis.',
        harga: 'Rp250.000,00',
        kegunaan: 'Menggerakkan kursor, memilih objek, melakukan klik, dan scroll pada layar monitor.',
      ),
    ];
  }
}
