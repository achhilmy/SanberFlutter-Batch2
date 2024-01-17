void main(List<String> args) {
  var h = CaracterOnePiece();
  print("luffy");
  print("Zoro");
  print("Killer");
  h.getName();
  print(h.name);
}

class CaracterOnePiece {
  String name = "Nama Karakter One Piece";

  Future<void> getName() async {
    Future.delayed(Duration(seconds: 3), () {
      name = "Hilmy";
      print("Get Data Done");
      print(name);
    });
  }
}
