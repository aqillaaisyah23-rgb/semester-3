import 'dart:io';

void main() {
  print("==========================================");
  print("SOAL 5: LOOPING WHILE (MAJU & MUNDUR)");
  print("==========================================");
  print("LOOPING PERTAMA");
  int maju = 2;
  while (maju <= 20) {
    print("$maju - I love coding");
    maju += 2;
  }

  print("LOOPING KEDUA");
  int mundur = 20;
  while (mundur >= 2) {
    print("$mundur - I will become a mobile developer");
    mundur -= 2;
  }
  print("");

  print("==========================================");
  print("SOAL 6: LOOPING FOR (ATURAN GANJIL / GENAP)");
  print("==========================================");
  for (int i = 1; i <= 20; i++) {
    if (i % 2 != 0 && i % 3 == 0) {
      print("$i - I Love Coding");
    } else if (i % 2 == 0) {
      print("$i - Berkualitas");
    } else {
      print("$i - Santai");
    }
  }
  print("");

  print("==========================================");
  print("SOAL 7: MEMBUAT PERSEGI PANJANG (8 x 4)");
  print("==========================================");
  for (int baris = 1; baris <= 4; baris++) {
    for (int kolom = 1; kolom <= 8; kolom++) {
      stdout.write("#");
    }
    print("");
  }
  print("");

  print("==========================================");
  print("SOAL 8: MEMBUAT TANGGA SEGITIGA (TINGGI 7)");
  print("==========================================");
  for (int baris = 1; baris <= 7; baris++) {
    for (int bintang = 1; bintang <= baris; bintang++) {
      stdout.write("#");
    }
    print("");
  }
}
