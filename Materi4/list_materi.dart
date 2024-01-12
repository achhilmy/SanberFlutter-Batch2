void main(List<String> args) {
  //list tipe angka
  List<int> angka = [1, 2, 3, 4, 5];
  //list tipe karakter
  List<String> nama = ["hilmy", "achmad", "muhammad"];
  //dynamic
  List data_diri = ["hilmy", 2.3, true, 1];

  //List multidimensi
  List<dynamic> multidimensiList = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]
  ];

  // print(angka);
  print(multidimensiList[1][1]);
}
