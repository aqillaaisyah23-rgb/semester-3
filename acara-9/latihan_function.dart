// 1. Fungsi tanpa return value (void)
void sapa(String nama) {
  print("Halo, $nama! Selamat datang di Acara 9 (Function).");
}

// 2. Fungsi dengan return value dan positional parameters
int hitungLuasPersegiPanjang(int panjang, int lebar) {
  return panjang * lebar;
}

// 3. Fungsi dengan Named / Optional Parameter + Default Value
void cetakIdentitas({
  required String nama,
  String jurusan = "Teknik Informatika",
  int semester = 3,
}) {
  print("Nama     : $nama");
  print("Jurusan  : $jurusan");
  print("Semester : $semester");
}

// 4. Arrow Syntax / Lambda (satu baris return)
double hitungKelilingLingkaran(double r) => 2 * 3.14 * r;

void main() {
  print("=== 1. Void Function ===");
  sapa("Aqila");
  print("");

  print("=== 2. Return Value Function ===");
  int luas = hitungLuasPersegiPanjang(8, 5);
  print("Luas persegi panjang (8 x 5): $luas\n");

  print("=== 3. Named Parameters ===");
  cetakIdentitas(nama: "Aqila Nur");
  print("");

  print("=== 4. Arrow Function ===");
  double keliling = hitungKelilingLingkaran(7);
  print("Keliling lingkaran (r=7): $keliling");
}
