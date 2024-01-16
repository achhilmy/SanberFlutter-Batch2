void main(List<String> args) async {
  await takeItData();

  await Future.delayed(Duration(seconds: 4), () {
    print("3. Pernahkah kau merasa");
  });

  print("4.Pernahkan kau merasa hatimu kosong");
}

Future<void> takeItData() async {
  print("1. Pernahkah kau merasa");

  await Future.delayed(Duration(seconds: 3), () {
    print("2. Pernahkah kau merasa");
  });
}

///kapan menggunakan future delayed
///1. saat kita hit endpoint pada rest api 
///2. saat kita mengakses database 
///3. saat membutuhkan operasi komputasi yang berat
