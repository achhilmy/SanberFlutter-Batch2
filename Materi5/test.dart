// Soal 1
class Siswa {
  String nama;
  String nip;
  int nilai;

  Siswa(this.nama, this.nip, this.nilai);

  void tampilkanInformasi() {
    print('Nama: $nama');
    print('NIM: $nip');
    print('Nilai: $nilai');
  }

  bool lulus() {
    return nilai >= 70;
  }
}

// Soal 2
class PersegiPanjang {
  double panjang;
  double lebar;

  PersegiPanjang(this.panjang, this.lebar);

  double hitungLuas() {
    return panjang * lebar;
  }

  double hitungKeliling() {
    return 2 * (panjang + lebar);
  }
}

// Soal 3
class Buku {
  String judul;
  String penulis;
  int tahunTerbit;

  Buku(this.judul, this.penulis, this.tahunTerbit);

  void tampilkanInformasi() {
    print('Judul: $judul');
    print('Penulis: $penulis');
    print('Tahun Terbit: $tahunTerbit');
  }
}

// Soal 4
class Mobil {
  String merek;
  String model;
  int tahunProduksi;
  bool mesinMenyala = false;

  Mobil(this.merek, this.model, this.tahunProduksi);

  void nyalakanMesin() {
    mesinMenyala = true;
    print('Mesin mobil $merek $model dinyalakan.');
  }

  void matikanMesin() {
    mesinMenyala = false;
    print('Mesin mobil $merek $model dimatikan.');
  }
}

// Soal 5
class Hewan {
  String jenis;

  Hewan(this.jenis);

  void bersuara() {
    print('Hewan $jenis bersuara.');
  }
}

class Kucing extends Hewan {
  Kucing() : super('Kucing');

  void bertingkahLakuLucu() {
    print('Kucing sedang melakukan tingkah laku lucu.');
  }
}

void main() {
  // Contoh penggunaan
  // Soal 1
  Siswa mahasiswa1 = Siswa('Alice', '12345', 80);
  mahasiswa1.tampilkanInformasi();
  print('Lulus: ${mahasiswa1.lulus()}');
  print('');

  // Soal 2
  PersegiPanjang persegi = PersegiPanjang(5.0, 3.0);
  print('Luas Persegi Panjang: ${persegi.hitungLuas()}');
  print('Keliling Persegi Panjang: ${persegi.hitungKeliling()}');
  print('');

  // Soal 3
  Buku buku1 = Buku('Dart Programming', 'John Doe', 2022);
  buku1.tampilkanInformasi();
  print('');

  // Soal 4
  Mobil mobil1 = Mobil('Toyota', 'Camry', 2020);
  mobil1.nyalakanMesin();
  mobil1.matikanMesin();
  print('');

  // Soal 5
  Hewan hewan = Hewan('Harimau');
  hewan.bersuara();

  Kucing kucing = Kucing();
  kucing.bersuara();
  kucing.bertingkahLakuLucu();
}
