void main(List<String> args) {
  ///synchronous
  print("Ditampilkan pertama");

  ///Asynchronous
  Future.delayed(Duration(seconds: 3), () {
    print("Ditampilkan terakhir");
  });

  ///function Asynchronous
  tampilkanData();

  ///Synchronous
  print("Ditampilakan kedua");
}

Future<void> tampilkanData() async {
  print("Proses Synchronous");
  await Future.delayed(Duration(seconds: 2), () {
    print("Data from future");
  });
  print("Proses Synchronous 2");
}
