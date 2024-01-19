import 'package:flutter/material.dart';
import 'package:sanber_campus/materi9/list_view._page.dart';

class CoreComponentPage extends StatelessWidget {
  const CoreComponentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hello world"),
        backgroundColor: Colors.amber,
        actions: [
          ElevatedButton(onPressed: () {}, child: Icon(Icons.back_hand))
        ],
      ),
      body: Container(
          color: Colors.green,
          height: MediaQuery.of(context).size.height / 1,
          width: MediaQuery.of(context).size.width / 1,
          child: ListView(
            children: [
              Container(height: 100, width: 100, color: Colors.red),
              Container(height: 100, width: 100, color: Colors.yellow),
              Container(height: 100, width: 100, color: Colors.purple),
              Container(height: 100, width: 100, color: Colors.blue),
              Text(
                "Hello World",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Image.asset(
                "assets/image/logo.jpeg",
                height: 50,
                width: 70,
              ),
              Image.network(
                  "https://sanbercode.com/assets/img/identity/logo@2x.jpg"),
              ElevatedButton(
                  onPressed: () {
                    print("Hello World");
                  },
                  child: Text("Elevated Button")),
              IconButton(
                  onPressed: () {
                    print("Icon button");
                  },
                 icon: Icon(Icons.alarm)),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ListViewPage()));
                  },
                  child: Text("Menuju halaman List View Page"))
            ],
          )),
    );
  }
}
