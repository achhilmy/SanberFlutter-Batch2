class Wolf {
  String? name;
  String? foot;

  Wolf(this.name, this.foot);

  void checkSound() {
    print("Auu AUuu");
  }
}

void main(List<String> args) {
  Wolf wolf = Wolf("Serigala", "4");
  print("kakinya ada : ${wolf.foot}");
  print("namanya adalah : ${wolf.name}");
  wolf.checkSound();
}
