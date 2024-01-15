abstract class Bentuk {
  void hitungLuas();
}

class Persegi implements Bentuk {
  int sisi;
  Persegi(this.sisi);

  void hitungLuas() {
    int luas = sisi * sisi;
    print("Luas Persegi : ${luas}");
  }
}

class Lingkaran implements Bentuk {
  double jariJari;
  Lingkaran(this.jariJari);

  void hitungLuas() {
    double luas = 3.14 * jariJari * jariJari;
    print("Luas Lingkaran : ${luas}");
  }
}

void main(List<String> args) {
  ///membuat object
  Persegi persegi = Persegi(6);
  Lingkaran lingkaran = Lingkaran(7);

  hitungLuasObject(persegi);
  hitungLuasObject(lingkaran);
}

void hitungLuasObject(Bentuk object) {
  object.hitungLuas();
}
