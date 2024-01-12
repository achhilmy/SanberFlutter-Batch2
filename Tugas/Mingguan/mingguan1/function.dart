void main(List<String> args) {
  teriak();
  print(perkalian(4, 5));
  introduce();
  print(factorial(6));
}

teriak() {
  print("Hello sanbers");
}

perkalian(num1, num2) {
  return num1 * num2;
}

introduce() {
  String name = "agus";
  int age = 30;
  String address = "jln malioboro , yogyakarta";
  String hobby = "gaming";

  var perkenalan =
      ("nama saya ${name} usia saya ${age.toString()} alamat saya ${address} dan hobby saya ${hobby}");
  print(perkenalan);
}

factorial(number) {
  if (number <= 0) {
    return 1;
  } else {
    return (number * factorial(number - 1));
  }
}
