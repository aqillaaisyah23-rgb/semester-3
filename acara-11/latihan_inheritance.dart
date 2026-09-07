// 1. Superclass (Kelas Induk)
class Kendaraan {
  String merk;
  int tahunProduksi;

  Kendaraan(this.merk, this.tahunProduksi);

  void info() {
    print("Merk           : $merk");
    print("Tahun Produksi : $tahunProduksi");
  }

  void klakson() {
    print("Suara klakson umum: Tiiin tiiin!");
  }
}

// 2. Subclass 1 (Mobil)
class Mobil extends Kendaraan {
  int jumlahPintu;

  // Memanggil konstruktor superclass menggunakan super()
  Mobil(String merk, int tahunProduksi, this.jumlahPintu)
    : super(merk, tahunProduksi);

  // Method Overriding (Polimorfisme)
  @override
  void klakson() {
    print("Klakson Mobil ($merk): Telolet telolet!");
  }

  @override
  void info() {
    super.info();
    print("Jumlah Pintu   : $jumlahPintu");
  }
}

// 3. Subclass 2 (Motor)
class Motor extends Kendaraan {
  String jenisMotor;

  Motor(String merk, int tahunProduksi, this.jenisMotor)
    : super(merk, tahunProduksi);

  @override
  void klakson() {
    print("Klakson Motor ($merk): Tit! Tit!");
  }

  @override
  void info() {
    super.info();
    print("Jenis Transmisi: $jenisMotor");
  }
}

void main() {
  print("=== 1. Objek Kelas Induk (Kendaraan) ===");
  Kendaraan k1 = Kendaraan("Generic Brand", 2018);
  k1.info();
  k1.klakson();
  print("");

  print("=== 2. Objek Turunan Mobil (Inheritance & Override) ===");
  Mobil mobil1 = Mobil("Toyota", 2022, 4);
  mobil1.info();
  mobil1.klakson();
  print("");

  print("=== 3. Objek Turunan Motor (Inheritance & Override) ===");
  Motor motor1 = Motor("Honda", 2023, "Matic");
  motor1.info();
  motor1.klakson();
}
