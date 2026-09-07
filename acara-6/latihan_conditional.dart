import 'dart:io';

void main() {
  print("=== 1. Operator Ternary ===");
  bool isThisWahyu = true;
  String statusWahyu = isThisWahyu ? "wahyu" : "bukan";
  print("Hasil ternary: $statusWahyu\n");

  print("=== 2. If - Else If - Else (Status Toko & Stok) ===");
  String minimarketStatus = "open";
  int minuteRemainingToOpen = 5;
  String telur = "tersedia";
  String buah = "soldout";

  if (minimarketStatus == "open") {
    print("Saya akan membeli telur dan buah.");
    if (telur == "soldout" || buah == "soldout") {
      print("Catatan belanja: Belanjaan saya tidak lengkap.");
    } else {
      print("Catatan belanja: Belanjaan lengkap.");
    }
  } else if (minuteRemainingToOpen <= 5) {
    print("Minimarket buka sebentar lagi, saya tungguin.");
  } else {
    print("Minimarket tutup, saya pulang lagi.");
  }
  print("");

  print("=== 3. Switch Case (Tombol Remote) ===");
  stdout.write("Pilih nomor tombol remote (1-4): ");
  String? input = stdin.readLineSync();
  int buttonPushed = int.tryParse(input ?? "1") ?? 1;

  switch (buttonPushed) {
    case 1:
      print("Aksi: Matikan TV!");
      break;
    case 2:
      print("Aksi: Turunkan volume TV!");
      break;
    case 3:
      print("Aksi: Tingkatkan volume TV!");
      break;
    case 4:
      print("Aksi: Matikan suara TV!");
      break;
    default:
      print("Aksi: Tidak terjadi apa-apa.");
  }
}
