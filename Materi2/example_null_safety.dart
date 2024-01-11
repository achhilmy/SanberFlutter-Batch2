import 'dart:io';

void main() {
  print("Hello world");
  //cara memberi null safety nilai default null
  //menggunakan assign nilai langsung
  int angka = 10;
  String nama = "achmad hilmy";
  print(angka);
  print(nama);
  //menggunakan ?
  int? nilai;
  nilai = 15;
  print(nilai);
  // menggunakan !
  String nama_first = stdin.readLineSync()!;
  print(nama_first);
  // menggunakan keyword late
  late String data_name;
  data_name = "Achmad";
  print(data_name);
}
