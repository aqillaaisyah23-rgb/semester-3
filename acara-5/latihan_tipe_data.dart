import 'dart:io';

void main() {
  // 1. Variabel dan Tipe Data Dasar
  String nama = "Aqilla";
  int umur = 20;
  double ipk = 3.85;
  bool isMahasiswaAktif = true;

  print("=== Data Mahasiswa ===");
  print("Nama: $nama");
  print("Umur: $umur tahun");
  print("IPK: $ipk");
  print("Status Aktif: $isMahasiswaAktif\n");

  // 2. Konversi Tipe Data (Type Casting)
  String strAngka = "100";
  int angkaParsed = int.parse(strAngka);
  print("Hasil konversi String ke int + 50: ${angkaParsed + 50}\n");

  // 3. Input / Output Interaktif (dart:io)
  stdout.write("Masukkan bahasa pemrograman favoritmu: ");
  String? inputFav = stdin.readLineSync();
  print("Bahasa favorit kamu adalah: $inputFav");
}
