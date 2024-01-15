class BajakLaut {
  void sifat() {
    print("Menemukan one piece");
  }
}

class HeartPirate extends BajakLaut {
  void keinginan() {
    print("Menemukan arti D");
  }
}

class TopiJerami extends BajakLaut {
  void keinginan() {
    print("Berpetualang");
  }
}

void main(List<String> args) {
  TopiJerami topiJerami = TopiJerami();
  HeartPirate heartPirate = HeartPirate();
  heartPirate.keinginan();
  heartPirate.sifat();
  topiJerami.keinginan();
  topiJerami.sifat();
}
