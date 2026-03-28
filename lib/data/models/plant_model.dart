// lib/data/models/plant_model.dart

/// Model data untuk tanaman
/// Menggunakan immutable class (best practice Flutter/Dart)
class PlantModel {
  const PlantModel({
    required this.nama,
    required this.gambar,
    required this.deskripsi,
    required this.harga,
    required this.kegunaan,
  });

  final String nama;
  final String gambar; // Path asset, contoh: 'assets/images/img_kol.png'
  final String deskripsi;
  final String harga;
  final String kegunaan;

  /// Metode copyWith memudahkan pembuatan objek baru dengan data yang diubah sebagian
  PlantModel copyWith({
    String? nama,
    String? gambar,
    String? deskripsi,
    String? harga,
    String? kegunaan,
  }) {
    return PlantModel(
      nama: nama ?? this.nama,
      gambar: gambar ?? this.gambar,
      deskripsi: deskripsi ?? this.deskripsi,
      harga: harga ?? this.harga,
      kegunaan: kegunaan ?? this.kegunaan,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is PlantModel && runtimeType == other.runtimeType && nama == other.nama;

  @override
  int get hashCode => nama.hashCode;

  @override
  String toString() => 'PlantModel(nama: $nama)';
}
