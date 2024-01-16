void main(List<String> args) async {
  Stream<int> stream = calculateTime(3);

  await for (int value in stream) {
    print(value);
  }
}
///example stream
Stream<int> calculateTime(int max) async* {
  for (var i = 0; i <= max; i++) {
    await Future.delayed(Duration(seconds: 2));
    yield i;
  }
}
///kapan kita menggunakan stream
///
///1. berkomunikasi dengan http / file I/O atau socket(aplikasi chating dst)
///2. digunakan untuk pengecekan status (Banking => selesai, berhasil, atau gagal)
///3. pengiriman data jaringan (data sensor) 


