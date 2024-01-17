void main(List<String> args) {
  print("Life");
  // print("never flat");
  delayedPrint(2, "never flat");

  print("Is");
}

Future<dynamic> delayedPrint(int seconds, String message) async {
  Future.delayed(Duration(seconds: seconds), () {
    print(message);
  });
}
