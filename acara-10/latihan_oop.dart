// Deklarasi Class
class Mahasiswa {
  // 1. Atribut Publik
  String nama;
  String nim;

  // 2. Atribut Privat (Encapsulation)
  double _ipk = 0.0;

  // 3. Constructor
  Mahasiswa(this.nama, this.nim, double ipkAwal) {
    ipk = ipkAwal; // Menggunakan setter untuk validasi
  }

  // 4. Setter dengan Validasi Logika
  set ipk(double nilai) {
    if (nilai >= 0.0 && nilai <= 4.0) {
      _ipk = nilai;
    } else {
      print("Peringatan: Nilai IPK $nilai tidak valid (harus 0.0 - 4.0)!");
    }
  }

  // 5. Getter
  double get ipk => _ipk;

  // 6. Method / Perilaku Objek
  void tampilkanInfo() {
    print("Nama : $nama");
    print("NIM  : $nim");
    print("IPK  : $_ipk");
  }
}

void main() {
  print("=== 1. Instansiasi Objek & Constructor ===");
  Mahasiswa mhs1 = Mahasiswa("Aqila", "E41230001", 3.85);
  mhs1.tampilkanInfo();
  print("");

  print("=== 2. Uji Coba Setter & Getter ===");
  // Memperbarui IPK lewat setter valid
  mhs1.ipk = 3.92;
  print("IPK terbaru setelah diubah: ${mhs1.ipk}\n");

  print("=== 3. Uji Coba Validasi Setter (Nilai Tidak Valid) ===");
  // Memasukkan nilai di luar batas 0.0 - 4.0
  mhs1.ipk = 4.5;
  print("Nilai IPK sekarang: ${mhs1.ipk}");
}
