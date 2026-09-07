void main() {
  print("=== 1. While Loop (Hitung 1-5) ===");
  int flag = 1;
  while (flag <= 5) {
    print("Iterasi ke-$flag");
    flag++;
  }
  print("");

  print("=== 2. For Loop (Deret Penjumlahan) ===");
  int total = 0;
  for (int deret = 5; deret > 0; deret--) {
    total += deret;
    print("Menambahkan $deret, total saat ini: $total");
  }
  print("Total akhir: $total\n");

  print("=== 3. For Loop (Lompatan Counter 2) ===");
  for (int i = 0; i < 10; i += 2) {
    print("Iterasi kelipatan 2: $i");
  }
}
