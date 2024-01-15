class Mahasiswa {
  String? nama;
  int? nim;

  Mahasiswa(this.nama, this.nim);
}

void main(List<String> args) {
  Mahasiswa mahasiswa = Mahasiswa("hilmy", 12);
  print(mahasiswa);
}
