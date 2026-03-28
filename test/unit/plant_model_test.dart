// test/unit/plant_model_test.dart

import 'package:flutter_test/flutter_test.dart';
import 'package:pam_p6_2026_ifs18005/data/models/plant_model.dart';

void main() {
  group('PlantModel', () {
    const plant = PlantModel(
      nama: 'Wortel',
      gambar: 'assets/images/img_wortel.png',
      deskripsi: 'Sayuran berwarna oranye.',
      harga: 'Rp14.000,00',
      kegunaan: 'Baik untuk kesehatan mata.',
    );

    test('membuat objek dengan semua field yang benar', () {
      expect(plant.nama, equals('Wortel'));
      expect(plant.gambar, equals('assets/images/img_wortel.png'));
      expect(plant.deskripsi, equals('Sayuran berwarna oranye.'));
      expect(plant.harga, equals('Rp14.000,00'));
      expect(plant.kegunaan, equals('Baik untuk kesehatan mata.'));
    });

    test('copyWith mengubah hanya field yang diberikan', () {
      final updated = plant.copyWith(nama: 'Tomat');
      expect(updated.nama, equals('Tomat'));
      // Field lain tetap sama
      expect(updated.gambar, equals(plant.gambar));
      expect(updated.deskripsi, equals(plant.deskripsi));
    });

    test('copyWith tanpa argumen menghasilkan objek yang identik', () {
      final copy = plant.copyWith();
      expect(copy.nama, equals(plant.nama));
      expect(copy.gambar, equals(plant.gambar));
    });

    test('dua objek dengan nama sama dianggap equal', () {
      const other = PlantModel(
        nama: 'Wortel',
        gambar: 'assets/images/img_lain.png',
        deskripsi: 'Deskripsi berbeda.',
        harga: 'Rp10.000,00',
        kegunaan: 'Kegunaan lain.',
      );
      expect(plant, equals(other));
    });

    test('dua objek dengan nama berbeda tidak equal', () {
      const other = PlantModel(
        nama: 'Tomat',
        gambar: 'assets/images/img_wortel.png',
        deskripsi: 'Sayuran berwarna oranye.',
        harga: 'Rp14.000,00',
        kegunaan: 'Baik untuk kesehatan mata.',
      );
      expect(plant, isNot(equals(other)));
    });

    test('hashCode konsisten dengan equality', () {
      const same = PlantModel(
        nama: 'Wortel',
        gambar: 'assets/images/img_lain.png',
        deskripsi: '-',
        harga: '-',
        kegunaan: '-',
      );
      expect(plant.hashCode, equals(same.hashCode));
    });

    test('toString menampilkan nama plant', () {
      expect(plant.toString(), contains('Wortel'));
    });
  });
}
