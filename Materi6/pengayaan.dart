import 'dart:async';

///Soal 1
Future<void> delayedTime(String message, int time) async {
  await Future.delayed(Duration(seconds: time), () => print(message));
}

////Soal 2
Future<void> fetchData(String message, int time) async {
  print("data object 1");
  await Future.delayed(Duration(seconds: time), () {
    print(message);
  });
  print("data object 3");
}

///soal 3
class MessageStream {
  final _controller = StreamController<String>.broadcast();

  // Getter untuk mendapatkan stream
  Stream<String> get stream => _controller.stream;

  // Metode untuk mengirim pesan ke stream
  void sendMessage(String message) {
    _controller.sink.add(message);
  }

  // Metode untuk menutup stream controller
  void closeStream() {
    _controller.close();
  }
}

class MessagePrinter {
  // Metode untuk berlangganan ke stream dan mencetak pesan yang diterima
  void printMessages(Stream<String> stream) {
    stream.listen((message) {
      print('Received message: $message');
    }, onDone: () {
      print('Stream closed. No more messages.');
    });
  }
}

void main(List<String> args) async {
  // delayedTime("Hello my name is achmad", 3);

  // await fetchData("delay print", 2);

  ///soal 3
  // Membuat objek MessageStream
  final messageStream = MessageStream();

  // Membuat objek MessagePrinter
  final messagePrinter = MessagePrinter();

  // Berlangganan ke stream dengan MessagePrinter
  messagePrinter.printMessages(messageStream.stream);

  // Mengirim beberapa pesan ke stream
  messageStream.sendMessage('Hello, World!');
  messageStream.sendMessage('How are you?');
  messageStream.sendMessage('Stream-based messaging is cool!');

  // Menunggu beberapa detik sebelum menutup stream
  Future.delayed(Duration(seconds: 3), () {
    // Menutup stream setelah beberapa detik
    messageStream.closeStream();
  });
}
