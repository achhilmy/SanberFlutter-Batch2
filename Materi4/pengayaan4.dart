void main(List<String> args) {
  //soal 1
  List<int> number = [1, 2, 3, 4, 5];

  number.forEach((data) {
    print(data);
  }); //bukalapak tokopedia blibli

  //soal 2
  List<String> fruits = ['Apple', 'Banana', 'Orange'];

  fruits.add("Buah naga");
  print(fruits);
  fruits.remove("Banana");
  print(fruits);
  //soal 3
  List<int> number1 = [1, 2, 3, 4, 5];
  List<int> number2 = [6, 7, 8, 9, 10];

  final data = [...number1, ...number2];
  print(data);

  ///soal 4
  Map<String, String> data_diri = {
    "nama": "achmad hilmy firdaus",
    "alamat": "bandung, jawa barat",
    "email": "achmad@gmail.com"
  };

  ///soal 5
  print(data_diri["nama"]);
  print(data_diri["alamat"]);
  print(data_diri["email"]);
}
