import 'dart:io';

void main() {
  print("==========================================");
  print("SOAL 1: TERNARY OPERATOR");
  print("==========================================");
  stdout.write("Apakah kamu ingin menginstall aplikasi? (y/t): ");
  String? inputInstall = stdin.readLineSync();

  // Ternary operator: cek jika input adalah 'y' atau 'Y'
  String pesanInstall = (inputInstall?.toLowerCase() == 'y')
      ? "anda akan menginstall aplikasi dart"
      : "aborted";
  print(pesanInstall);
  print("");

  print("==========================================");
  print("SOAL 2: GAME WEREWOLF (IF - ELSE IF - ELSE)");
  print("==========================================");
  stdout.write("Masukkan nama: ");
  String nama = stdin.readLineSync()?.trim() ?? "";

  stdout.write("Masukkan peran (Penyihir / Guard / Werewolf): ");
  String peran = stdin.readLineSync()?.trim() ?? "";

  if (nama.isEmpty && peran.isEmpty) {
    print("Nama harus diisi!");
  } else if (nama.isNotEmpty && peran.isEmpty) {
    print("Halo $nama, Pilih peranmu untuk memulai game!");
  } else {
    // Pengecekan peran ketika nama dan peran sudah terisi
    if (peran.toLowerCase() == "penyihir") {
      print("Selamat datang di Dunia Werewolf, $nama");
      print(
        "Halo Penyihir $nama, kamu dapat melihat siapa yang menjadi werewolf!",
      );
    } else if (peran.toLowerCase() == "guard") {
      print("Selamat datang di Dunia Werewolf, $nama");
      print(
        "Halo Guard $nama, kamu akan membantu melindungi temanmu dari serangan werewolf.",
      );
    } else if (peran.toLowerCase() == "werewolf") {
      print("Selamat datang di Dunia Werewolf, $nama");
      print("Halo Werewolf $nama, Kamu akan memakan mangsa setiap malam!");
    } else {
      print("Halo $nama, peran '$peran' tidak tersedia di game.");
    }
  }
  print("");

  print("==========================================");
  print("SOAL 3: QUOTES HARIAN (SWITCH CASE DENGAN I/O)");
  print("==========================================");
  stdout.write("Masukkan nama hari (Senin - Minggu): ");
  String? inputHari = stdin.readLineSync()?.trim().toLowerCase();

  switch (inputHari) {
    case 'senin':
      print(
        "Senin: Segala sesuatu memiliki kesudahan, yang sudah berakhir biarlah berlalu dan yakinlah semua akan baik-baik saja.",
      );
      break;
    case 'selasa':
      print(
        "Selasa: Setiap detik sangatlah berharga karena waktu mengetahui banyak hal, termasuk rahasia hati.",
      );
      break;
    case 'rabu':
      print(
        "Rabu: Jika kamu tak menemukan buku yang kamu cari di rak, maka tulislah sendiri.",
      );
      break;
    case 'kamis':
      print(
        "Kamis: Jika hatimu banyak merasakan sakit, maka belajarlah dari rasa sakit itu untuk tidak memberikan rasa sakit pada orang lain.",
      );
      break;
    case 'jumat':
      print("Jumat: Hidup tak selamanya tentang pacar.");
      break;
    case 'sabtu':
      print(
        "Sabtu: Rumah bukan hanya sebuah tempat, tetapi itu adalah perasaan.",
      );
      break;
    case 'minggu':
      print(
        "Minggu: Hanya seseorang yang takut yang bisa bertindak berani. Tanpa rasa takut itu tidak ada apapun yang bisa disebut berani.",
      );
      break;
    default:
      print("Hari tidak valid! Masukkan nama hari Senin s.d. Minggu.");
  }
  print("");

  print("==========================================");
  print("SOAL 4: FORMAT TANGGAL (SWITCH CASE TANPA I/O)");
  print("==========================================");
  var hari = 21;
  var bulan = 5;
  var tahun = 1945;
  String namaBulan = "";

  switch (bulan) {
    case 1:
      namaBulan = "Januari";
      break;
    case 2:
      namaBulan = "Februari";
      break;
    case 3:
      namaBulan = "Maret";
      break;
    case 4:
      namaBulan = "April";
      break;
    case 5:
      namaBulan = "Mei";
      break;
    case 6:
      namaBulan = "Juni";
      break;
    case 7:
      namaBulan = "Juli";
      break;
    case 8:
      namaBulan = "Agustus";
      break;
    case 9:
      namaBulan = "September";
      break;
    case 10:
      namaBulan = "Oktober";
      break;
    case 11:
      namaBulan = "November";
      break;
    case 12:
      namaBulan = "Desember";
      break;
    default:
      namaBulan = "Bulan tidak valid";
  }

  print("$hari $namaBulan $tahun");
}
