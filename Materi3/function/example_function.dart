void main(List<String> args) {
  namaSaya();
  pekerjaan();
  print(hobbySaya());
  hitungNilai(3, 4);
  hitungNilaiAngka(4, 5);
  // example code reuse
  int result = nilaiFavorite(6, 8);
  print("hasil penjumlahan : $result");
  // example code reuse
  int result2 = nilaiFavorite(5, 10);
  print("hasil penjumlahan : $result2");
}

void namaSaya() {
  print("Nama saya Hilmy");
}

void pekerjaan() {
  return print("pekerjaan saya developer mobile");
}

String hobbySaya() {
  return "Hobby saya berenang";
}

dynamic hitungNilai(a, b) {
  print(a + b);
  print(a * b);
  print(a / b);
  print(a - b);
}

void hitungNilaiAngka(aa, bb) {
  return (print(aa + bb));
}

int nilaiFavorite(int a, int b) {
  return a + b;
}
