import 'dart:async';

void main(List<String> args) async {
  print("Persiapan, Mulai");
  print(await line1());
  print(await line2());
  print(await line3());
  print(await line4());
}

Future<String> line1() async {
  String greeting = "pernahkan kau merasa....";

  return await Future.delayed(Duration(seconds: 3), () => greeting);
}

Future<String> line2() async {
  String greeting = "pernahkan kau merasa....";

  return await Future.delayed(Duration(seconds: 4), () => greeting);
}

Future<String> line3() async {
  String greeting = "pernahkan kau merasa....";

  return await Future.delayed(Duration(seconds: 5), () => greeting);
}

Future<String> line4() async {
  String greeting = "pernahkan kau merasa....";

  return await Future.delayed(Duration(seconds: 6), () => greeting);
}
