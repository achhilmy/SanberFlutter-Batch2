void main(List<String> args) {
  // double setengah, alas, tinggi;
  // setengah = 0.5;
  // alas = 20.0;
  // tinggi = 30.0;

  // var hitungLuas = setengah * alas * tinggi;
  // print(hitungLuas);
  Segitiga segitiga = Segitiga(0.5, 7, 14);
  print(segitiga.hitungLuas());
}

class Segitiga {
  double setengah;
  double alas;
  double tinggi;
  Segitiga(this.setengah, this.alas, this.tinggi);
  hitungLuas() {
    return setengah * alas * tinggi;
  }
}
